-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 06:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `doctor_name` text DEFAULT NULL,
  `speciality` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `speciality` text DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `achievement` text DEFAULT NULL,
  `institute` text DEFAULT NULL,
  `doctor_details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `phone`, `speciality`, `room_number`, `achievement`, `institute`, `doctor_details`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Saikat Das Gupta', '+12345678', 'Associate Consultant, Cardiac Surgery', 'A - 108', 'MBBS, MS ( Cardiothoracic Surgery)', 'Dr. Saikat Das Gupta, graduated (MBBS) from the University of Science and Technology, Chattogram, and completed his Master of Surgery (MS) in Cardiothoracic Surgery from the National Heart Foundation of Bangladesh under the University of Dhaka.', 'Dr. Saikat has more than seventeen years of clinical experience in cardiac surgery. He served for more than fourteen years in different positions under reputed Cardiothoracic Surgeons at the department of cardiac surgery of the National heart foundation of Bangladesh before joining Square Hospitals Ltd. He served as Registrar in the Department of Cardiac Surgery for three and half years at the National Heart Foundation of Bangladesh. He later joined as Junior Consultant, on October 2020 at Square Hospital in the Cardiac Surgery department and was subsequently promoted as Associate Consultant. At Square Hospital he was fortunate to work as an associate of pioneer Aortic and MICS surgeon Dr. Prasanta K Chanda. He is capable of managing Beating heart Coronary Artery Bypass Grafting (OP-CABG), Valve replacement (AVR, MVR, DVR) or repair, Myxoma, Atrial Septal Defect (ASD) repair, Septal Myectomy, Ventricular Septal Rupture (VSR), different Aortic pathologies (Aortic Aneurysm / Dissections, etc.) and many other cardiac diseases. He also received training from multiple renowned faculties around the globe including training in Robotic Cardiac Surgery. Dr. Saikat has a very keen interest in developing Thoracoscopic as well as Robotic Cardiac Surgery in Bangladesh.', '1690868256.png', '2023-07-31 23:37:36', '2023-07-31 23:37:36'),
(2, 'Dr. Md. Sultan Sarwar Parvez', '+12345678', 'Associate Consultant, Cardiac Surgery', 'A - 109', 'MBBS, MS (Cardio-Vascular & Thoracic Surgery), FACS (USA)', 'Dr. Md. Sultan Sarwar Parvez has 15 years of experience and skills to perform a wide range Of cardiac surgeries like Beating heart coronary artery bypass surgery (OPCAB', 'Dr. Md. Sultan Sarwar Parvez has 15 years of experience and skills to perform a wide range Of cardiac surgeries like Beating heart coronary artery bypass surgery (OPCAB), Conventional CABG, Valve Replacement (Metalic & Biological)-- Aortic valve replacement (AVR), Mitral valve replacement (MVR), Double valve replacement (DVR), Combined procedure like Coronary artery bypass surgery with valve replacement, Valve replacement with ASD Closure, ASD closure with PDA ligation and others, Total arterial graft bypass surgery, surgical closure of ASD and VSD, PDA ligation, Repair of rupture of aneurysm sinus Valsalva, Cardiac tumors like LA Myxoma, Thymic tumor, coronary artery fistula repair and other cardiac surgical procedures. He also manage vascular diseases like Acute & Chronic Peripheral vascular diseases, Deep vein Thrombosis, Varicose Ulcer, Different techniques of Varicose vein surgery like Flush ligation with stripping, Multiple Phlebectomy, Venaseal procedure, RFA (Radio-Frequency Ablation) procedure, Vascular tumor etc.', '1690872632.jpg', '2023-07-31 23:40:51', '2023-08-01 00:50:32'),
(3, 'Mrs. Sharmin Haque', '+12345678', 'Clinical Psychologist', 'B - 201', 'Msc, M.Phil in Clinical Psychology', 'Mrs. Sharmin Haque Specialty - Clinical Psychologist Degree - Msc, M.Phil in Clinical Psychology  Mrs. Sharmin Haque completed her MSc & M Phil in clinical psychology from University of Dhaka. She has done majority of her training from Department of Clinical Psychology, University of Dhaka and Psychiatric Clinic (New Delia) in India', 'Mrs. Sharmin Haque completed her MSc & M Phil in clinical psychology from University of Dhaka. She has done majority of her training from Department of Clinical Psychology, University of Dhaka and Psychiatric Clinic (New Delia) in India. Before joining Square Hospital, she worked in different hospitals and clinic such as Department of Psychiatry (BSMMU), Headache Clinic (DMCH), Psychiatric Department (SSMCH), Student Guidance and Counseling Centre (TSC), Centre for Rehabilitation of Drug Addiction (CREA), Diabetic Care & Education centre (NHN) and Dhaka Community Hospital.', '1690868536.png', '2023-07-31 23:42:16', '2023-07-31 23:42:16'),
(4, 'ellipsis', '+12345678', 'Associate Consultant- Rheumatology and Internal Medicine', 'B - 202', 'FCPS (Medicine), MRCP (UK), MD (Rheumatology)', 'Dr. Farzana Shumy is a medical graduate from Mymensingh Medical College. She obtained her FCPS in Medicine from Bangladesh College of Physicians & Surgeons and achieved MRCP from Royal Colleges of Physicians of the United Kingdom.', 'Dr. Farzana has worked in the department of medicine in Sir Salimullah Medical College, Mitford hospital, and Dhaka Medical College & Hospital. She later joined the department of internal medicine at Bangabandhu Sheikh Mujib Medical University (BSMMU). She obtained her MD (Rheumatology) from BSMMU and later continued her service at the department of Rheumatology of BSMMU.  She has acquired special training on Musculoskeletal ultrasound and capillaroscopy from the European Union League Against Rheumatism (EULAR) and is one of the few specialists in these advanced procedures in Bangladesh.', '1690872286.jpg', '2023-08-01 00:44:46', '2023-08-01 00:44:46'),
(5, 'Dr. Mosaddeque Ahmed', '+12345678', 'Consultant, Nephrology', 'B - 205', 'MBBS, USMLE, MRCP (UK)', 'Dr. Mosaddeque Ahmed completed his graduation from Sylhet Medical College. After finishing his internship he traveled Zambia for extensive training in medicine from the University Teaching Hospital, Lusaka, Zambia.', 'In 1986, he moved to Saudi Arabia to join King Fahad Hospital, KSA. King Fahad Hospital is a tertiary care hospital and medical college in Madina province which dialysis centre is one of the largest centers in the Middle East with a capacity of 450 patients on dialysis. Dr. Mosaddeque was actively involved in kidney transplantation program in King Fahad Hospital. He was awarded BCLS certificate from CPR Training Center, Madina (in affiliation with Saudi & American Heart Association). Lately he worked as Associate Professor in the department of Nephrology of Uttara Adhunik Medical College Hospital, Dhaka.  Dr. Mosaddeque completed MRCP degree from the Royal College', '1690872791.JPG', '2023-08-01 00:53:11', '2023-08-01 00:53:11'),
(6, 'Dr. AKM Abu Mottaleb', '+12345678', 'Associate Consultant, Nephrology', 'B - 106', 'MBBS, MSc in Nephrology (UK)', 'Dr. AKM Abu Mottaleb graduated from Rangpur Medical College and after his Internship year he worked as Medical Officer in Dhaka Renal Centre & General Hospital. Later he joined as Assistant Registrar (Nephrology) in Medical College for Women and Hospital, Uttara and established a new dialysis unit. In 2003 he started serving as Assistant Registrar of Haemodialysis Unit at BIRDEM,', 'Dr. Abu Mottaleb started serving Square Hospitals Ltd. since 2008. He has wide experience in different modalities of Renal Replacement Therapy. He was awarded MMedSci in Nephrology from University of Sheffield, United Kingdom in 2010. He has completed thesis works on “Critical appraisal on the literature based on incidence and prevalence of Chronic Kidney Disease among general population”. He is also expert in general and interventional Nephrology. He is doing successfully all nephrology procedures like Real Time Kidney Biopsy, Dialysis catheter insertion including Tunnel Permcath, IPD catheter insertion etc.  Dr. Mottaleb participated in many scientific seminar and international nephrology conference at home and in the abroad. He presented several scientific papers in the Sheffield Kidney Institute, United Kingdom. He is a life member of Bangladesh Society of Peritoneal Dialysis.', '1690872910.jpg', '2023-08-01 00:55:10', '2023-08-01 00:55:10'),
(7, 'Dr. Tanny Tarafder', '+12345678', 'Associate Consultant - Department of Surgery', 'B - 206', 'MBBS, FCPS (Surgery), MRCS (UK)', 'Dr. Tanny Tarafder graduated from Sir Salimullah Medical College, Dhaka. She pursued her career in Surgery and completed her surgical training in Mitford Hospital and Dhaka Medical College Hospital. She has been awarded Fellowship (FCPS, Surgery) by BCPS (Bangladesh College of', 'Physicians and Surgeons). To further increase her knowledge, she availed Membership (MRCS) of Royal College of Surgeons, UK.   She  has considerable experience and expertise in General Surgery, especially in the areas of Breast and Colorectal diseases, hernia and laparoscopic   surgery. She is keen to modernizing the current surgical practice in our country by utilizing the latest protocols of diagnosis and surgical/nonsurgical management of diseases. She keeps herself updated by attaining', '1690873061.png', '2023-08-01 00:57:41', '2023-08-01 00:57:41'),
(8, 'Dr. A M Rejaus Satter', '+12345678', 'Consultant, Neurosurgery', 'B - 207', 'MBBS, FCPS (Surgery), MS (Neurosurgery)', 'Dr. A M Rejaus Satter is a physician specializing in Neuro Surgery. At Square Hospital, he has been an active team member who has helped to develop a center excelling at endoscopic pituitary surgery, aneurysm surgery, complex brain tumor surgery, minimally invasive spine surgery and other intricate brain surgeries; in the private sector of Bangladesh within a very short period of time.', 'Completing his MBBS from Mymensingh Medical College, Dr. Reja entered into Post graduation and earned FCPS in General Surgery. Shortly after, he pursued his lifelong dream of becoming a Neuro Surgeon when he entered MS (Neuro surgery) course and obtained Masters Degree. He was trained and supervised by the best Neuro Scientists and Neuro Surgeons of both Bangladesh and India. Today, as Consultant Neuro and Spine surgeon of Square Hospital, he performed thousands of complex Neuro surgery in past years with lowest complication rates compared to the rest of the country and also some other countries.', '1690873294.jpg', '2023-08-01 01:01:34', '2023-08-01 01:01:34'),
(9, 'Prof. Dr. Md. Hasan Masud', '+12345678', 'Senior Consultant– Gastroenterology', 'C - 301', 'MBBS, MD (Gastroenterology)', 'Prof. Dr. Md. Hasan Masud, MBBS, MD (Gastroenterology)) is a medical graduate of Sher-e-Bangla Medical College, Barisal.  After graduation he served in several reputed hospitals across the country and became Professor in the department of Gastroenterology at Bangabandhu Sheikh Mujib Medical University (BSMMU). Moreover 20 years of experience in the field of gastroenterology shapes him as an expert and very dependable gastroenterologist.', 'In his successful carrier he gains wide range of advanced trainings and has taken special training in Interventional Gastroenterology from National University, Singapore. He performs all types of endoscopic procedures as he grooms himself with the 3rd space endoscopy training from Global Hospital, Mumbai, India and in therapeutic endoscopic ultrasound training from Shanghai, China. He has more than 50 publications both in international and national levels.', '1690873431.jpg', '2023-08-01 01:03:51', '2023-08-01 01:03:51');

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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(19, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2023_07_20_043947_create_doctors_table', 1),
(23, '2023_07_20_171724_create_appointments_table', 1),
(24, '2023_07_27_163847_create_notifications_table', 1),
(25, '2023_07_31_052647_create_patients_table', 1),
(26, '2023_07_31_181128_create_specialities_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jalal', 'jalal@gmail.com', NULL, '$2y$10$Wzmxzx6IOm3BzOU1znPxrOUZlhlTCUKTf3v9FBkGNZmnphhbaGN3a', NULL, NULL, NULL, 1, NULL, '2023-07-31 23:22:04', '2023-07-31 23:22:04'),
(2, 'mohim', 'mohim@gmail.com', NULL, '$2y$10$bUJR0qQGnYMMn2VJc7ZtXukL8z1VMEMGP.Fn5T7l0RBa3uDV0UCyG', NULL, NULL, NULL, 2, NULL, '2023-07-31 23:23:52', '2023-07-31 23:23:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_patient_id_foreign` (`patient_id`),
  ADD KEY `patients_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patients_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
