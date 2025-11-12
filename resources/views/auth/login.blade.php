@extends('layouts.app')

@section('title', 'Login with GPS + Camera')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header text-center bg-primary text-white">
                    <h4>Secure Login (Camera + GPS)</h4>
                </div>
                <div class="card-body">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form method="POST" action="{{ route('login') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="text" name="email" class="form-control" value="{{ old('email') }}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>

                        <input type="hidden" name="latitude" id="latitude">
                        <input type="hidden" name="longitude" id="longitude">
                        <input type="hidden" name="accuracy" id="accuracy">
                        <input type="hidden" name="login_photo" id="login_photo">

                        <div class="mb-3 text-center">
                            <video id="video" autoplay playsinline style="width:100%; max-height:300px; display:none; border:1px solid #ddd;"></video>
                            <canvas id="canvas" style="display:none;"></canvas>
                            <img id="photoPreview" class="mt-2" style="max-width:100%; display:none; border-radius:8px;" alt="preview"/>
                            <div class="mt-3">
                                <button type="button" id="startCamera" class="btn btn-outline-secondary btn-sm">Open Camera</button>
                                <button type="button" id="capturePhoto" class="btn btn-primary btn-sm" style="display:none;">Capture</button>
                                <button type="button" id="retakePhoto" class="btn btn-warning btn-sm" style="display:none;">Retake</button>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
    const lat = document.getElementById('latitude');
    const lon = document.getElementById('longitude');
    const acc = document.getElementById('accuracy');

    // Get GPS
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(
                pos => {
                    lat.value = pos.coords.latitude;
                    lon.value = pos.coords.longitude;
                    acc.value = pos.coords.accuracy;
                },
                err => { alert("Enable location to continue login."); },
                { enableHighAccuracy:true, timeout:10000 }
            );
        } else {
            alert("Geolocation not supported.");
        }
    }
    getLocation();

    // Camera
    const video = document.getElementById('video');
    const canvas = document.getElementById('canvas');
    const photoInput = document.getElementById('login_photo');
    const preview = document.getElementById('photoPreview');
    const startBtn = document.getElementById('startCamera');
    const captureBtn = document.getElementById('capturePhoto');
    const retakeBtn = document.getElementById('retakePhoto');
    let stream = null;

    startBtn.onclick = async () => {
        try {
            stream = await navigator.mediaDevices.getUserMedia({ video: { facingMode:'user' }, audio:false });
            video.srcObject = stream;
            video.style.display = '';
            captureBtn.style.display = '';
            startBtn.style.display = 'none';
        } catch (e) {
            alert("Camera access required for login.");
        }
    };

    captureBtn.onclick = () => {
        const ctx = canvas.getContext('2d');
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;
        ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
        const dataUrl = canvas.toDataURL('image/jpeg', 0.8);
        photoInput.value = dataUrl;
        preview.src = dataUrl;
        preview.style.display = '';
        captureBtn.style.display = 'none';
        retakeBtn.style.display = '';
        stopCamera();
    };

    retakeBtn.onclick = () => {
        preview.style.display = 'none';
        photoInput.value = '';
        startBtn.style.display = '';
        retakeBtn.style.display = 'none';
    };

    function stopCamera() {
        if (stream) {
            stream.getTracks().forEach(t => t.stop());
            stream = null;
        }
        video.style.display = 'none';
    }

    // Ensure camera & location present before submit
    document.querySelector('form').addEventListener('submit', e => {
        if (!photoInput.value) {
            e.preventDefault();
            alert("Please capture your photo to continue.");
            return false;
        }
        if (!lat.value || !lon.value) {
            e.preventDefault();
            alert("Please allow location access to continue.");
            return false;
        }
    });
});
</script>
@endsection
