-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2025 at 09:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp_system1`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `address_ar` text NOT NULL,
  `address_en` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `full_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `number`, `name_ar`, `name_en`, `address_ar`, `address_en`, `created_at`, `updated_at`, `sequential_code_id`, `full_code`) VALUES
(1, 1, 'المركز الرئيسى', 'Main Branch', 'القاهرة', 'Cairo', '2025-09-18 08:18:54', '2025-09-18 08:18:54', 1, 'BRAN-00001'),
(2, 2, 'امتحان', 'Test', 'امتحان', 'Test', '2025-09-18 08:18:54', '2025-09-19 02:32:10', 1, 'BRAN-00002');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'توشيبا', 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'سامسونج', 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 'تورنادو', 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(4, 'شيفرولية', 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(5, 'تويوتا', 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(6, 'ايسوزو', 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `brand_category`
--

CREATE TABLE `brand_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_category`
--

INSERT INTO `brand_category` (`id`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 2, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 3, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(4, 1, 2, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(5, 2, 2, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(6, 3, 2, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(7, 4, 3, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(8, 5, 3, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(9, 6, 3, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(10, 4, 4, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(11, 5, 4, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(12, 6, 4, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(13, 1, 5, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(14, 2, 5, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(15, 1, 6, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(16, 2, 6, '2025-09-18 08:18:55', '2025-09-18 08:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `brand_section`
--

CREATE TABLE `brand_section` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_section`
--

INSERT INTO `brand_section` (`id`, `section_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 3, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 1, 2, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(4, 3, 2, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(5, 1, 3, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(6, 2, 4, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(7, 2, 5, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(8, 2, 6, '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'ثلاجات', 1, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'غسالات', 1, 1, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 'نقل', 1, 2, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(4, 'ملاكي', 1, 2, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(5, 'موبايلات', 1, 3, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(6, 'تابلت', 1, 3, '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL DEFAULT 'client',
  `email` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `phone_code` text DEFAULT NULL,
  `street_address` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `opening_balance` bigint(20) DEFAULT NULL,
  `opening_balance_date` date DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by` varchar(255) NOT NULL,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `full_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `email`, `phone`, `mobile`, `phone_code`, `street_address`, `city`, `state`, `postal_code`, `country`, `currency`, `currency_symbol`, `opening_balance`, `opening_balance_date`, `notes`, `status`, `created_by`, `sequential_code_id`, `number`, `full_code`, `created_at`, `updated_at`) VALUES
(1, 'Adil Mohd', 'abc@example.org', '1992139', '233311904', '+ 91', '84200 Clement Ridges', 'Hyd', 'TG', '12121', 'india', 'INR', 'টকা', 18865, '2025-09-18', 'test notes', 1, 'User User', 6, 1, 'CLNT-00001', '2025-09-18 08:18:55', '2025-09-19 03:09:34'),
(3, 'DellaParker', 'crist.mauricio@example.com', '8887541', '378567', '+ 20', '20540 Karine Common', 'South Jalen', 'haven', '30939', 'egypt', 'EGP', 'ج.م.', 77338, '2025-09-18', 'test notes', 1, 'User User', 6, 3, 'CLNT-00003', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(5, 'RosarioThiel', 'verda.halvorson@example.com', '404379', '885589690', '+ 20', '9613 Octavia Coves Apt. 588', 'Derekview', 'mouth', '74608', 'egypt', 'EGP', 'ج.م.', 3341, '2025-09-18', 'test notes', 1, 'Super Admin', 6, 5, 'CLNT-00005', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(6, 'DaisyNader', 'farrell.fredy@example.org', '9608357', '196864599', '+ 20', '48282 Mitchell Common', 'East Tiatown', 'port', '04373-0326', 'egypt', 'EGP', 'ج.م.', 40170, '2025-09-18', 'test notes', 1, 'Admin Admin', 6, 6, 'CLNT-00006', '2025-09-18 08:18:55', '2025-09-18 08:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `client_contacts`
--

CREATE TABLE `client_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `client_cont_first_name` varchar(255) DEFAULT NULL,
  `client_cont_last_name` varchar(255) DEFAULT NULL,
  `client_cont_email` varchar(255) DEFAULT NULL,
  `client_cont_phone` text DEFAULT NULL,
  `client_cont_mobile` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_contacts`
--

INSERT INTO `client_contacts` (`id`, `client_id`, `client_cont_first_name`, `client_cont_last_name`, `client_cont_email`, `client_cont_phone`, `client_cont_mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mohd', 'Adil', 'mohd@ggg.com', '1135916', '597208762', '2025-09-18 08:18:55', '2025-09-19 03:09:34'),
(2, 1, 'Adil', 'Qadri', 'adilqud@abc.com', '3720243', '205196143', '2025-09-18 08:18:55', '2025-09-19 03:09:34'),
(6, 3, 'Concepcion', 'Thompson', 'kling.arno@hotmail.com', '9176128', '634859570', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(7, 3, 'Sallie', 'Schoen', 'luettgen.genesis@gmail.com', '1225037', '122955697', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(8, 3, 'Krystel', 'Bins', 'fmiller@gmail.com', '4545971', '669284188', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(9, 3, 'Catalina', 'Rice', 'hugh.mckenzie@hotmail.com', '1499224', '87509413', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(13, 5, 'Kyla', 'Purdy', 'danny.koss@yahoo.com', '4576514', '40578893', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(14, 5, 'Dario', 'Casper', 'kraig61@jast.com', '8793696', '244994784', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(15, 5, 'Dylan', 'Prohaska', 'misty78@hotmail.com', '5615180', '329526038', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(16, 5, 'Rhianna', 'Fadel', 'pacocha.mary@littel.com', '7096054', '776756584', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(17, 6, 'Cordell', 'Monahan', 'emily.keeling@hotmail.com', '5825390', '464989767', '2025-09-18 08:18:56', '2025-09-18 08:18:56'),
(18, 6, 'Juana', 'Pfeffer', 'fanny.jacobi@gmail.com', '5419074', '858318403', '2025-09-18 08:18:56', '2025-09-18 08:18:56'),
(19, 6, 'Lambert', 'Treutel', 'randi.greenholt@hotmail.com', '3238228', '299574453', '2025-09-18 08:18:56', '2025-09-18 08:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` text NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `mobile` text NOT NULL,
  `fax` text NOT NULL,
  `phone_code` text NOT NULL,
  `street_address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postal_code` text NOT NULL,
  `country` text NOT NULL,
  `commercial_record` text NOT NULL,
  `tax_registration` text NOT NULL,
  `basic_currency` varchar(255) NOT NULL,
  `basic_currency_symbol` varchar(255) NOT NULL,
  `extra_currencies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_currencies`)),
  `extra_currencies_symbols` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_currencies_symbols`)),
  `time_zone` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'defaultLogo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `business_name`, `first_name`, `last_name`, `email`, `phone`, `mobile`, `fax`, `phone_code`, `street_address`, `city`, `state`, `postal_code`, `country`, `commercial_record`, `tax_registration`, `basic_currency`, `basic_currency_symbol`, `extra_currencies`, `extra_currencies_symbols`, `time_zone`, `language`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Biz Credence', 'Aneel', 'Mitra', 'aabbec@gmail.com', '125863524', '01090411577', '958475852', '+ 91', '1010', 'Hyderabad', 'Telangana', '12345', 'india', '123456', '123456789', 'INR', 'Rs', '[\"USD\"]', '[\"$\"]', 'Asia/Kolkata', 'en', '7bfNZg0o9Yt7WGvD4qMkq70lSTa4HPTUbnABOdgN.png', '2025-09-18 08:18:54', '2025-09-19 03:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Account Manager', 'مدير حسابات', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'Sales Manager', 'مدير مبيعات', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 'Purchasing Manager', 'مدير مشتريات', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(4, 'Sales Representative', 'مندوب مبيعات', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(5, 'Purchases Representative', 'مندوب مشتريات', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(6, 'Accountant', 'محاسب', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(7, 'store keeper', 'أمين مخزن', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(8, 'Driver', 'سائق', '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `measurement_units`
--

CREATE TABLE `measurement_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `units_template_id` bigint(20) UNSIGNED NOT NULL,
  `largest_unit_ar` varchar(255) NOT NULL,
  `largest_unit_en` varchar(255) NOT NULL,
  `largest_unit_symbol_ar` varchar(255) NOT NULL,
  `largest_unit_symbol_en` varchar(255) NOT NULL,
  `conversion_factor` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `measurement_units`
--

INSERT INTO `measurement_units` (`id`, `units_template_id`, `largest_unit_ar`, `largest_unit_en`, `largest_unit_symbol_ar`, `largest_unit_symbol_en`, `conversion_factor`, `created_at`, `updated_at`) VALUES
(1, 1, 'قطعة', 'piece', 'ق', 'pc', 1.00, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 2, 'كيلو جرام', 'Kilogram', 'كجم', 'KG', 1000.00, '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_24_092901_create_permission_tables', 1),
(6, '2021_10_26_173405_add_last_active_at_to_users_table', 1),
(7, '2021_10_29_085820_create_permissions_categories_table', 1),
(8, '2021_10_29_085821_create_translated_permissions_table', 1),
(9, '2021_10_30_111410_create_translated_roles_table', 1),
(10, '2021_11_20_111111_create_branches_table', 1),
(11, '2021_11_20_111112_create_jobs_table', 1),
(12, '2021_11_21_150600_add_branch_id_to_users_table', 1),
(13, '2021_11_21_150923_add_department_id_to_users_table', 1),
(14, '2021_11_21_151017_add_job_role_id_to_users_table', 1),
(15, '2021_11_29_175505_create_sequential_codes_table', 1),
(16, '2021_11_30_173506_add_sequential_code_id_to_branches_table', 1),
(17, '2021_12_02_183024_add_sequential_code_id_to_users_table', 1),
(18, '2021_12_04_103703_create_taxes_table', 1),
(19, '2021_12_12_172751_create_units_templates_table', 1),
(20, '2021_12_12_180844_create_measurement_units_table', 1),
(21, '2021_12_16_164941_create_general_settings_table', 1),
(22, '2021_12_24_172401_create_suppliers_table', 1),
(23, '2021_12_30_174432_create_supplier_contacts_table', 1),
(24, '2022_01_03_182357_create_warehouses_table', 1),
(25, '2022_01_10_175126_create_sections_table', 1),
(26, '2022_01_10_184701_create_brands_table', 1),
(27, '2022_01_10_184704_create_brand_section_table', 1),
(28, '2022_01_15_174531_create_categories_table', 1),
(29, '2022_01_15_174532_create_brand_category_table', 1),
(30, '2022_01_16_171201_create_sub_categories_table', 1),
(31, '2022_01_23_181546_create_products_table', 1),
(32, '2022_02_19_075046_create_purchase_invoices_table', 1),
(33, '2022_02_19_171119_create_purchase_invoice_details_table', 1),
(34, '2022_03_18_193100_create_purchase_invoice_taxes_table', 1),
(35, '2022_03_18_193138_create_purchase_invoice_attachments_table', 1),
(36, '2022_04_12_200024_create_purchase_invoice_payments_table', 1),
(37, '2022_05_10_202200_create_clients_table', 1),
(38, '2022_05_11_195248_create_client_contacts_table', 1),
(39, '2022_05_15_194751_create_sales_invoices_table', 1),
(40, '2022_05_19_150852_create_sales_invoice_attachments_table', 1),
(41, '2022_05_19_151102_create_sales_invoice_details_table', 1),
(42, '2022_05_19_151837_create_sales_invoice_taxes_table', 1),
(43, '2022_05_21_114805_create_sales_invoice_payments_table', 1),
(44, '2022_05_28_113121_create_warehouse_purchase_details_table', 1),
(45, '2022_05_29_175256_create_warehouse_sales_details_table', 1),
(46, '2022_05_30_194355_create_warehouse_totals_table', 1),
(47, '2022_06_02_203958_create_product_warehouse_total_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create slaes invoice', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(2, 'edit slaes invoice', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(3, 'delete slaes invoice', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(4, 'show slaes reports', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(5, 'create purchase invoice', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(6, 'edit purchase invoice', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(7, 'delete purchase invoice', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(8, 'show purchases reports', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(9, 'display stock movement price', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(10, 'edit stock movement price', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(11, 'add storage permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(12, 'edit storage permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(13, 'show storage permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(14, 'delete storage permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(15, 'Allow buy less than the lowest price of product', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(16, 'stock tracking', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(17, 'stock transfer', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(18, 'add new employee', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(19, 'edit employee', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(20, 'delete employee', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(21, 'show employee profile', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(22, 'add new role', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(23, 'edit role', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(24, 'delete role', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(25, 'add new permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(26, 'edit permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(27, 'delete permission', 'web', '2025-09-18 08:18:53', '2025-09-18 08:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `permissions_categories`
--

CREATE TABLE `permissions_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions_categories`
--

INSERT INTO `permissions_categories` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'sales', 'المبيعات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(2, 'purchases', 'المشتريات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(3, 'stocks', 'المخازن', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(4, 'human resources', 'الموارد البشرية', '2025-09-18 08:18:53', '2025-09-18 08:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `measurement_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `purchase_price` decimal(8,2) NOT NULL,
  `sell_price` decimal(8,2) NOT NULL,
  `first_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `second_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lowest_sell_price` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1 COMMENT '1 for percentage 0 for cash amount',
  `profit_margin` decimal(8,2) DEFAULT NULL,
  `lowest_stock_alert` decimal(8,2) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `sku` varchar(255) DEFAULT NULL COMMENT 'Stock Keeping Unit',
  `barcode` text DEFAULT NULL,
  `product_image` varchar(255) NOT NULL DEFAULT 'defaultProduct.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `section_id`, `brand_id`, `category_id`, `subcategory_id`, `unit_template_id`, `measurement_unit_id`, `supplier_id`, `total_quantity`, `purchase_price`, `sell_price`, `first_tax_id`, `second_tax_id`, `lowest_sell_price`, `discount`, `discount_type`, `profit_margin`, `lowest_stock_alert`, `notes`, `status`, `sequential_code_id`, `number`, `sku`, `barcode`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'P1', 'testsets', 1, 1, 1, 2, 2, 2, 3, -1.00, 10000.00, 25000.00, 1, 1, 24000.00, 2.00, 1, 20.00, 50.00, 'test', 1, 3, 1, 'PRO-3261-00001', 'testBarcode1.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(2, 'Nobis voluptatem molestias', 'Laborum est dolores voluptatem quod enim minus.', 2, 5, 5, 2, 2, 1, 3, 0.00, 10000.00, 35000.00, 1, 2, 24000.00, 3.00, 1, 18.00, 50.00, 'Natus natus est earum veniam.', 1, 3, 2, 'PRO-1624-00002', 'testBarcode2.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(3, 'Ea sint', 'Dolorem quod rerum voluptas iste et nobis.', 1, 4, 5, 5, 2, 1, 3, 0.00, 15000.00, 30000.00, 1, 1, 26000.00, 2.00, 1, 15.00, 50.00, 'Maxime exercitationem accusamus modi fugit.', 1, 3, 3, 'PRO-3646-00003', 'testBarcode3.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(4, 'Aliquam quisquam et', 'Quod ex in inventore animi.', 3, 3, 6, 6, 2, 2, 3, 0.00, 20000.00, 25000.00, 1, 2, 24000.00, 4.00, 1, 15.00, 50.00, 'Quae illo est rerum.', 2, 3, 4, 'PRO-2356-00004', 'testBarcode4.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(5, 'Sunt ullam quas', 'Omnis quos ut esse illo unde voluptas nulla.', 2, 5, 5, 5, 2, 2, 2, 0.00, 15000.00, 35000.00, 1, 2, 22000.00, 1.00, 1, 11.00, 50.00, 'Veniam vel repellendus neque voluptatum.', 2, 3, 5, 'PRO-2526-00005', 'testBarcode5.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(6, 'Eum fugit', 'Eum perspiciatis fugit est.', 1, 1, 4, 3, 2, 1, 4, 0.00, 15000.00, 35000.00, 1, 2, 26000.00, 1.00, 1, 18.00, 50.00, 'Eum incidunt et eum quibusdam beatae autem.', 2, 3, 6, 'PRO-3657-00006', 'testBarcode6.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(7, 'Et ut amet', 'Aut cum voluptatem laboriosam.', 1, 5, 1, 2, 1, 2, 2, 0.00, 15000.00, 30000.00, 2, 2, 24000.00, 2.00, 1, 20.00, 50.00, 'Et omnis molestias natus aut.', 1, 3, 7, 'PRO-1262-00007', 'testBarcode7.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(8, 'Fugit ex non', 'Unde et possimus voluptas.', 3, 2, 3, 3, 2, 2, 4, 0.00, 10000.00, 25000.00, 1, 2, 26000.00, 4.00, 1, 12.00, 50.00, 'Doloribus est quia porro cupiditate.', 1, 3, 8, 'PRO-1565-00008', 'testBarcode8.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(9, 'Est autem qui', 'Et quia dolores veritatis dolor.', 2, 3, 5, 2, 2, 1, 2, 0.00, 10000.00, 30000.00, 2, 1, 26000.00, 3.00, 1, 17.00, 50.00, 'Nulla sequi libero eum vitae eveniet.', 2, 3, 9, 'PRO-1566-00009', 'testBarcode9.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11'),
(10, 'Voluptatem tenetur', 'Eum veritatis ex voluptas molestias vero sint.', 3, 5, 1, 3, 1, 1, 3, 0.00, 10000.00, 25000.00, 1, 1, 22000.00, 2.00, 1, 10.00, 50.00, 'Beatae aliquam incidunt doloremque provident molestiae ipsam.', 2, 3, 10, 'PRO-1452-00010', 'testBarcode10.jpg', 'defaultProduct.png', '2025-09-18 08:18:56', '2025-09-19 03:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse_total`
--

CREATE TABLE `product_warehouse_total` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_total_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse_total`
--

INSERT INTO `product_warehouse_total` (`id`, `product_id`, `warehouse_total_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 6, NULL, NULL),
(7, 7, 7, NULL, NULL),
(8, 8, 8, NULL, NULL),
(9, 9, 9, NULL, NULL),
(10, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoices`
--

CREATE TABLE `purchase_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `inv_number` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subtotal` mediumtext NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) DEFAULT 0.00,
  `discount_type` int(11) DEFAULT 1 COMMENT '1 for percentage 0 for cash amount',
  `discount_inv` mediumtext DEFAULT '0.00',
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_expense` decimal(8,2) DEFAULT 0.00,
  `shipping_expense_inv` mediumtext DEFAULT '0.00',
  `total_inv` mediumtext DEFAULT '0.00',
  `down_payment` decimal(8,2) DEFAULT 0.00,
  `down_payment_type` int(11) DEFAULT 1 COMMENT '1 for percentage 0 for cash amount',
  `down_payment_inv` mediumtext DEFAULT '0.00',
  `due_amount` mediumtext DEFAULT '0.00',
  `deposit_payment_method` varchar(255) DEFAULT 'cash',
  `deposit_transaction_id` bigint(20) DEFAULT NULL,
  `payment_payment_method` varchar(255) DEFAULT 'cash',
  `payment_transaction_id` bigint(20) DEFAULT NULL,
  `paid_to_supplier_inv` mediumtext DEFAULT '0.00',
  `due_amount_after_paid` mediumtext DEFAULT '0.00',
  `payments_total` decimal(12,2) DEFAULT 0.00,
  `due_amount_after_payments` decimal(12,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` int(11) DEFAULT 1 COMMENT '1 unpaid, 2 partially paid, 3 paid',
  `receiving_status` int(11) DEFAULT 1 COMMENT '1 under receive, 2 received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice_attachments`
--

CREATE TABLE `purchase_invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice_details`
--

CREATE TABLE `purchase_invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `first_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `second_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `row_total` mediumtext NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice_payments`
--

CREATE TABLE `purchase_invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `deposit_payment_method` varchar(255) DEFAULT 'cash',
  `payment_amount` mediumtext DEFAULT '0.00',
  `payment_date` date DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT 'completed',
  `collected_by_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `receipt_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice_taxes`
--

CREATE TABLE `purchase_invoice_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `total_tax_inv` mediumtext NOT NULL DEFAULT '0.00',
  `total_tax_inv_sum` mediumtext NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'admin', 'web', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 'staff', 'web', '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoices`
--

CREATE TABLE `sales_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `inv_number` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subtotal` mediumtext NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) DEFAULT 0.00,
  `discount_type` int(11) DEFAULT 1 COMMENT '1 for percentage 0 for cash amount',
  `discount_inv` mediumtext DEFAULT '0.00',
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_expense` decimal(8,2) DEFAULT 0.00,
  `shipping_expense_inv` mediumtext DEFAULT '0.00',
  `total_inv` mediumtext DEFAULT '0.00',
  `down_payment` decimal(8,2) DEFAULT 0.00,
  `down_payment_type` int(11) DEFAULT 1 COMMENT '1 for percentage 0 for cash amount',
  `down_payment_inv` mediumtext DEFAULT '0.00',
  `due_amount` mediumtext DEFAULT '0.00',
  `deposit_payment_method` varchar(255) DEFAULT 'cash',
  `deposit_transaction_id` bigint(20) DEFAULT NULL,
  `payment_payment_method` varchar(255) DEFAULT 'cash',
  `payment_transaction_id` bigint(20) DEFAULT NULL,
  `paid_to_supplier_inv` mediumtext DEFAULT '0.00',
  `due_amount_after_paid` mediumtext DEFAULT '0.00',
  `payments_total` decimal(12,2) DEFAULT 0.00,
  `due_amount_after_payments` decimal(12,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` int(11) DEFAULT 1 COMMENT '1 unpaid, 2 partially paid, 3 paid',
  `receiving_status` int(11) DEFAULT 1 COMMENT '1 under receive, 2 received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_invoices`
--

INSERT INTO `sales_invoices` (`id`, `sequential_code_id`, `number`, `inv_number`, `issue_date`, `due_date`, `client_id`, `subtotal`, `discount`, `discount_type`, `discount_inv`, `warehouse_id`, `shipping_expense`, `shipping_expense_inv`, `total_inv`, `down_payment`, `down_payment_type`, `down_payment_inv`, `due_amount`, `deposit_payment_method`, `deposit_transaction_id`, `payment_payment_method`, `payment_transaction_id`, `paid_to_supplier_inv`, `due_amount_after_paid`, `payments_total`, `due_amount_after_payments`, `notes`, `user_id`, `payment_status`, `receiving_status`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'SLS-INV-00001', '2025-09-19', '2025-09-19', 1, '25000 INR', NULL, NULL, NULL, 1, 10.00, '10.0 INR', '28510', NULL, NULL, NULL, '28510 INR', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 3, 1, 1, '2025-09-19 03:17:10', '2025-09-19 03:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_attachments`
--

CREATE TABLE `sales_invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_details`
--

CREATE TABLE `sales_invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `first_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `second_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `row_total` mediumtext NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_invoice_details`
--

INSERT INTO `sales_invoice_details` (`id`, `sales_invoice_id`, `product_id`, `description`, `quantity`, `unit_price`, `first_tax_id`, `second_tax_id`, `row_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', 1.00, 25000.00, 1, NULL, '25000 INR', '2025-09-19 03:17:10', '2025-09-19 03:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_payments`
--

CREATE TABLE `sales_invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `deposit_payment_method` varchar(255) DEFAULT 'cash',
  `payment_amount` mediumtext DEFAULT '0.00',
  `payment_date` date DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT 'completed',
  `collected_by_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `receipt_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_taxes`
--

CREATE TABLE `sales_invoice_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `total_tax_inv` mediumtext NOT NULL DEFAULT '0.00',
  `total_tax_inv_sum` mediumtext NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_invoice_taxes`
--

INSERT INTO `sales_invoice_taxes` (`id`, `sales_invoice_id`, `total_tax_inv`, `total_tax_inv_sum`, `created_at`, `updated_at`) VALUES
(1, 1, 'Value Add (14%)', '3500 INR', '2025-09-19 03:17:10', '2025-09-19 03:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'P1', 1, '2025-09-18 08:18:54', '2025-09-19 03:02:05'),
(2, 'P2', 1, '2025-09-18 08:18:54', '2025-09-19 03:02:14'),
(3, 'P3', 0, '2025-09-18 08:18:54', '2025-09-19 03:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `sequential_codes`
--

CREATE TABLE `sequential_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `numbers_length` bigint(20) NOT NULL DEFAULT 3,
  `model` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequential_codes`
--

INSERT INTO `sequential_codes` (`id`, `prefix`, `numbers_length`, `model`, `created_at`, `updated_at`) VALUES
(1, 'BRAN', 5, 'branches', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'USER', 5, 'users', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 'PRO', 5, 'products', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(4, 'PUR-INV', 5, 'purchase_invoices', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(5, 'SUPP', 5, 'suppliers', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(6, 'CLNT', 5, 'clients', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(7, 'SLS-INV', 5, 'sales_invoices', '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ثلاجه 16 قدم باب واحد', 1, 1, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(2, 'ثلاجه 16 قدم بابين', 1, 1, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(3, 'غسالة تحميل امامى', 1, 2, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(4, 'غسالة تحميل راسى', 1, 2, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(5, 'نقل خفيف', 1, 3, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(6, 'نقل ثقيل', 1, 3, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(7, 'سيدان', 1, 4, '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(8, 'دفع رباعى', 1, 4, '2025-09-18 08:18:55', '2025-09-18 08:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commercial_name` text NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `mobile` text NOT NULL,
  `fax` text NOT NULL,
  `phone_code` text NOT NULL,
  `street_address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postal_code` text DEFAULT NULL,
  `country` text NOT NULL,
  `commercial_record` text NOT NULL,
  `tax_registration` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `opening_balance` bigint(20) NOT NULL,
  `opening_balance_date` date NOT NULL,
  `notes` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` varchar(255) NOT NULL,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `full_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `commercial_name`, `first_name`, `last_name`, `email`, `phone`, `mobile`, `fax`, `phone_code`, `street_address`, `city`, `state`, `postal_code`, `country`, `commercial_record`, `tax_registration`, `currency`, `currency_symbol`, `opening_balance`, `opening_balance_date`, `notes`, `status`, `created_by`, `sequential_code_id`, `number`, `full_code`, `created_at`, `updated_at`) VALUES
(1, 'ufarrell', 'Favian', 'Paucek', 'dillan.pouros@example.org', '7723072', '644533729', '759464', '+ 20', '8523 Olson Ways Suite 830', 'West Laronshire', 'Lake Timmothy', '16901-3898', 'egypt', '494145', '595474883', 'EGP', 'ج.م.', 28154, '2025-09-18', 'إختبار', 2, 'Admin Admin', 5, 1, 'SUPP-00001', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(2, 'zstamm', 'Polly', 'Mitchell', 'alize.mckenzie@example.org', '9342062', '284551511', '9751777', '+ 20', '20096 Ebert Station Suite 715', 'New Daphnemouth', 'Dietrichport', '95603', 'egypt', '612209', '448466295', 'EGP', 'ج.م.', 67185, '2025-09-18', 'إختبار', 1, 'User User', 5, 2, 'SUPP-00002', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(3, 'joconner', 'Dorothy', 'Swaniawski', 'iwilliamson@example.com', '7075409', '862149913', '4681268', '+ 20', '556 Jedediah Fork Apt. 595', 'Brekkestad', 'Kuhlmanchester', '55212-6330', 'egypt', '123594', '174541565', 'EGP', 'ج.م.', 93034, '2025-09-18', 'إختبار', 1, 'Admin Admin', 5, 3, 'SUPP-00003', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(4, 'reanna.nader', 'Hertha', 'Carroll', 'merle.bednar@example.org', '8225521', '507326315', '4719858', '+ 20', '500 Aiyana Springs', 'Arlieshire', 'Mrazmouth', '64939-0915', 'egypt', '348090', '726743440', 'EGP', 'ج.م.', 26599, '2025-09-18', 'إختبار', 2, 'Admin Admin', 5, 4, 'SUPP-00004', '2025-09-18 08:18:55', '2025-09-18 08:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contacts`
--

CREATE TABLE `supplier_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `supp_cont_first_name` varchar(255) NOT NULL,
  `supp_cont_last_name` varchar(255) NOT NULL,
  `supp_cont_email` varchar(255) NOT NULL,
  `supp_cont_phone` text NOT NULL,
  `supp_cont_mobile` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_contacts`
--

INSERT INTO `supplier_contacts` (`id`, `supplier_id`, `supp_cont_first_name`, `supp_cont_last_name`, `supp_cont_email`, `supp_cont_phone`, `supp_cont_mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'Geovany', 'Hegmann', 'marcel.schoen@hotmail.com', '1400438', '416263961', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(2, 1, 'Dasia', 'Reilly', 'dmurphy@hotmail.com', '4747872', '665548263', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(3, 1, 'Wendy', 'Mohr', 'tyrel.zboncak@reynolds.com', '4502287', '330881911', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(4, 2, 'Crystal', 'Larson', 'brady04@hoppe.com', '3582442', '615055837', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(5, 2, 'Richmond', 'Miller', 'morar.dillon@yahoo.com', '9620229', '805623486', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(6, 3, 'Meghan', 'Reichert', 'mosciski.rhett@gmail.com', '9211059', '83276623', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(7, 3, 'Shayna', 'Volkman', 'buckridge.abigale@gmail.com', '1793418', '487388697', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(8, 3, 'Mya', 'Mertz', 'emmanuelle.wintheiser@ondricka.com', '2465628', '771965390', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(9, 3, 'Marianna', 'Bashirian', 'kuhlman.gillian@gmail.com', '5062054', '214087285', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(10, 4, 'Shania', 'Erdman', 'thora06@yahoo.com', '607888', '104048579', '2025-09-18 08:18:55', '2025-09-18 08:18:55'),
(11, 4, 'Foster', 'Trantow', 'minerva.stroman@mohr.com', '3622850', '916678438', '2025-09-18 08:18:55', '2025-09-18 08:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_name_ar` varchar(255) NOT NULL,
  `tax_name_en` varchar(255) NOT NULL,
  `tax_value` decimal(8,2) NOT NULL,
  `unit_price_inc` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_name_ar`, `tax_name_en`, `tax_value`, `unit_price_inc`, `created_at`, `updated_at`) VALUES
(1, 'القيمة المضافة', 'Value Add', 14.00, 0, '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'الدمغة', 'Damgha', 2.00, 0, '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `translated_permissions`
--

CREATE TABLE `translated_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translated_permissions`
--

INSERT INTO `translated_permissions` (`id`, `permission_id`, `category_id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'create slaes invoice', 'إضافة فاتورة بيع', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(2, 2, 1, 'edit slaes invoice', 'تعديل فاتورة بيع', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(3, 3, 1, 'delete slaes invoice', 'حذف فاتورة بيع', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(4, 4, 1, 'show slaes reports', 'عرض تقارير المبيعات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(5, 5, 2, 'create purchase invoice', 'إضافة فاتورة مشتريات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(6, 6, 2, 'edit purchase invoice', 'تعديل فاتورة مشتريات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(7, 7, 2, 'delete purchase invoice', 'حذف فاتورة مشتريات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(8, 8, 2, 'show purchases reports', 'عرض تقارير المشتريات', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(9, 9, 3, 'display stock movement price', 'عرض سعر حركة المخزون', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(10, 10, 3, 'edit stock movement price', 'تعديل سعر حركة المخزون', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(11, 11, 3, 'add storage permission', 'إضافة إذن مخزني', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(12, 12, 3, 'edit storage permission', 'تعديل الإذن المخزني', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(13, 13, 3, 'show storage permission', 'عرض الإذن المخزني', '2025-09-18 08:18:53', '2025-09-18 08:18:53'),
(14, 14, 3, 'delete storage permission', 'حذف الإذن المخزني', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(15, 15, 3, 'Allow buy less than the lowest price of product', 'السماح للشراء بأقل من السعر الأدني للمنتج', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(16, 16, 3, 'stock tracking', 'متابعة المخزون', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(17, 17, 3, 'stock transfer', 'نقل المخزون', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(18, 18, 4, 'add new employee', 'إضافة موظف جديد', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(19, 19, 4, 'edit employee', 'تعديل موظف', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(20, 20, 4, 'delete employee', 'حذف موظف', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(21, 21, 4, 'show employee profile', 'عرض الملف الشخصى لموظف', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(22, 22, 4, 'add new role', 'إضافة دور جديد', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(23, 23, 4, 'edit role', 'تعديل دور', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(24, 24, 4, 'delete role', 'حذف دور', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(25, 25, 4, 'add new permission', 'إضافة صلاحية جديده', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(26, 26, 4, 'edit permission', 'تعديل صلاحية', '2025-09-18 08:18:53', '2025-09-18 08:18:54'),
(27, 27, 4, 'delete permission', 'حذف صلاحية', '2025-09-18 08:18:53', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `translated_roles`
--

CREATE TABLE `translated_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translated_roles`
--

INSERT INTO `translated_roles` (`id`, `role_id`, `name_en`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 1, 'superadmin', 'مشرف عام', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 2, 'admin', 'مشرف', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(3, 3, 'staff', 'موظف', '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `units_templates`
--

CREATE TABLE `units_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name_ar` varchar(255) NOT NULL,
  `template_name_en` varchar(255) NOT NULL,
  `main_unit_ar` varchar(255) NOT NULL,
  `main_unit_en` varchar(255) NOT NULL,
  `main_unit_symbol_ar` varchar(255) NOT NULL,
  `main_unit_symbol_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_templates`
--

INSERT INTO `units_templates` (`id`, `template_name_ar`, `template_name_en`, `main_unit_ar`, `main_unit_en`, `main_unit_symbol_ar`, `main_unit_symbol_en`, `created_at`, `updated_at`) VALUES
(1, 'الكمية', 'Quantity', 'قطعة', 'Unit', 'ق', 'U', '2025-09-18 08:18:54', '2025-09-18 08:18:54'),
(2, 'الوزن', 'Weight', 'جرام', 'Gram', 'جم', 'GM', '2025-09-18 08:18:54', '2025-09-18 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` text NOT NULL,
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `password` varchar(255) NOT NULL,
  `roles_name` varchar(255) NOT NULL DEFAULT '["user"]',
  `status` int(11) NOT NULL DEFAULT 1,
  `system_user` int(11) NOT NULL DEFAULT 0,
  `system_not_user` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_active_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `sequential_code_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `full_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `birth_date`, `email`, `email_verified_at`, `phone`, `address_1`, `address_2`, `user_image`, `password`, `roles_name`, `status`, `system_user`, `system_not_user`, `remember_token`, `created_at`, `updated_at`, `last_active_at`, `branch_id`, `department_id`, `job_id`, `sequential_code_id`, `number`, `full_code`) VALUES
(1, 'Super', 'Super', 'Admin', 'male', '1986-10-01', 'superadmin@app.com', NULL, '01090411577', 'company address', 'company address', 'default.png', '$2y$10$9xbSQrGYlpMj9Ml6H.qs3ebrHTTV64t2p46e5TbPgUUF2dtZfp5MK', '[\"superadmin\"]', 1, 1, 0, NULL, '2025-09-18 08:18:54', '2025-10-03 08:55:59', '2025-10-03 08:55:59', 1, 1, 1, 2, 1, 'USER-00001'),
(2, 'Admin', 'Admin', 'Admin', 'male', '1986-10-01', 'admin@app.com', NULL, '01090411575', 'company address', 'company address', 'default.png', '$2y$10$a3XDFRcHcqwzDmgEpcpEd./JdEZMfPO4OHEox55C2GvPunVXSRlH6', '[\"admin\"]', 1, 1, 0, NULL, '2025-09-18 08:18:54', '2025-09-25 07:35:38', '2025-09-25 07:35:38', 1, 1, 2, 2, 2, 'USER-00002'),
(3, 'User', 'User', 'User', 'male', '1986-10-01', 'user@app.com', NULL, '01090411576', 'company address', 'company address', 'default.png', '$2y$10$sy8HyPyJK1TAROJ7D3vYC.5870pLHUmHX6R5bXQtDQ3V6h7oyTRC6', '[\"staff\"]', 1, 1, 0, NULL, '2025-09-18 08:18:54', '2025-09-19 03:21:02', '2025-09-19 03:21:02', 1, 1, 3, 2, 3, 'USER-00003');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shipping_address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `shipping_address`, `status`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Explicabo facere', '55599 Walsh Causeway Suite 095\nWest Neha, MA 71917', 1, 1, '2025-09-18 08:18:56', '2025-09-18 08:18:56'),
(2, 'Placeat quis nesciunt', '859 Windler Grove\nBrandynfort, KS 36226', 1, 2, '2025-09-18 08:18:56', '2025-09-18 08:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_purchase_details`
--

CREATE TABLE `warehouse_purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `receiving_status` int(11) DEFAULT 1 COMMENT '1 under receive, 2 received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_sales_details`
--

CREATE TABLE `warehouse_sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `sales_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_sales_details`
--

INSERT INTO `warehouse_sales_details` (`id`, `warehouse_id`, `sales_invoice_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1.00, 25000.00, '2025-09-19 03:17:10', '2025-09-19 03:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_totals`
--

CREATE TABLE `warehouse_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `total_quantity_purchased` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_purchases_cost` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_sales_value_of_purchases` decimal(12,2) NOT NULL DEFAULT 0.00,
  `expected_profit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_quantity_sold` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_sold_cost` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_value_of_sales` decimal(12,2) NOT NULL DEFAULT 0.00,
  `actual_profit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `weighted_average_cost` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_quantity_remain` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_remain_cost` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_sales_value_of_remain` decimal(12,2) NOT NULL DEFAULT 0.00,
  `expected_profit_of_remain` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_totals`
--

INSERT INTO `warehouse_totals` (`id`, `warehouse_id`, `product_id`, `total_quantity_purchased`, `total_purchases_cost`, `total_sales_value_of_purchases`, `expected_profit`, `total_quantity_sold`, `total_sold_cost`, `total_value_of_sales`, `actual_profit`, `weighted_average_cost`, `total_quantity_remain`, `total_remain_cost`, `total_sales_value_of_remain`, `expected_profit_of_remain`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 25000.00, 25000.00, 0.00, -1.00, 0.00, -25000.00, -25000.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(2, 1, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(3, 1, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(4, 1, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(5, 1, 5, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(6, 1, 6, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(7, 1, 7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(8, 1, 8, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(9, 1, 9, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11'),
(10, 1, 10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-09-19 03:17:11', '2025-09-19 03:17:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_sequential_code_id_foreign` (`sequential_code_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_category`
--
ALTER TABLE `brand_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_category_brand_id_foreign` (`brand_id`),
  ADD KEY `brand_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `brand_section`
--
ALTER TABLE `brand_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_section_section_id_foreign` (`section_id`),
  ADD KEY `brand_section_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_section_id_foreign` (`section_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_sequential_code_id_foreign` (`sequential_code_id`);

--
-- Indexes for table `client_contacts`
--
ALTER TABLE `client_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_contacts_client_cont_email_unique` (`client_cont_email`),
  ADD KEY `client_contacts_client_id_foreign` (`client_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `general_settings_email_unique` (`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement_units`
--
ALTER TABLE `measurement_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measurement_units_units_template_id_foreign` (`units_template_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `permissions_categories`
--
ALTER TABLE `permissions_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_unit_template_id_foreign` (`unit_template_id`),
  ADD KEY `products_measurement_unit_id_foreign` (`measurement_unit_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`),
  ADD KEY `products_first_tax_id_foreign` (`first_tax_id`),
  ADD KEY `products_second_tax_id_foreign` (`second_tax_id`),
  ADD KEY `products_sequential_code_id_foreign` (`sequential_code_id`);

--
-- Indexes for table `product_warehouse_total`
--
ALTER TABLE `product_warehouse_total`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_warehouse_total_product_id_foreign` (`product_id`),
  ADD KEY `product_warehouse_total_warehouse_total_id_foreign` (`warehouse_total_id`);

--
-- Indexes for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoices_sequential_code_id_foreign` (`sequential_code_id`),
  ADD KEY `purchase_invoices_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchase_invoices_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `purchase_invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_invoice_attachments`
--
ALTER TABLE `purchase_invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoice_attachments_purchase_invoice_id_foreign` (`purchase_invoice_id`);

--
-- Indexes for table `purchase_invoice_details`
--
ALTER TABLE `purchase_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoice_details_purchase_invoice_id_foreign` (`purchase_invoice_id`),
  ADD KEY `purchase_invoice_details_product_id_foreign` (`product_id`),
  ADD KEY `purchase_invoice_details_first_tax_id_foreign` (`first_tax_id`),
  ADD KEY `purchase_invoice_details_second_tax_id_foreign` (`second_tax_id`);

--
-- Indexes for table `purchase_invoice_payments`
--
ALTER TABLE `purchase_invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoice_payments_purchase_invoice_id_foreign` (`purchase_invoice_id`),
  ADD KEY `purchase_invoice_payments_collected_by_id_foreign` (`collected_by_id`);

--
-- Indexes for table `purchase_invoice_taxes`
--
ALTER TABLE `purchase_invoice_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoice_taxes_purchase_invoice_id_foreign` (`purchase_invoice_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoices_sequential_code_id_foreign` (`sequential_code_id`),
  ADD KEY `sales_invoices_client_id_foreign` (`client_id`),
  ADD KEY `sales_invoices_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `sales_invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `sales_invoice_attachments`
--
ALTER TABLE `sales_invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoice_attachments_sales_invoice_id_foreign` (`sales_invoice_id`);

--
-- Indexes for table `sales_invoice_details`
--
ALTER TABLE `sales_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoice_details_sales_invoice_id_foreign` (`sales_invoice_id`),
  ADD KEY `sales_invoice_details_product_id_foreign` (`product_id`),
  ADD KEY `sales_invoice_details_first_tax_id_foreign` (`first_tax_id`),
  ADD KEY `sales_invoice_details_second_tax_id_foreign` (`second_tax_id`);

--
-- Indexes for table `sales_invoice_payments`
--
ALTER TABLE `sales_invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoice_payments_sales_invoice_id_foreign` (`sales_invoice_id`),
  ADD KEY `sales_invoice_payments_collected_by_id_foreign` (`collected_by_id`);

--
-- Indexes for table `sales_invoice_taxes`
--
ALTER TABLE `sales_invoice_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_invoice_taxes_sales_invoice_id_foreign` (`sales_invoice_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequential_codes`
--
ALTER TABLE `sequential_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD KEY `suppliers_sequential_code_id_foreign` (`sequential_code_id`);

--
-- Indexes for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_contacts_supp_cont_email_unique` (`supp_cont_email`),
  ADD KEY `supplier_contacts_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translated_permissions`
--
ALTER TABLE `translated_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translated_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `translated_permissions_category_id_foreign` (`category_id`);

--
-- Indexes for table `translated_roles`
--
ALTER TABLE `translated_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translated_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `units_templates`
--
ALTER TABLE `units_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_branch_id_foreign` (`branch_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_job_id_foreign` (`job_id`),
  ADD KEY `users_sequential_code_id_foreign` (`sequential_code_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `warehouse_purchase_details`
--
ALTER TABLE `warehouse_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_purchase_details_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_purchase_details_purchase_invoice_id_foreign` (`purchase_invoice_id`),
  ADD KEY `warehouse_purchase_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `warehouse_sales_details`
--
ALTER TABLE `warehouse_sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_sales_details_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_sales_details_sales_invoice_id_foreign` (`sales_invoice_id`),
  ADD KEY `warehouse_sales_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `warehouse_totals`
--
ALTER TABLE `warehouse_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_totals_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_totals_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand_category`
--
ALTER TABLE `brand_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `brand_section`
--
ALTER TABLE `brand_section`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_contacts`
--
ALTER TABLE `client_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `measurement_units`
--
ALTER TABLE `measurement_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions_categories`
--
ALTER TABLE `permissions_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_warehouse_total`
--
ALTER TABLE `product_warehouse_total`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_invoice_attachments`
--
ALTER TABLE `purchase_invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_invoice_details`
--
ALTER TABLE `purchase_invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_invoice_payments`
--
ALTER TABLE `purchase_invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_invoice_taxes`
--
ALTER TABLE `purchase_invoice_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_invoice_attachments`
--
ALTER TABLE `sales_invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_invoice_details`
--
ALTER TABLE `sales_invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_invoice_payments`
--
ALTER TABLE `sales_invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_invoice_taxes`
--
ALTER TABLE `sales_invoice_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sequential_codes`
--
ALTER TABLE `sequential_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translated_permissions`
--
ALTER TABLE `translated_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `translated_roles`
--
ALTER TABLE `translated_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units_templates`
--
ALTER TABLE `units_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warehouse_purchase_details`
--
ALTER TABLE `warehouse_purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse_sales_details`
--
ALTER TABLE `warehouse_sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse_totals`
--
ALTER TABLE `warehouse_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brand_category`
--
ALTER TABLE `brand_category`
  ADD CONSTRAINT `brand_category_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brand_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brand_section`
--
ALTER TABLE `brand_section`
  ADD CONSTRAINT `brand_section_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brand_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_contacts`
--
ALTER TABLE `client_contacts`
  ADD CONSTRAINT `client_contacts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `measurement_units`
--
ALTER TABLE `measurement_units`
  ADD CONSTRAINT `measurement_units_units_template_id_foreign` FOREIGN KEY (`units_template_id`) REFERENCES `units_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_first_tax_id_foreign` FOREIGN KEY (`first_tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_measurement_unit_id_foreign` FOREIGN KEY (`measurement_unit_id`) REFERENCES `measurement_units` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_second_tax_id_foreign` FOREIGN KEY (`second_tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_unit_template_id_foreign` FOREIGN KEY (`unit_template_id`) REFERENCES `units_templates` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_warehouse_total`
--
ALTER TABLE `product_warehouse_total`
  ADD CONSTRAINT `product_warehouse_total_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_warehouse_total_warehouse_total_id_foreign` FOREIGN KEY (`warehouse_total_id`) REFERENCES `warehouse_totals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  ADD CONSTRAINT `purchase_invoices_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_invoices_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_invoices_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_invoice_attachments`
--
ALTER TABLE `purchase_invoice_attachments`
  ADD CONSTRAINT `purchase_invoice_attachments_purchase_invoice_id_foreign` FOREIGN KEY (`purchase_invoice_id`) REFERENCES `purchase_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_invoice_details`
--
ALTER TABLE `purchase_invoice_details`
  ADD CONSTRAINT `purchase_invoice_details_first_tax_id_foreign` FOREIGN KEY (`first_tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_invoice_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_invoice_details_purchase_invoice_id_foreign` FOREIGN KEY (`purchase_invoice_id`) REFERENCES `purchase_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_invoice_details_second_tax_id_foreign` FOREIGN KEY (`second_tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_invoice_payments`
--
ALTER TABLE `purchase_invoice_payments`
  ADD CONSTRAINT `purchase_invoice_payments_collected_by_id_foreign` FOREIGN KEY (`collected_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_invoice_payments_purchase_invoice_id_foreign` FOREIGN KEY (`purchase_invoice_id`) REFERENCES `purchase_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_invoice_taxes`
--
ALTER TABLE `purchase_invoice_taxes`
  ADD CONSTRAINT `purchase_invoice_taxes_purchase_invoice_id_foreign` FOREIGN KEY (`purchase_invoice_id`) REFERENCES `purchase_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoices`
--
ALTER TABLE `sales_invoices`
  ADD CONSTRAINT `sales_invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_invoices_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_invoices_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoice_attachments`
--
ALTER TABLE `sales_invoice_attachments`
  ADD CONSTRAINT `sales_invoice_attachments_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice_details`
--
ALTER TABLE `sales_invoice_details`
  ADD CONSTRAINT `sales_invoice_details_first_tax_id_foreign` FOREIGN KEY (`first_tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_invoice_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_invoice_details_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_invoice_details_second_tax_id_foreign` FOREIGN KEY (`second_tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoice_payments`
--
ALTER TABLE `sales_invoice_payments`
  ADD CONSTRAINT `sales_invoice_payments_collected_by_id_foreign` FOREIGN KEY (`collected_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_invoice_payments_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice_taxes`
--
ALTER TABLE `sales_invoice_taxes`
  ADD CONSTRAINT `sales_invoice_taxes_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  ADD CONSTRAINT `supplier_contacts_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translated_permissions`
--
ALTER TABLE `translated_permissions`
  ADD CONSTRAINT `translated_permissions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `permissions_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `translated_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translated_roles`
--
ALTER TABLE `translated_roles`
  ADD CONSTRAINT `translated_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `permissions_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_sequential_code_id_foreign` FOREIGN KEY (`sequential_code_id`) REFERENCES `sequential_codes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouse_purchase_details`
--
ALTER TABLE `warehouse_purchase_details`
  ADD CONSTRAINT `warehouse_purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_purchase_details_purchase_invoice_id_foreign` FOREIGN KEY (`purchase_invoice_id`) REFERENCES `purchase_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_purchase_details_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouse_sales_details`
--
ALTER TABLE `warehouse_sales_details`
  ADD CONSTRAINT `warehouse_sales_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_sales_details_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_sales_details_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouse_totals`
--
ALTER TABLE `warehouse_totals`
  ADD CONSTRAINT `warehouse_totals_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_totals_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
