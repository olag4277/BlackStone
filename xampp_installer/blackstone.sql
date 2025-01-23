-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2025 at 02:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blackstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `web` text DEFAULT NULL,
  `dominio_correo` text DEFAULT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `web`, `dominio_correo`, `logo`) VALUES
(1, 'Royal Tech', 'https://royaltech.com', NULL, 'logos_clientes/logo_example.png');

-- --------------------------------------------------------

--
-- Table structure for table `informes`
--

CREATE TABLE `informes` (
  `id` int(11) NOT NULL,
  `nombre_doc` varchar(255) DEFAULT NULL,
  `id_empresa_auditada` int(11) DEFAULT NULL,
  `vulnerabilidades` text DEFAULT NULL,
  `estado` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `recomendaciones` text DEFAULT NULL,
  `propuestas` text DEFAULT NULL,
  `conclusiones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `informes`
--

INSERT INTO `informes` (`id`, `nombre_doc`, `id_empresa_auditada`, `vulnerabilidades`, `estado`, `fecha`, `recomendaciones`, `propuestas`, `conclusiones`) VALUES
(2, 'Pentesting Royal Tech', 1, NULL, 'En proceso', '2023-08-03', NULL, NULL, 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n\r\n<br><br>\r\n\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `pocs`
--

CREATE TABLE `pocs` (
  `id` int(11) NOT NULL,
  `ruta` text DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `id_scope_vulnerabilidad` int(11) DEFAULT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pocs`
--

INSERT INTO `pocs` (`id`, `ruta`, `descripcion`, `id_scope_vulnerabilidad`, `orden`) VALUES
(2, 'elementos_poc/64cbe79c76423_5.png', NULL, 5, 1),
(3, 'elementos_poc/64cbe8e4a4794_6.png', NULL, 6, 1),
(4, 'elementos_poc/64cbe922de8b3_7.png', NULL, 7, 1),
(5, 'elementos_poc/64cbe987605b2_8.png', NULL, 8, 1),
(6, 'elementos_poc/64cbe9c2806e9_9.png', NULL, 9, 1),
(7, 'elementos_poc/64cbea32237a6_12.png', NULL, 12, 1),
(8, 'elementos_poc/64cbea5b4736f_13.png', NULL, 13, 1),
(9, 'elementos_poc/64cbeb0591386_17.png', NULL, 17, 1),
(10, 'elementos_poc/64cbfc357495b_10.webp', NULL, 10, 1),
(11, 'elementos_poc/64cbfc68a1091_14.png', NULL, 14, 1),
(12, 'elementos_poc/64cbfcc8c3603_15.png', NULL, 15, 1),
(17, 'elementos_poc/656e31a8e4ad3_4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1),
(18, 'elementos_poc/656e3dfa6c473_4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE `scope` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `id_informe` int(11) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`id`, `url`, `id_informe`, `orden`) VALUES
(15, 'royaltech.com', 2, 1),
(16, 'subdomain.royaltech.com', 2, 2),
(17, '192.168.0.1 - DC', 2, 3),
(18, '192.168.0.15 - Server', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scope_vulnerabilidades`
--

CREATE TABLE `scope_vulnerabilidades` (
  `id_vulnerabilidad` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `nivel` double(10,1) NOT NULL,
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `id_scope` int(11) NOT NULL,
  `solucion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scope_vulnerabilidades`
--

INSERT INTO `scope_vulnerabilidades` (`id_vulnerabilidad`, `descripcion`, `nivel`, `id`, `nombre`, `id_scope`, `solucion`) VALUES
(5, 'Allows attackers to execute malicious SQL queries.', 4.0, 1, 'SQL Injection', 5, 'Use prepared statements and parameterized queries.'),
(5, 'Allows attackers to execute malicious SQL queries.', 4.0, 2, 'SQL Injection', 11, 'Use prepared statements and parameterized queries.'),
(5, 'Allows attackers to execute malicious SQL queries.', 4.0, 3, 'SQL Injection', 12, 'Use prepared statements and parameterized queries.'),
(5, 'Allows attackers to execute malicious SQL queries.', 4.0, 4, 'SQL Injection', 15, 'Use prepared statements and parameterized queries.'),
(6, 'Enables attackers to inject malicious scripts into web pages.', 3.0, 5, 'Cross-Site Scripting (XSS)', 15, 'Implement proper input validation and output encoding.'),
(10, 'Tricks users into unknowingly executing unwanted actions.', 3.0, 6, 'Cross-Site Request Forgery (CSRF)', 15, 'Use CSRF tokens and implement the PRG pattern.'),
(14, 'Enables attackers to include and execute arbitrary files.', 3.0, 7, 'File Inclusion Vulnerabilities', 15, 'Avoid using user-supplied input in file inclusion paths.'),
(18, 'Enables attackers to execute arbitrary system commands.', 3.0, 8, 'Command Injection', 16, 'Implement proper input validation and use safe APIs to execute commands.'),
(22, 'Weak authentication mechanisms that can be easily bypassed.', 3.0, 9, 'Insecure Authentication', 16, 'Use strong password policies, implement multi-factor authentication.'),
(26, 'Allows attackers to include and execute remote files.', 4.0, 10, 'Remote File Inclusion (RFI)', 16, 'Avoid using user-supplied input in file inclusion paths.'),
(97, 'Allows attackers to extract service account hashes from the domain controller.', 4.0, 12, 'Kerberoasting', 17, 'Limit user and service accounts with sensitive privileges, and use strong service account passwords.'),
(98, 'Allows attackers to use stolen Kerberos tickets to gain unauthorized access.', 4.0, 13, 'Pass-the-Ticket (PtT) Attack', 17, 'Regularly rotate Kerberos tickets, limit user privileges, and implement account logon restrictions.'),
(99, 'Allows attackers to forge Kerberos tickets to gain unauthorized access.', 4.0, 14, 'Golden Ticket Attack', 17, 'Regularly rotate domain controller KRBTGT password and monitor for suspicious activity.'),
(82, 'Allows unauthorized access to certain functionalities or resources.', 2.0, 15, 'Insufficient Authorization', 18, 'Implement proper access controls and authorization mechanisms.'),
(137, 'Exposes sensitive information about AD objects.', 3.0, 17, 'Active Directory Information Disclosure', 18, 'Control access to AD information and limit the information exposed to users.');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `contra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contra`) VALUES
(1, 'blackstone', '$2y$10$eWlAFAHveUj4.WGy/2xCuOWXYAaVHe6PU3C8PN/reEdKQU69QRDlC');

-- --------------------------------------------------------

--
-- Table structure for table `vulnerabilidades`
--

CREATE TABLE `vulnerabilidades` (
  `id` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `solucion` text DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vulnerabilidades`
--

INSERT INTO `vulnerabilidades` (`id`, `descripcion`, `solucion`, `nivel`, `nombre`) VALUES
(5, 'Allows attackers to execute malicious SQL queries.', 'Use prepared statements and parameterized queries.', 4, 'SQL Injection'),
(6, 'Enables attackers to inject malicious scripts into web pages.', 'Implement proper input validation and output encoding.', 3, 'Cross-Site Scripting (XSS)'),
(7, 'Allows attackers to execute code on a remote server.', 'Keep software and libraries up-to-date, use a Web Application Firewall.', 4, 'Remote Code Execution (RCE)'),
(8, 'Exposes sensitive information like passwords or credit card details.', 'Encrypt sensitive data, use secure communication protocols.', 2, 'Sensitive Data Exposure'),
(9, 'Allows attackers to access unauthorized resources.', 'Implement proper access controls and authentication mechanisms.', 2, 'Insecure Direct Object References'),
(10, 'Tricks users into unknowingly executing unwanted actions.', 'Use CSRF tokens and implement the PRG pattern.', 3, 'Cross-Site Request Forgery (CSRF)'),
(11, 'Allows attackers to make requests from the server to internal resources.', 'Validate and sanitize user-supplied URLs, restrict access to trusted domains.', 4, 'Server-Side Request Forgery (SSRF)'),
(12, 'Attempts to guess passwords or encryption keys.', 'Enforce account lockouts, use strong and complex passwords.', 2, 'Brute Force Attack'),
(13, 'Allows attackers to redirect users to malicious websites.', 'Avoid using user-supplied input in redirect URLs.', 3, 'Unvalidated Redirects and Forwards'),
(14, 'Enables attackers to include and execute arbitrary files.', 'Avoid using user-supplied input in file inclusion paths.', 3, 'File Inclusion Vulnerabilities'),
(15, 'Allows attackers to execute arbitrary code during deserialization.', 'Validate and sanitize serialized data, use secure serialization formats.', 4, 'Insecure Deserialization'),
(16, 'Enables attackers to execute malicious code within server-side templates.', 'Avoid using user input directly in templates, sanitize and validate template data.', 4, 'Server-Side Template Injection (SSTI)'),
(17, 'Allows attackers to read sensitive data and perform denial-of-service attacks.', 'Disable external entity parsing, use safer data formats like JSON.', 3, 'XML External Entity (XXE) Injection'),
(18, 'Enables attackers to execute arbitrary system commands.', 'Implement proper input validation and use safe APIs to execute commands.', 3, 'Command Injection'),
(19, 'Occurs when security settings are not properly configured.', 'Follow security best practices, keep software and services up-to-date.', 2, 'Security Misconfiguration'),
(20, 'Exposes sensitive data and allows unauthorized access.', 'Use authentication and authorization mechanisms for APIs.', 2, 'Unsecured APIs'),
(21, 'Allows unauthorized websites to make requests to a server.', 'Configure CORS headers properly to restrict cross-origin requests.', 2, 'Cross-Origin Resource Sharing (CORS) Misconfiguration'),
(22, 'Weak authentication mechanisms that can be easily bypassed.', 'Use strong password policies, implement multi-factor authentication.', 3, 'Insecure Authentication'),
(23, 'Allows attackers to access unauthorized resources by manipulating object references.', 'Use indirect object references and implement proper access controls.', 3, 'Insecure Direct Object References (IDOR)'),
(26, 'Allows attackers to include and execute remote files.', 'Avoid using user-supplied input in file inclusion paths.', 4, 'Remote File Inclusion (RFI)'),
(27, 'Tricks users into clicking on hidden malicious elements.', 'Implement X-Frame-Options or Content Security Policy (CSP) headers.', 3, 'Clickjacking'),
(28, 'Exposes sensitive data due to weak encryption or configuration.', 'Use strong TLS versions and cipher suites, obtain SSL certificates from trusted sources.', 3, 'Insufficient Transport Layer Security (TLS)'),
(30, 'Allows attackers to set a user\'s session ID and hijack their session.', 'Generate a new session ID on login and invalidate the old one.', 3, 'Session Fixation'),
(31, 'Stores sensitive data with weak or no encryption.', 'Use strong encryption algorithms and salt passwords before hashing.', 3, 'Insecure Cryptographic Storage'),
(32, 'Allows attackers to inject malicious headers in requests.', 'Sanitize user-supplied input and validate HTTP headers.', 2, 'HTTP Header Injection'),
(33, 'Enables attackers to manipulate LDAP queries.', 'Use parameterized LDAP queries and escape user input.', 3, 'LDAP Injection'),
(65, 'Allows attackers to include external scripts in a victim\'s page.', 'Sanitize and validate untrusted data before including scripts.', 3, 'Cross-Site Script Inclusion (XSSI)'),
(66, 'Enables attackers to execute commands on the server through SSI directives.', 'Avoid using user-supplied input in SSI directives.', 3, 'Server-Side Include (SSI) Injection'),
(67, 'Allows attackers to upload malicious files to a server.', 'Implement file type validation and use secure file upload mechanisms.', 3, 'Remote File Upload Vulnerability'),
(68, 'Exploits flaws in the application\'s logic to perform unauthorized actions.', 'Implement proper access controls and validation in business logic.', 2, 'Business Logic Vulnerabilities'),
(69, 'Occurs when multiple processes access shared resources concurrently.', 'Use locks and synchronization mechanisms to prevent race conditions.', 3, 'Race Condition Vulnerability'),
(70, 'Allows attackers to access files outside the intended directory.', 'Sanitize and validate user input to prevent directory traversal.', 3, 'Directory Traversal'),
(71, 'Allows attackers to manipulate serialized objects to execute code.', 'Use secure serialization methods and validate serialized data.', 4, 'Insecure Object Serialization'),
(72, 'Enables attackers to inject and execute malicious code within an application.', 'Avoid executing user-supplied code and validate input thoroughly.', 4, 'Code Injection'),
(73, 'Allows attackers to take over a user\'s session.', 'Use secure session management techniques and enforce secure cookie attributes.', 4, 'Session Hijacking'),
(74, 'Overwhelms a system or service to make it unavailable to users.', 'Implement rate limiting, input validation, and monitoring to prevent DoS attacks.', 4, 'Denial-of-Service (DoS)'),
(75, 'Refers to an unknown and unpatched vulnerability exploited by attackers.', 'Stay updated with security patches and monitor security communities for emerging threats.', 4, 'Zero-Day Vulnerability'),
(76, 'Allows attackers to access files and directories outside the web root.', 'Sanitize and validate user input to prevent path traversal attacks.', 3, 'Path Traversal'),
(78, 'Enables attackers to bypass security restrictions in web browsers.', 'Properly configure CORS headers and validate user input.', 3, 'Insecure Cross-Origin Resource Sharing (CORS)'),
(79, 'Intercepts and alters communication between two parties.', 'Use secure communication protocols like HTTPS and SSL/TLS certificates.', 4, 'Man-in-the-Middle (MitM) Attack'),
(80, 'Exploits weaknesses in OAuth and OpenID Connect implementations.', 'Follow security best practices for OAuth and OpenID Connect integration.', 3, 'OAuth and OpenID Connect Vulnerabilities'),
(81, 'Allows attackers to overwrite adjacent memory areas.', 'Use secure coding practices and bounds-checking to prevent buffer overflow.', 4, 'Buffer Overflow'),
(82, 'Allows unauthorized access to certain functionalities or resources.', 'Implement proper access controls and authorization mechanisms.', 2, 'Insufficient Authorization'),
(83, 'Allows attackers to execute unintended searches on a website.', 'Sanitize user search queries and use safe search APIs.', 2, 'Insecure Cross-Site Search (XS-Search)'),
(84, 'Enables attackers to upload and execute malicious files on a server.', 'Use secure file upload mechanisms and scan uploaded files for malware.', 4, 'Malicious File Execution'),
(85, 'Allows attackers to hijack an active session after a user logs out.', 'Set a short and properly configured session timeout period.', 2, 'Session Timeout Vulnerability'),
(86, 'Enables attackers to make requests from the server to internal resources.', 'Validate and sanitize user-supplied URLs, restrict access to trusted domains.', 4, 'Server-Side Requess Forgery (SSRF)'),
(87, 'Allows attackers to inject and execute JavaScript code in a victim\'s browser.', 'Sanitize and validate untrusted data before executing JavaScript code.', 3, 'JavaScript Code Injection'),
(89, 'Allows attackers to inject malicious content into email headers.', 'Sanitize and validate user-supplied input before adding to email headers.', 3, 'Email Header Injection'),
(91, 'Exposes sensitive information to unauthorized users.', 'Ensure error messages and logs don\'t reveal sensitive data.', 2, 'Information Leakage'),
(92, 'Allows attackers to manipulate URL or POST parameters.', 'Validate and sanitize input, and prevent duplicate parameters.', 3, 'HTTP Parameter Pollution (HPP)'),
(96, 'Allows attackers to easily guess or brute-force passwords.', 'Enforce strong password policies and implement multi-factor authentication.', 3, 'Weak Password Policy'),
(97, 'Allows attackers to extract service account hashes from the domain controller.', 'Limit user and service accounts with sensitive privileges, and use strong service account passwords.', 4, 'Kerberoasting'),
(98, 'Allows attackers to use stolen Kerberos tickets to gain unauthorized access.', 'Regularly rotate Kerberos tickets, limit user privileges, and implement account logon restrictions.', 4, 'Pass-the-Ticket (PtT) Attack'),
(99, 'Allows attackers to forge Kerberos tickets to gain unauthorized access.', 'Regularly rotate domain controller KRBTGT password and monitor for suspicious activity.', 4, 'Golden Ticket Attack'),
(100, 'Allows attackers to forge service tickets to gain unauthorized access.', 'Monitor for unusual service ticket usage and limit unnecessary user privileges.', 4, 'Silver Ticket Attack'),
(101, 'Allows attackers to use stolen password hashes to access network resources.', 'Implement Credential Guard and use strong encryption algorithms for password storage.', 4, 'Overpass-the-Hash (Pass-the-Key) Attack'),
(102, 'Allows unauthorized users to access sensitive objects in AD.', 'Regularly review and tighten ACLs to enforce least privilege.', 3, 'Weak ACLs (Access Control Lists)'),
(103, 'Exploits known security flaws in AD components.', 'Stay up-to-date with security patches and follow best practices for patch management.', 3, 'Unpatched Vulnerabilities'),
(104, 'Allows attackers to gain higher privileges than assigned.', 'Regularly review and audit privileged user accounts and groups.', 3, 'Privilege Escalation'),
(105, 'Overwhelms domain controllers to disrupt AD services.', 'Implement network and system monitoring to detect DoS attacks and mitigate them.', 4, 'Domain Controller DoS Attack'),
(106, 'Allows attackers from one domain to access resources in another.', 'Regularly review and validate trust relationships between domains.', 3, 'Insecure Trust Relationships'),
(107, 'Allows unauthorized access to AD backup files.', 'Securely store and restrict access to AD backup files and follow proper backup procedures.', 2, 'Backup Data Exposure'),
(108, 'Exposes sensitive AD information to unauthorized users.', 'Ensure error messages and logs don\'t reveal sensitive data, and restrict access to sensitive information.', 3, 'Sensitive Information Leakage'),
(109, 'Allows unauthorized access to DNS zone data.', 'Limit zone transfer permissions and configure firewalls to block unauthorized requests.', 3, 'DNS Zone Transfer Vulnerability'),
(110, 'Abuse of privileged accounts for unauthorized activities.', 'Monitor and audit privileged user activities and enforce least privilege.', 4, 'Privileged User Account Misuse'),
(111, 'Allows users to join unauthorized groups and escalate privileges.', 'Control group membership and enforce separation of duties.', 3, 'Unrestricted Group Membership'),
(112, 'Allows attackers to use accounts of former employees or inactive users.', 'Implement an account lifecycle management process and disable or delete stale accounts.', 2, 'Stale User Accounts'),
(113, 'Causes inconsistencies and data corruption between domain controllers.', 'Monitor and maintain AD replication health, and ensure network connectivity between DCs.', 3, 'AD Replication Issues'),
(114, 'Allows attackers to retain access rights from previous domains.', 'Limit SID history usage and carefully manage cross-forest trusts.', 4, 'Security Identifier (SID) History Vulnerability'),
(115, 'Allows unauthorized changes to AD settings through GPOs.', 'Audit and secure GPO settings and restrict access to GPO management.', 3, 'Group Policy Object (GPO) Misconfiguration'),
(116, 'Allows unauthorized users to modify AD objects through incorrect delegation settings.', 'Review and enforce proper delegation settings and limit excessive permissions.', 3, 'AD Delegation Misconfiguration'),
(117, 'Exposes sensitive AD data during LDAP communication.', 'Enable LDAPS (LDAP over SSL/TLS) and use trusted certificates.', 3, 'Insecure LDAPS Configuration'),
(118, 'Allows attackers to discover valid AD accounts through enumeration.', 'Implement account lockout policies and avoid revealing account existence in login error messages.', 2, 'AD Account Enumeration'),
(119, 'Allows unauthorized access to AD database files.', 'Encrypt AD database files and ensure secure file permissions.', 3, 'AD Database Encryption Misconfiguration'),
(120, 'Allows unauthorized SID spoofing from trusted domains.', 'Enable SID filtering on trust relationships to prevent SID spoofing.', 3, 'SID Filtering Vulnerability'),
(121, 'Allows unauthorized access to AD LDS data.', 'Securely configure AD LDS instances and restrict access to sensitive data.', 3, 'AD Lightweight Directory Services (AD LDS) Misconfiguration'),
(122, 'Allows attackers to forge authentication tokens for unauthorized access.', 'Use secure token generation mechanisms and implement token expiration.', 3, 'Forged Authentication Tokens'),
(123, 'Exploits weaknesses in AD FS implementations.', 'Stay updated with AD FS patches and follow security best practices.', 3, 'AD Federated Services (AD FS) Vulnerabilities'),
(124, 'Allows attackers to impersonate network printers.', 'Securely configure network printers and restrict access to trusted users.', 3, 'Printer Spoofing'),
(125, 'Allows attackers to reuse cached AD credentials for unauthorized access.', 'Use Credential Guard and enforce regular password changes.', 4, 'Pass-the-Cache (PtC) Attack'),
(126, 'Allows recovery of deleted objects by unauthorized users.', 'Enable and properly configure the AD Recycle Bin feature.', 3, 'AD Recycle Bin Misconfiguration'),
(127, 'Allows unauthorized access to AD administration.', 'Use strong passwords for administrative accounts and limit their usage.', 3, 'Unsecured Active Directory Administrative Accounts'),
(128, 'Allows unauthorized users to gain excessive privileges.', 'Review and control memberships in privileged groups regularly.', 3, 'Privileged Group Mismanagement'),
(129, 'Exposes sensitive information and services on domain controllers.', 'Limit exposure of sensitive services on domain controllers.', 3, 'Unprotected Domain Controller Services'),
(130, 'Allows unauthorized modification of AD schema objects.', 'Restrict schema modification to authorized personnel only.', 4, 'Weak AD Schema Security'),
(131, 'Exposes sensitive data like passwords in GPO settings.', 'Remove sensitive information from Group Policy Preferences and use Group Policy Security Filtering.', 3, 'Insecure Group Policy Preferences'),
(132, 'Allows attackers to redirect DNS queries to malicious addresses.', 'Implement DNSSEC and regularly monitor DNS cache health.', 4, 'DNS Cache Poisoning'),
(133, 'Allows unauthorized access to remote systems.', 'Enable WinRM securely and limit access to trusted hosts.', 3, 'Windows Remote Management (WinRM) Misconfiguration'),
(134, 'Allows unauthorized access between trusting domains.', 'Regularly review and secure trust relationships between domains.', 3, 'Insecure AD Trust Relationships'),
(135, 'Allows attackers to gather sensitive AD data.', 'Limit access to LDAP queries and implement filters.', 3, 'Unrestricted LDAP Queries'),
(136, 'Allows unauthorized modification of DNS records.', 'Restrict access to DNS management and monitor DNS changes.', 3, 'AD Integrated DNS Misconfiguration'),
(137, 'Exposes sensitive information about AD objects.', 'Control access to AD information and limit the information exposed to users.', 3, 'Active Directory Information Disclosure'),
(138, 'Allows attackers to brute-force Kerberos tickets.', 'Enable Kerberos pre-authentication and enforce strong passwords.', 4, 'Kerberos Pre-Authentication Vulnerabilities'),
(139, 'Allows attackers to extract password hashes from memory.', 'Implement Credential Guard and protect sensitive memory areas.', 4, 'Password Hash Overpassing'),
(140, 'Allows attackers to use inactive accounts for malicious purposes.', 'Regularly perform AD cleanup and disable or delete unused accounts.', 2, 'Stale or Unused AD Objects'),
(141, 'Exposes AD data during backup and restore operations.', 'Securely handle AD backup files and ensure proper encryption.', 3, 'Insecure Backup and Restore Processes'),
(142, 'Allows attackers to gather information about trusted domains.', 'Minimize trust relationships and limit information exposure.', 2, 'AD Trust Enumeration'),
(143, 'Allows attackers to abuse GPO settings for unauthorized changes.', 'Secure GPOs and enforce strong password policies on GPO accounts.', 3, 'Group Policy Vulnerabilities'),
(144, 'Allows attackers to reuse intercepted Kerberos tickets.', 'Use time constraints on Kerberos tickets to limit their validity period.', 4, 'Kerberos Ticket Replay Attack'),
(145, 'Allows unauthorized access to AD data without authentication.', 'Require authentication for LDAP binding to AD.', 3, 'Unauthenticated LDAP Binding'),
(146, 'Allows attackers to sniff credentials in the network.', 'Encrypt network traffic and use secure protocols for authentication.', 4, 'Remote Credential Sniffing'),
(147, 'Allows unauthorized users to modify or delete AD objects.', 'Regularly review and tighten permissions on AD objects.', 3, 'Insecure AD Object Permissions'),
(148, 'Causes replication inconsistencies between domain controllers.', 'Monitor and maintain AD replication health and resolve synchronization issues.', 3, 'Domain Controller Synchronization Issues'),
(149, 'Allows unauthorized issuance of digital certificates.', 'Secure and monitor Certificate Authority services and maintain strong certificate policies.', 4, 'Certificate Authority Vulnerabilities'),
(150, 'Allows unauthorized access to AD partitions.', 'Control access to AD partitions and implement proper partition security.', 3, 'AD Partition Misconfiguration'),
(151, 'Allows unauthorized or unmanaged AD deployments.', 'Enforce policies for AD deployments and monitor for shadow IT.', 2, 'Shadow IT in AD'),
(152, 'Allows attackers to impersonate other users or applications.', 'Implement proper token security and validate token authenticity.', 4, 'Token Impersonation Vulnerability'),
(153, 'Allows attackers to evade detection by tampering with audit logs.', 'Securely configure and protect AD audit settings.', 3, 'Abuse of Privileged Auditing'),
(154, 'Allows unauthorized modifications of DNS records.', 'Restrict dynamic DNS updates and monitor DNS changes.', 3, 'DNS Dynamic Update Vulnerability'),
(155, 'Allows attackers to access and manipulate AD data offline.', 'Secure physical access to domain controllers and encrypt sensitive data.', 4, 'Domain Controller Theft'),
(156, 'Allows attackers to steal and abuse stored credentials.', 'Securely store credentials and use secure credential management solutions.', 3, 'Untrusted Credential Storage'),
(157, 'Permite a los atacantes ejecutar consultas SQL maliciosas.', 'Usar declaraciones preparadas y consultas parametrizadas.', 4, 'Inyección SQL'),
(158, 'Permite a los atacantes inyectar scripts maliciosos dentro de páginas web.', 'Implementar una validación de entrada y codificación de salida adecuada.', 3, 'Cross-Site Scripting (XSS)'),
(159, 'Permite a los atacantes ejecutar código en un servidor remoto.', 'Mantener el software y las bibliotecas actualizadas, usar un cortafuegos para las aplicaciones web.', 4, 'Ejecución remota de código (RCE)'),
(160, 'Expone información sensible como contraseñas o detalles de las tarjetas de crédito.', 'Encriptar datos sensibles, usar protocolos de comunicación seguros.', 2, 'Exposición de datos sensibles'),
(161, 'Permite a los atacantes acceder a recursos no autorizados.', 'Implementar mecanismos para el control de accesos y de autenticación adecuados.', 2, 'Referencias a objetos directos inseguros'),
(162, 'Engaña a los usuarios ejecutando acciones no deseadas sin su conocimiento.', 'Usar tokens CSRF e implementar un patrón PRG.', 3, 'Cross-Site Request Forgery (CSRF)'),
(163, 'Permite a los atacantes hacer peticiones desde el servidor a recursos internos.', 'Validar y desinfectar URLs proporcionadas por el usuario, restringir el acceso solo a dominios de confianza.', 4, 'Server-Side Request Forgery (SSRF)'),
(164, 'Intenta adivinar las contraseñas o claves encriptadas.', 'Emplear bloqueos de cuentas, usar contraseñas fuertes y complejas.', 2, 'Ataque de Fuerza Bruta'),
(165, 'Permite a los atacantes redirigir a los usuarios a sitios web maliciosos.', 'Evitar el uso de entradas proporcionadas por el usuario en las URLs de redireccionamiento.', 3, 'Redireccionamientos y reenvíos no validados'),
(166, 'Permite a los atacantes incluir y ejecutar archivos arbitrarios.', 'Evitar el uso de entradas proporcionadas por el usuario en las rutas de inclusión de archivos.', 3, 'Vulnerabilidades de inclusión de archivos'),
(167, 'Permite a los atacantes ejecutar código arbitrario durante la deserialización.', 'Validar y desinfectar datos serializados, usa formatos de serialización seguros.', 4, 'Deserialización insegura'),
(168, 'Permite a los atacantes ejecutar código malicioso en las plantillas del lado del servidor.', 'Evitar usar directamente la entrada en las plantillas por el usuario, desinfecta y valida los datos de la plantilla.', 4, 'Server-Side Template Inyección (SSTI)'),
(169, 'Permite a los atacantes leer datos confidenciales y llevar a cabo ataques de denegación de servicio.', 'Deshabilitar el análisis de entidades externas, usar formatos de datos más seguros como JSON', 3, 'XML External Entity (XXE) Inyección'),
(170, 'Permite a los atacantes ejecutar comandos en el sistema arbitrariamente.', 'Implementar una adecuada validación de entrada y utilizar APIs seguras para ejeutar los comandos.', 3, 'Inyección de comandos'),
(171, 'Ocurre cuando las opciones de seguridad no han sido correctamente configuradas.', 'Seguir las mejores prácticas de seguridad, mantener el software y los servicios actualizados.', 2, 'Configuración incorrecta de seguridad'),
(172, 'Expone datos sensibles y permite el acceso no autorizado.', 'Usar mecanismos de autentificación y de autorización para APIs.', 2, 'APIs inseguras'),
(173, 'Permite que sitios web no autorizados puedan hacer peticiones al servidor.', 'Configurar los envabezados CORS correctamente para restringir peticiones de tipo cross-origin.', 2, 'Configuración incorrecta de Cross-Origin Resource Sharing (CORS)'),
(174, 'Los mecanismos de autentificación pueden ser facilmente bypaseados.', 'Usar políticas de contraseñas robustas, implementar un sistema de autentificación multi-factor.', 3, 'Autentificación insegura'),
(175, 'Permite a los atacantes acceder a recursos no autorizados mediante la manipulación de referencias a objetos', 'Usar referencias indirectas a objetos e implementar controles de acceso adecuados', 3, 'Referencias directas a objetos inseguras (IDOR)'),
(176, 'Permite a los atacantes incluir y ejecutar archivos remotos.', 'Evitar el uso de entradas proporcionadas por el usuario en las rutas de inclusión de archivos.', 4, 'Remote File Inclusion (RFI)'),
(177, 'Engaña a los usuarios para que hagan clic en elementos maliciosos ocultos.', 'Implementar las opciones de X-Frame-Options or Content Security Policy (CSP) en las cabeceras.', 3, 'Clickjacking'),
(178, 'Expone datos sensibles como consecuencia de un encriptado y/o configuración débil.', 'Usar versiones fuertes de TLS y conjuntos de cifrado, obtener certificados SSL que provengan de entidades confiables.', 3, 'Seguridad insuficiente en la Capa de Transporte (TLS)'),
(179, 'Permite a los atacantes configurar y secuestrar la sesión de un usuario.', 'Generar una nueva ID de sesión al iniciar sesión e invalidar la anterior.', 3, 'Fijación de sesión'),
(180, 'Almacena datos confidenciales con encriptación débil o sin ella', 'Usar algoritmos de encriptación fuertes y contraseñas de bits aleatorios antes del hashing', 3, 'Almacenamiento criptográfico inseguro'),
(181, 'Permite a los atacantes inyectar encabezados maliciosos en las solicitudes', 'Desinfectar la entrada proporcionada por el usuario y validar previamente los encabezados HTTP', 2, 'Inyección de encabezado HTTP'),
(182, 'Permite a los atacantes manipular consultas LDAP', 'Usar consultas LDAP parametrizadas y escapar las entradas proporcionadas por el usuario', 3, 'Inyección LDAP'),
(183, 'Permite a los atacantes incluir secuencias de comandos externas en la página objetivo de la víctima', 'Desinfectar y validar los datos no confiables antes de incluir secuencias de comandos', 3, 'Inclusión de secuencias de comandos entre sitios (XSSI)'),
(184, 'Permite a los atacantes ejecutar comandos en el servidor a través de las directivas SSI', 'Evitar el uso de entradas proporcionadas por el usuario en directivas SSI', 3, 'Inyección de inclusión del lado del servidor (SSI)'),
(185, 'Permite que los atacantes carguen archivos maliciosos en un servidor', 'Validar el tipo de archivo cargado y usar mecanismos seguros para la carga de archivos', 3, 'Vulnerabilidad de carga remota de archivos'),
(186, 'Explota fallas en la lógica de la aplicación para realizar acciones no autorizadas', 'Implementar controles de acceso adecuados y validación en la lógica de negocios', 2, 'Vulnerabilidades de la lógica de negocios'),
(187, 'Ocurre cuando varios procesos acceden a recursos compartidos simultáneamente', 'Usar bloqueos y mecanismos de sincronización para evitar condiciones de carrera', 3, 'Vulnerabilidad de condición de carrera'),
(188, 'Permite a los atacantes acceder a archivos fuera del directorio deseado', 'Desinfectar y validar la entrada proporcionada por el usuario para evitar el cruce de directorios', 3, 'Visualización de directorios'),
(189, 'Permite a los atacantes manipular objetos serializados para ejecutar código', 'Usar métodos de serialización seguros y validar los datos serializados', 4, 'Serialización de objetos inseguros'),
(190, 'Permite a los atacantes inyectar y ejecutar código malicioso dentro de una aplicación', 'Evitar que se llegue a ejecutar código proporcionado por el usuario y validar la entrada minuciosamente', 4, 'Inyección de código'),
(191, 'Permite que los atacantes se apoderen de la sesión de un usuario', 'Usar técnicas seguras de administración de sesiones y configurar los atributos para que las cookies sean seguras', 4, 'Secuestro de sesión'),
(192, 'Sobrecarga un sistema o servicio para que no esté disponible para los demás usuarios', 'Implementar técnicas de limitación de velocidad, validación de entrada y de monitoreo para prevenir ataques DoS', 4, 'Denegación de servicio (DoS)'),
(193, 'Se refiere a una vulnerabilidad desconocida y sin parches explotada por atacantes', 'Mantener el sistema actualizado con parches de seguridad y monitorear las comunidades y foros de seguridad en busca de amenazas emergentes', 4, 'Vulnerabilidad de día cero'),
(194, 'Permite a los atacantes acceder a archivos y directorios fuera de la raíz en la web', 'Desinfectar y validar la entrada proporcionada por el usuario para evitar ataques de cruce de ruta', 3, 'Path Traversal'),
(195, 'Permite a los atacantes eludir las restricciones de seguridad en los navegadores web', 'Configurar correctamente los encabezados CORS y validar la entrada sumistrada por el usuario', 3, 'Compartir recursos de origen cruzado (CORS) inseguro'),
(196, 'Intercepta y altera la comunicación entre dos partes', 'Utilizar protocolos de comunicación seguros como HTTPS y certificados SSL/TLS', 4, 'Man-in-the-Middle (MitM) Ataque'),
(197, 'Aprovecha las debilidades en las implementaciones para las conexiones OAuth y OpenID', 'Seguir las mejores prácticas de seguridad para la integración de las conexiones de OAuth y OpenID', 3, 'Vulnerabilidades en las conexiones de OAuth y OpenID'),
(198, 'Permite a los atacantes sobrescribir áreas de memoria adyacentes', 'Utilizar prácticas de codificación seguras y verificación de límites para evitar el desbordamiento del búfer', 4, 'Desbordamiento del búfer'),
(199, 'Permite el acceso no autorizado a determinadas funcionalidades o recursos', 'Implementar controles de acceso y mecanismos de autorización adecuados', 2, 'Autorización insuficiente'),
(200, 'Permite a los atacantes ejecutar búsquedas no deseadas en un sitio web', 'Sanear las consultas de los usuarios en los cuadros de búsqueda y usar una API de búsqueda segura', 2, 'Búsqueda insegura entre sitios (XS-Search)'),
(201, 'Permite a los atacantes cargar y ejecutar archivos maliciosos en un servidor', 'Usar mecanismos seguros de carga de archivos y escanear los archivos cargados en busca de malware', 4, 'Ejecución de archivos maliciosos'),
(202, 'Permite a los atacantes secuestrar una sesión activa después de que un usuario haya cerrado la sesión', 'Establecer un período de tiempo de espera de sesión corto y correctamente configurado', 2, 'Vulnerabilidad de tiempo de espera de sesión'),
(203, 'Permite a los atacantes realizar solicitudes desde el servidor a los recursos internos', 'Validar y sanear las URLs proporcionadas por el usuario, restringir el acceso a dominios de confianza', 4, 'Falsificación de solicitudes del lado del servidor (SSRF)'),
(204, 'Permite a los atacantes inyectar y ejecutar código JavaScript en el navegador de la víctima', 'Desinfectar y validar datos no confiables antes de ejecutar código JavaScript', 3, 'Inyección de código JavaScript'),
(205, 'Permite a los atacantes inyectar contenido malicioso en los encabezados de un correo electrónico', 'Desinfectar y validar la entrada proporcionada por el usuario antes de agregarla a los encabezados de correo electrónico', 3, 'Inyección de encabezado de correo electrónico'),
(206, 'Expone información confidencial a usuarios no autorizados', 'AsegúreseAsegurar que los mensajes de error y los registros no revelen datos confidenciales', 2, 'Fuga de información'),
(207, 'Permite a los atacantes manipular URL o parámetros POST', 'Validar y desinfectar la entrada y evitar parámetros duplicados', 3, 'Contaminación de parámetros HTTP (HPP)'),
(208, 'Permite a los atacantes adivinar fácilmente o forzar contraseñas por fuerza bruta', 'Aplicar políticas de contraseñas seguras e implementar un sistema de autenticación multifactor', 3, 'Política de contraseñas débiles'),
(209, 'Permite a los atacantes extraer hashes de cuentas de servicio del controlador de dominio', 'Limitar las cuentas de usuario y de servicio con privilegios confidenciales y usar contraseñas seguras de cuenta de servicio', 4, 'Kerberoasting'),
(210, 'Permite a los atacantes usar tickets de Kerberos robados para obtener acceso no autorizado', 'Rotar periódicamente los tickets de Kerberos, limitar los privilegios de los usuarios e implementar restricciones de inicio de sesión en la cuenta', 4, 'Pass-the-Ticket (PtT) Ataque'),
(211, 'Permite a los atacantes falsificar tickets de Kerberos para obtener acceso no autorizado', 'Alternar regularmente la contraseña KRBTGT del controlador de dominio y monitorear una posible actividad sospechosa', 4, 'Golden Ticket Ataque'),
(212, 'Permite a los atacantes falsificar tickets de servicio para obtener acceso no autorizado', 'Supervisar el uso inusual de tickets de servicio y limitar los privilegios de usuario innecesarios', 4, 'Ataque de ticket plateado'),
(213, 'Permite a los atacantes usar hashes de contraseñas robadas para acceder a los recursos de la red', 'Implementar Credential Guard y usar algoritmos de cifrado fuertes para el almacenamiento de contraseñas', 4, 'Overpass-the-Hash (Pass-the-Key) Ataque'),
(214, 'Permite que los usuarios no autorizados accedan a objetos confidenciales en el Directorio Activo', 'Revise y ajuste periódicamente las ACL para hacer cumplir los privilegios mínimos', 3, 'ACL débiles (Listas de control de acceso)'),
(215, 'Aprovecha las fallas de seguridad conocidas en los componentes del Directorio Activo', 'Mantener el sistema actualizado con los parches de seguridad y seguir las mejores prácticas para la administración de parches', 3, 'Vulnerabilidades sin parches'),
(216, 'Permite a los atacantes obtener mayores privilegios que los asignados', 'Revisar y auditar regularmente las cuentas y grupos de usuarios privilegiados', 3, 'Escalada de privilegios'),
(217, 'Satura los Controladores de Dominio para interrumpir los servicios del Directorio Activo', 'Implementar el monitoreo de redes y sistemas para detectar ataques DoS y mitigarlos', 4, 'Ataque DoS del controlador de dominio'),
(218, 'Permite que los atacantes de un dominio accedan a los recursos de otro', 'Revisar y validar periódicamente las relaciones de confianza entre los diferentes dominios', 3, 'Relaciones de confianza inseguras'),
(219, 'Permite el acceso no autorizado a los archivos de copia de seguridad del Directorio Activo', 'Almacenar de forma segura y restringir el acceso a los archivos de copia de seguridad del Directorio Activo y seguir los procedimientos para realizar copias de seguridad adecuadamente', 2, 'Exposición de datos de copia de seguridad'),
(220, 'Expone información confidencial del Directorio Activo a usuarios no autorizados', 'Asegurar que los mensajes de error y los registros no revelen datos confidenciales y restringir el acceso a información confidencial', 3, 'Fuga de información confidencial'),
(221, 'Permite el acceso no autorizado a datos de zona DNS', 'Limitar permisos de transferencia de zona y configurar cortafuegos para bloquear solicitudes no autorizadas', 3, 'Vulnerabilidad de transferencia de zona DNS'),
(222, 'Abuso de cuentas privilegiadas para actividades no autorizadas', 'Supervisar y auditar las actividades de los usuarios privilegiados y hacer cumplir los privilegios mínimos', 4, 'Uso indebido de la cuenta de usuario privilegiado'),
(223, 'Permite a los usuarios unirse a grupos no autorizados y escalar privilegios', 'Controlar la membresía del grupo y hacer cumplir la separación de funciones', 3, 'Membresía del grupo sin restricciones'),
(224, 'Permite a los atacantes usar cuentas de trabajadores antiguos o usuarios inactivos', 'Implementar un proceso de administración del ciclo de vida de la cuenta y deshabilitar o eliminar cuentas obsoletas', 2, 'Cuentas de usuario obsoletas'),
(225, 'Provoca incoherencias y daños en los datos entre los Controladores de Dominio', 'Supervisar y mantener el estado de la replicación del Directorio Activo y garantizar la conectividad de red entre los Controladores de Dominio', 3, 'Problemas de replicación del Directorio Activo'),
(226, 'Permite a los atacantes conservar los derechos de acceso de dominios anteriores', 'Limitar el uso del historial de del Identificador de Seguridad (SID) y administra cuidadosamente las relaciones de confianza entre bosques', 4, 'Vulnerabilidad del historial del identificador de seguridad (del Identificador de Seguridad (SID))'),
(227, 'Permite cambios no autorizados en la configuración del Directorio Activo a través de las Políticas de Grupo (GPO)', 'Audita y protege la configuración de las Políticas de Grupo (GPO) y restringe el acceso a la administración de las Políticas de Grupo (GPO)', 3, 'Configuración incorrecta del objeto de directiva de grupo (las Políticas de Grupo (GPO))'),
(228, 'Permite que los usuarios no autorizados modifiquen objetos del Directorio Activo a través de una configuración de delegación incorrecta', 'Revisar y hacer cumplir la configuración de delegación adecuada y limitar los permisos excesivos', 3, 'Configuración incorrecta de la delegación del Directorio Activo'),
(229, 'Expone datos confidenciales del Directorio Activo durante la comunicación LDAP', 'Habilitar LDAPS (LDAP sobre SSL/TLS) y usar certificados confiables', 3, 'Configuración LDAPS insegura'),
(230, 'Permite a los atacantes descubrir cuentas del Directorio Activo válidas a través durante la fase de enumeración', 'Implementar políticas de bloqueo de cuentas y evitar revelar la existencia de la cuenta en los mensajes de error de inicio de sesión', 2, 'Enumeración de cuenta del Directorio Activo'),
(231, 'Permite el acceso no autorizado a los archivos de la base de datos del Directorio Activo', 'Cifrar los archivos de la base de datos del Directorio Activo y garantizar los permisos de archivos seguros', 3, 'Configuración incorrecta del cifrado de la base de datos del Directorio Activo'),
(232, 'Permite la suplantación del Identificador de Seguridad (SID) de manera no autorizada en dominios de confianza', 'Habilitar el filtrado del del Identificador de Seguridad (SID) en relaciones de confianza para evitar la suplantación de del Identificador de Seguridad (SID)', 3, 'Vulnerabilidad de filtrado de del Identificador de Seguridad (SID)'),
(233, 'Permite el acceso no autorizado a los datos de los Servicios de directorio ligero en el Directorio Activo', 'Configura de forma segura las instancias de los Servicios de directorio ligero en el Directorio Activo y restringe el acceso a datos confidenciales', 3, 'Configuración incorrecta de los servicios de directorio ligero del Directorio Activo (AD LDS)'),
(234, 'Permite a los atacantes falsificar tokens de autenticación para el acceso no autorizado', 'Usar mecanismos seguros de generación de tokens e implementar la caducidad del token', 3, 'Tokens de autenticación falsificados'),
(235, 'Aprovecha las debilidades en las implementaciones del Servicio de Federación en el Directorio Activo', 'Mantener el sistema actualizado con los parches del Servicio de Federación en el Directorio Activo y seguir las mejores prácticas de seguridad', 3, 'Vulnerabilidades de los servicios federados del Directorio Activo (AD FS)'),
(236, 'Permite a los atacantes hacerse pasar por impresoras de red', 'Configurar las impresoras de red de forma segura y restringir el acceso solo a usuarios de confianza', 3, 'Suplantación de identidad de impresora'),
(237, 'Permite a los atacantes reutilizar las credenciales del Directorio Activo almacenadas en la caché para el acceso no autorizado', 'Usar Credential Guard y hacer cumplir los cambios regulares de contraseña', 4, 'Pass-the-Cache (PtC) Attack'),
(238, 'Permite la recuperación de objetos eliminados por parte de usuarios no autorizados', 'Habilitar y configurar correctamente la función de la papelera de reciclaje em el Directorio Activo', 3, 'Configuración incorrecta de la Papelera de reciclaje del Directorio Activo'),
(239, 'Permite el acceso no autorizado a la administración del Directorio Activo', 'Usar contraseñas seguras para cuentas administrativas y limitar su uso', 3, 'Cuentas administrativas de Active Directory no seguras'),
(240, 'Permite que los usuarios no autorizados obtengan privilegios excesivos', 'Revisar y controlar periódicamente la pertenencia a grupos privilegiados', 3, 'Mala gestión de grupos privilegiados'),
(241, 'Expone información y servicios confidenciales en controladores de dominio', 'Limitar la exposición de servicios confidenciales en controladores de dominio', 3, 'Servicios de controlador de dominio sin protección'),
(242, 'Permite la modificación no autorizada de objetos del esquema del Directorio Activo', 'Restringir la modificación del esquema solo al personal autorizado', 4, 'Seguridad del esquema del Directorio Activo débil'),
(243, 'Expone datos confidenciales como contraseñas en la configuración de las Políticas de Grupo (GPO)', 'Eliminar la información confidencial en las preferencias de las directivas de grupo y emplear el filtrado de seguridad de directivas de grupo', 3, 'Preferencias de directivas de grupo inseguras'),
(244, 'Permite a los atacantes redirigir las consultas del DNS a direcciones maliciosas', 'Implementar DNSSEC y monitorizar regularmente el estado de la caché del DNS', 4, 'Envenenamiento de caché del DNS'),
(245, 'Permite el acceso no autorizado a sistemas remotos', 'Habilitar WinRM de forma segura y limitar el acceso a hosts de confianza', 3, 'Configuración incorrecta de Windows Remote Management (WinRM)'),
(246, 'Permite el acceso no autorizado entre dominios de confianza', 'Revisar y asegurar periódicamente las relaciones de confianza entre dominios', 3, 'Relaciones de confianza del Directorio Activo inseguras'),
(247, 'Permite a los atacantes recopilar datos confidenciales del Directorio Activo', 'Limitar el acceso a consultas LDAP e implementar filtros', 3, 'Consultas LDAP sin restricciones'),
(248, 'Permite la modificación no autorizada de registros del DNS', 'Restringir el acceso a la administración del DNS y supervisar los cambios del DNS', 3, 'Configuración incorrecta del DNS integrado del Directorio Activo'),
(249, 'Expone información confidencial sobre objetos del Directorio Activo', 'Controla el acceso a la información del Directorio Activo y limita la información expuesta a los usuarios', 3, 'Divulgación de información de Active Directory'),
(250, 'Permite a los atacantes usar tickets de fuerza bruta en Kerberos', 'Habilitar la autenticación previa de Kerberos y aplicar contraseñas seguras', 4, 'Vulnerabilidades de autenticación previa de Kerberos'),
(251, 'Permite a los atacantes extraer hashes de contraseñas de la memoria', 'Implementar Credential Guard y proteger las áreas de memoria que sean confidenciales', 4, 'Password Hash Overpassing'),
(252, 'Permite que los atacantes utilicen cuentas inactivas con fines maliciosos', 'Realizar una limpieza del Directorio Activo con regularidad y deshabilitar o eliminar las cuentas no utilizadas', 2, 'Objetos del Directorio Activo obsoletos o no utilizados'),
(253, 'Expone datos del Directorio Activo durante las operaciones de copia de seguridad y restauración', 'Manejar de forma segura las copias de seguridad del Directorio Activo y garantizar un cifrado adecuado', 3, 'Procesos de copia de seguridad y restauración inseguros'),
(254, 'Permite a los atacantes recopilar información sobre los dominios de confianza', 'Minimizar las relaciones de confianza y limitar la exposición de la información', 2, 'Enumeración de confianza del Directorio Activo'),
(255, 'Permite a los atacantes abusar de la configuración de GPO para realizar cambios no autorizados', 'Asegurar GPO y hacer cumplir las políticas de contraseñas seguras en cuentas de GPO', 3, 'Vulnerabilidades de políticas de grupo'),
(256, 'Permite a los atacantes reutilizar los tickets de Kerberos interceptados', 'Usar restricciones de tiempo en los tickets de Kerberos para limitar su período de validez', 4, 'Ataque de repetición de tickets de Kerberos'),
(257, 'Permite el acceso no autorizado a los datos del Directorio Activo sin autenticación', 'Requerir la autenticación para el enlace LDAP en el Directorio Activo', 3, 'Enlace LDAP no autenticado'),
(258, 'Permite a los atacantes rastrear las credenciales en la red', 'Cifrar el tráfico de red y usar protocolos seguros para la autenticación', 4, 'Rastreo remoto de credenciales'),
(259, 'Permite que los usuarios no autorizados modifiquen o eliminen objetos del Directorio Activo', 'Revisar y reajustar periódicamente los permisos de los objetos del Directorio Activo', 3, 'Permisos de objetos del Directorio Activo inseguros'),
(260, 'Provoca inconsistencias en la replicación entre controladores de dominio', 'Supervisar y mantener el estado de replicación del Directorio Activo y resolver los problemas de sincronización', 3, 'Problemas de sincronización de controlador de dominio'),
(261, 'Permite la emisión no autorizada de certificados digitales', 'Asegurar y controlar los servicios de la autoridad de certificación y mantenener unas políticas de certificación sólidas', 4, 'Vulnerabilidades de la autoridad de certificación'),
(262, 'Permite el acceso no autorizado a las particiones del Directorio Activo', 'Controlar el acceso a las particiones del Directorio Activo e implementar una seguridad de partición adecuada', 3, 'Configuración incorrecta de la partición del Directorio Activo'),
(263, 'Permite implementaciones del Directorio Activo no autorizadas o no administradas', 'Aplicar políticas para implementaciones del Directorio Activo y realizar tareas de monitorización en la sombra', 2, 'TI en la sombra en el Directorio Activo'),
(264, 'Permite a los atacantes hacerse pasar por otros usuarios o aplicaciones', 'Implementar una seguridad de token adecuada y validar la autenticidad del token', 4, 'Vulnerabilidad de suplantación de token'),
(265, 'Permite a los atacantes evadir la detección alterando los registros de auditoría', 'Configurar y proteger de forma segura la configuración de auditoría del Directorio Activo', 3, 'Abuso de la auditoría privilegiada'),
(266, 'Permite modificaciones no autorizadas de registros DNS', 'Restringir las actualizaciones dinámicas del DNS y supervisar los cambios del DNS', 3, 'Vulnerabilidad de actualización dinámica del DNS'),
(267, 'Permite a los atacantes acceder y manipular datos del Directorio Activo sin conexión', 'Proteger el acceso físico a los controladores de dominio y cifrar los datos confidenciales', 4, 'Robo de controlador de dominio'),
(268, 'Permite a los atacantes robar y abusar de las credenciales almacenadas', 'Almacenar credenciales de forma segura y usar soluciones de administración de credenciales seguras', 3, 'Almacenamiento de credenciales no confiables'),
(269, 'Dummy', 'Dummy', 0, 'Example Description'),
(270, 'Permet aux attaquants d`exécuter des requêtes SQL malveillantes.', 'Utilisez des instructions préparées et des requêtes paramétrées.', 4, 'Injection SQL'),
(271, 'Permet aux attaquants d`injecter des scripts malveillants dans des pages web.', 'Mettez en œuvre une validation d`entrée et un encodage de sortie appropriés.', 3, 'Cross-Site Scripting (XSS)'),
(272, 'Permet aux attaquants d`exécuter du code sur un serveur distant.', 'Maintenez les logiciels et les bibliothèques à jour, utilisez un pare-feu d`application web.', 4, 'Exécution de code à distance (RCE)'),
(273, 'Expose des informations sensibles comme des mots de passe ou des détails de carte de crédit.', 'Chiffrez les données sensibles, utilisez des protocoles de communication sécurisés.', 2, 'Exposition de données sensibles'),
(274, 'Permet aux attaquants d`accéder à des ressources non autorisées.', 'Mettez en œuvre des contrôles d`accès et des mécanismes d`authentification appropriés.', 2, 'Références d`objets directes non sécurisées'),
(275, 'Trompe les utilisateurs en les amenant à exécuter des actions non désirées à leur insu.', 'Utilisez des jetons CSRF et mettez en œuvre le modèle PRG.', 3, 'Falsification de requête intersites (CSRF)'),
(276, 'Permet aux attaquants de faire des requêtes depuis le serveur vers des ressources internes.', 'Validez et assainissez les URL fournies par l`utilisateur, restreignez l`accès aux domaines de confiance.', 4, 'Falsification de requête côté serveur (SSRF)'),
(277, 'Tente de deviner des mots de passe ou des clés de chiffrement.', 'Appliquez des verrouillages de compte, utilisez des mots de passe forts et complexes.', 2, 'Attaque par force brute'),
(278, 'Permet aux attaquants de rediriger les utilisateurs vers des sites web malveillants.', 'Évitez d`utiliser les entrées fournies par l`utilisateur dans les URLs de redirection.', 3, 'Redirections et transferts non validés'),
(279, 'Permet aux attaquants d`inclure et d`exécuter des fichiers arbitraires.', 'Évitez d`utiliser les entrées fournies par l`utilisateur dans les chemins d`inclusion de fichiers.', 3, 'Vulnérabilités d`inclusion de fichiers'),
(280, 'Permet aux attaquants d`exécuter du code arbitraire lors de la désérialisation.', 'Validez et assainissez les données sérialisées, utilisez des formats de sérialisation sécurisés.', 4, 'Désérialisation non sécurisée'),
(281, 'Permet aux attaquants d`exécuter du code malveillant dans des modèles côté serveur.', 'Évitez d`utiliser directement les entrées de l`utilisateur dans les modèles, assainissez et validez les données des modèles.', 4, 'Injection de modèle côté serveur (SSTI)'),
(282, 'Permet aux attaquants de lire des données sensibles et de réaliser des attaques par déni de service.', 'Désactivez l`analyse des entités externes, utilisez des formats de données plus sûrs comme JSON.', 3, 'Injection d`entité externe XML (XXE)'),
(283, 'Permet aux attaquants d`exécuter des commandes système arbitraires.', 'Mettez en œuvre une validation d`entrée appropriée et utilisez des API sécurisées pour exécuter des commandes.', 3, 'Injection de commande'),
(284, 'Se produit lorsque les paramètres de sécurité ne sont pas correctement configurés.', 'Suivez les meilleures pratiques de sécurité, maintenez les logiciels et services à jour.', 2, 'Mauvaise configuration de la sécurité'),
(285, 'Expose des données sensibles et permet un accès non autorisé.', 'Utilisez des mécanismes d`authentification et d`autorisation pour les API.', 2, 'API non sécurisées'),
(286, 'Permet à des sites web non autorisés de faire des requêtes à un serveur.', 'Configurez correctement les en-têtes CORS pour restreindre les requêtes inter-origines.', 2, 'Mauvaise configuration du partage de ressources inter-origines (CORS)'),
(287, 'Mécanismes d`authentification faibles qui peuvent être facilement contournés.', 'Utilisez des politiques de mot de passe fortes, mettez en œuvre l`authentification multi-facteurs.', 3, 'Authentification non sécurisée'),
(288, 'Permet aux attaquants d`accéder à des ressources non autorisées en manipulant des références d`objets.', 'Utilisez des références d`objets indirectes et mettez en œuvre des contrôles d`accès appropriés.', 3, 'Références d`objets directes non sécurisées (IDOR)'),
(289, 'Permet aux attaquants d`inclure et d`exécuter des fichiers distants.', 'Évitez d`utiliser les entrées fournies par l`utilisateur dans les chemins d`inclusion de fichiers.', 4, 'Inclusion de fichiers distants (RFI)'),
(290, 'Trompe les utilisateurs en les amenant à cliquer sur des éléments malveillants cachés.', 'Mettez en œuvre les en-têtes X-Frame-Options ou Content Security Policy (CSP).', 3, 'Clickjacking'),
(291, 'Expose des données sensibles en raison d`un chiffrement faible ou d`une configuration faible.', 'Utilisez des versions fortes de TLS et des suites de chiffrement, obtenez des certificats SSL de sources de confiance.', 3, 'Sécurité de la couche de transport (TLS) insuffisante'),
(292, 'Permet aux attaquants de définir l`identifiant de session d`un utilisateur et de détourner sa session.', 'Générez un nouvel identifiant de session à la connexion et invalidez l`ancien.', 3, 'Fixation de session'),
(293, 'Stocke des données sensibles avec un chiffrement faible ou sans chiffrement.', 'Utilisez des algorithmes de chiffrement forts et salez les mots de passe avant de les hacher.', 3, 'Stockage cryptographique non sécurisé'),
(294, 'Permet aux attaquants d`injecter des en-têtes malveillants dans les requêtes.', 'Assainissez les entrées fournies par l`utilisateur et validez les en-têtes HTTP.', 2, 'Injection d`en-tête HTTP'),
(295, 'Permet aux attaquants de manipuler les requêtes LDAP.', 'Utilisez des requêtes LDAP paramétrées et échappez les entrées de l`utilisateur.', 3, 'Injection LDAP'),
(296, 'Permet aux attaquants d`inclure des scripts externes dans la page d`une victime.', 'Assainissez et validez les données non fiables avant d`inclure des scripts.', 3, 'Inclusion de script intersites (XSSI)'),
(297, 'Permet aux attaquants d`exécuter des commandes sur le serveur via des directives SSI.', 'Évitez d`utiliser les entrées fournies par l`utilisateur dans les directives SSI.', 3, 'Injection de Server-Side Include (SSI)'),
(298, 'Permet aux attaquants de télécharger des fichiers malveillants sur un serveur.', 'Mettez en œuvre une validation des types de fichiers et utilisez des mécanismes de téléchargement de fichiers sécurisés.', 3, 'Vulnérabilité de téléchargement de fichiers distants'),
(299, 'Exploite les failles dans la logique de l`application pour effectuer des actions non autorisées.', 'Mettez en œuvre des contrôles d`accès et une validation appropriés dans la logique métier.', 2, 'Vulnérabilités de la logique métier'),
(300, 'Se produit lorsque plusieurs processus accèdent simultanément à des ressources partagées.', 'Utilisez des verrous et des mécanismes de synchronisation pour prévenir les conditions de course.', 3, 'Vulnérabilité de condition de course'),
(301, 'Permet aux attaquants d`accéder à des fichiers en dehors du répertoire prévu.', 'Assainissez et validez les entrées de l`utilisateur pour prévenir la traversée de répertoires.', 3, 'Traversée de répertoire'),
(302, 'Permet aux attaquants de manipuler des objets sérialisés pour exécuter du code.', 'Utilisez des méthodes de sérialisation sécurisées et validez les données sérialisées.', 4, 'Sérialisation d`objets non sécurisée'),
(303, 'Permet aux attaquants d`injecter et d`exécuter du code malveillant au sein d`une application.', 'Évitez d`exécuter du code fourni par l`utilisateur et validez soigneusement les entrées.', 4, 'Injection de code'),
(304, 'Permet aux attaquants de prendre le contrôle de la session d`un utilisateur.', 'Utilisez des techniques de gestion de session sécurisées et appliquez des attributs de cookie sécurisés.', 4, 'Détournement de session'),
(305, 'Submerge un système ou un service pour le rendre indisponible aux utilisateurs.', 'Mettez en œuvre une limitation de débit, une validation des entrées et une surveillance pour prévenir les attaques DoS.', 4, 'Déni de service (DoS)'),
(306, 'Fait référence à une vulnérabilité inconnue et non corrigée exploitée par les attaquants.', 'Restez à jour avec les correctifs de sécurité et surveillez les communautés de sécurité pour les nouvelles menaces.', 4, 'Vulnérabilité zero-day'),
(307, 'Permet aux attaquants d`accéder à des fichiers et répertoires en dehors de la racine web.', 'Assainissez et validez les entrées de l`utilisateur pour prévenir les attaques de traversée de chemin.', 3, 'Traversée de chemin'),
(308, 'Permet aux attaquants de contourner les restrictions de sécurité dans les navigateurs web.', 'Configurez correctement les en-têtes CORS et validez les entrées de l`utilisateur.', 3, 'Partage de ressources inter-origines (CORS) non sécurisé'),
(309, 'Intercepte et modifie la communication entre deux parties.', 'Utilisez des protocoles de communication sécurisés comme HTTPS et des certificats SSL/TLS.', 4, 'Attaque de l`homme du milieu (MitM)'),
(310, 'Exploite les faiblesses dans les implémentations OAuth et OpenID Connect.', 'Suivez les meilleures pratiques de sécurité pour l`intégration OAuth et OpenID Connect.', 3, 'Vulnérabilités OAuth et OpenID Connect'),
(311, 'Permet aux attaquants de surcharger des zones mémoire adjacentes.', 'Utilisez des pratiques de codage sécurisées et des vérifications de limites pour prévenir les débordements de tampon.', 4, 'Dépassement de tampon'),
(312, 'Permet un accès non autorisé à certaines fonctionnalités ou ressources.', 'Mettez en œuvre des contrôles d`accès et des mécanismes d`autorisation appropriés.', 2, 'Autorisation insuffisante'),
(313, 'Permet aux attaquants d`exécuter des recherches non intentionnelles sur un site web.', 'Assainissez les requêtes de recherche de l`utilisateur et utilisez des API de recherche sécurisées.', 2, 'Recherche intersites non sécurisée (XS-Search)'),
(314, 'Permet aux attaquants de télécharger et d`exécuter des fichiers malveillants sur un serveur.', 'Utilisez des mécanismes de téléchargement de fichiers sécurisés et analysez les fichiers téléchargés pour détecter les logiciels malveillants.', 4, 'Exécution de fichiers malveillants'),
(315, 'Permet aux attaquants de détourner une session active après qu`un utilisateur s`est déconnecté.', 'Définissez une courte période de déconnexion de session et configurez-la correctement.', 2, 'Vulnérabilité de délai de session'),
(316, 'Permet aux attaquants de faire des requêtes depuis le serveur vers des ressources internes.', 'Validez et assainissez les URL fournies par l`utilisateur, restreignez l`accès aux domaines de confiance.', 4, 'Falsification de requête côté serveur (SSRF)'),
(317, 'Permet aux attaquants d`injecter et d`exécuter du code JavaScript dans le navigateur d`une victime.', 'Assainissez et validez les données non fiables avant d`exécuter du code JavaScript.', 3, 'Injection de code JavaScript'),
(318, 'Permet aux attaquants d`injecter du contenu malveillant dans les en-têtes des emails.', 'Assainissez et validez les entrées fournies par l`utilisateur avant de les ajouter aux en-têtes des emails.', 3, 'Injection d`en-tête d`email'),
(319, 'Expose des informations sensibles à des utilisateurs non autorisés.', 'Assurez-vous que les messages d`erreur et les journaux ne révèlent pas de données sensibles.', 2, 'Fuite d`informations'),
(320, 'Permet aux attaquants de manipuler les paramètres URL ou POST.', 'Validez et assainissez les entrées, et évitez les paramètres en double.', 3, 'Pollution de paramètres HTTP (HPP)'),
(321, 'Permet aux attaquants de deviner ou de forcer brutalement les mots de passe.', 'Appliquez des politiques de mot de passe fortes et mettez en œuvre l`authentification multi-facteurs.', 3, 'Politique de mot de passe faible'),
(322, 'Permet aux attaquants d`extraire des hachages de mots de passe de compte de service du contrôleur de domaine.', 'Limitez les comptes d`utilisateurs et de service avec des privilèges sensibles, et utilisez des mots de passe de compte de service forts.', 4, 'Kerberoasting'),
(323, 'Permet aux attaquants d`utiliser des tickets Kerberos volés pour obtenir un accès non autorisé.', 'Renouvelez régulièrement les tickets Kerberos, limitez les privilèges des utilisateurs et mettez en œuvre des restrictions de connexion de compte.', 4, 'Attaque Pass-the-Ticket (PtT)'),
(324, 'Permet aux attaquants de falsifier des tickets Kerberos pour obtenir un accès non autorisé.', 'Renouvelez régulièrement le mot de passe KRBTGT du contrôleur de domaine et surveillez les activités suspectes.', 4, 'Attaque Golden Ticket'),
(325, 'Permet aux attaquants de falsifier des tickets de service pour obtenir un accès non autorisé.', 'Surveillez l`utilisation inhabituelle des tickets de service et limitez les privilèges des utilisateurs inutiles.', 4, 'Attaque Silver Ticket'),
(326, 'Permet aux attaquants d`utiliser des hachages de mots de passe volés pour accéder aux ressources réseau.', 'Mettez en œuvre Credential Guard et utilisez des algorithmes de chiffrement forts pour le stockage des mots de passe.', 4, 'Attaque Overpass-the-Hash (Pass-the-Key)'),
(327, 'Permet à des utilisateurs non autorisés d`accéder à des objets sensibles dans AD.', 'Révisez et resserrez régulièrement les ACL pour appliquer le principe de moindre privilège.', 3, 'ACL faibles (Listes de contrôle d`accès)'),
(328, 'Exploite des failles de sécurité connues dans les composants AD.', 'Restez à jour avec les correctifs de sécurité et suivez les meilleures pratiques pour la gestion des correctifs.', 3, 'Vulnérabilités non corrigées'),
(329, 'Permet aux attaquants d`obtenir des privilèges plus élevés que ceux qui leur sont attribués.', 'Révisez et auditez régulièrement les comptes d`utilisateurs et les groupes privilégiés.', 3, 'Élévation de privilèges'),
(330, 'Submerge les contrôleurs de domaine pour perturber les services AD.', 'Mettez en œuvre une surveillance réseau et système pour détecter et atténuer les attaques DoS.', 4, 'Attaque DoS du contrôleur de domaine'),
(331, 'Permet aux attaquants d`un domaine d`accéder aux ressources d`un autre.', 'Révisez et validez régulièrement les relations de confiance entre les domaines.', 3, 'Relations de confiance non sécurisées'),
(332, 'Permet un accès non autorisé aux fichiers de sauvegarde AD.', 'Stockez de manière sécurisée et restreignez l`accès aux fichiers de sauvegarde AD et suivez des procédures de sauvegarde appropriées.', 2, 'Exposition des données de sauvegarde'),
(333, 'Expose des informations sensibles AD à des utilisateurs non autorisés.', 'Assurez-vous que les messages d`erreur et les journaux ne révèlent pas de données sensibles, et restreignez l`accès aux informations sensibles.', 3, 'Fuite d`informations sensibles'),
(334, 'Permet un accès non autorisé aux données de zone DNS.', 'Limitez les autorisations de transfert de zone et configurez les pare-feu pour bloquer les requêtes non autorisées.', 3, 'Vulnérabilité de transfert de zone DNs'),
(335, 'Abus de comptes d`utilisateurs privilégiés pour des activités non autorisées.', 'Surveillez et auditez les activités des utilisateurs privilégiés et appliquez le principe de moindre privilège.', 4, 'Mauvaise utilisation des comptes d`utilisateurs privilégiés'),
(336, 'Permet aux utilisateurs de rejoindre des groupes non autorisés et d`élever leurs privilèges.', 'Contrôlez l`appartenance aux groupes et appliquez la séparation des tâches.', 3, 'Appartenance aux groupes non restreinte'),
(337, 'Permet aux attaquants d`utiliser des comptes d`anciens employés ou d`utilisateurs inactifs.', 'Mettez en œuvre un processus de gestion du cycle de vie des comptes et désactivez ou supprimez les comptes inactifs.', 2, 'Comptes d`utilisateurs obsolètes'),
(338, 'Provoque des incohérences et une corruption des données entre les contrôleurs de domaine.', 'Surveillez et maintenez la santé de la réplication AD, et assurez la connectivité réseau entre les DC.', 3, 'Problèmes de réplication Ad'),
(339, 'Permet aux attaquants de conserver des droits d`accès des domaines précédents.', 'Limitez l`utilisation de l`historique SID et gérez soigneusement les relations de confiance inter-forêts.', 4, 'Vulnérabilité de l`historique SID (Security Identifier)'),
(340, 'Permet des modifications non autorisées des paramètres AD via les GPO.', 'Auditez et sécurisez les paramètres GPO et restreignez l`accès à la gestion GPO.', 3, 'Mauvaise configuration des objets de stratégie de groupe (GPO)'),
(341, 'Permet à des utilisateurs non autorisés de modifier des objets AD via des paramètres de délégation incorrects.', 'Révisez et appliquez des paramètres de délégation appropriés et limitez les permissions excessives.', 3, 'Mauvaise configuration de la délégation Ad'),
(342, 'Expose des données sensibles AD lors de la communication LDAP.', 'Activez LDAPS (LDAP sur SSL/TLS) et utilisez des certificats de confiance.', 3, 'Configuration LDAPS non sécurisée'),
(343, 'Permet aux attaquants de découvrir des comptes AD valides via l`énumération.', 'Mettez en œuvre des politiques de verrouillage de compte et évitez de révéler l`existence de compte dans les messages d`erreur de connexion.', 2, 'Énumération de comptes Ad'),
(344, 'Permet un accès non autorisé aux fichiers de base de données AD.', 'Chiffrez les fichiers de base de données AD et assurez des permissions de fichier sécurisées.', 3, 'Mauvaise configuration du chiffrement de la base de données Ad'),
(345, 'Permet le spoofing SID non autorisé depuis des domaines de confiance.', 'Activez le filtrage SID sur les relations de confiance pour prévenir le spoofing SID.', 3, 'Vulnérabilité de filtrage SId'),
(346, 'Permet un accès non autorisé aux données AD LDS.', 'Configurez de manière sécurisée les instances AD LDS et restreignez l`accès aux données sensibles.', 3, 'Mauvaise configuration des services AD Lightweight Directory Services (AD LDS)'),
(347, 'Permet aux attaquants de falsifier des jetons d`authentification pour un accès non autorisé.', 'Utilisez des mécanismes de génération de jetons sécurisés et mettez en œuvre l`expiration des jetons.', 3, 'Jetons d`authentification falsifiés'),
(348, 'Exploite les faiblesses dans les implémentations AD FS.', 'Restez à jour avec les correctifs AD FS et suivez les meilleures pratiques de sécurité.', 3, 'Vulnérabilités des services fédérés AD (AD FS)'),
(349, 'Permet aux attaquants de se faire passer pour des imprimantes réseau.', 'Configurez de manière sécurisée les imprimantes réseau et restreignez l`accès aux utilisateurs de confiance.', 3, 'Usurpation d`imprimante'),
(350, 'Permet aux attaquants de réutiliser des informations d`identification AD mises en cache pour un accès non autorisé.', 'Utilisez Credential Guard et appliquez des changements de mot de passe réguliers.', 4, 'Attaque Pass-the-Cache (PtC)'),
(351, 'Permet la récupération d`objets supprimés par des utilisateurs non autorisés.', 'Activez et configurez correctement la fonctionnalité de corbeille AD.', 3, 'Mauvaise configuration de la corbeille Ad'),
(352, 'Permet un accès non autorisé à l`administration AD.', 'Utilisez des mots de passe forts pour les comptes administratifs et limitez leur utilisation.', 3, 'Comptes administratifs Active Directory non sécurisés'),
(353, 'Permet à des utilisateurs non autorisés d`obtenir des privilèges excessifs.', 'Révisez et contrôlez régulièrement les appartenances aux groupes privilégiés.', 3, 'Mauvaise gestion des groupes privilégiés'),
(354, 'Expose des informations et des services sensibles sur les contrôleurs de domaine.', 'Limitez l`exposition des services sensibles sur les contrôleurs de domaine.', 3, 'Services de contrôleur de domaine non protégés'),
(355, 'Permet des modifications non autorisées des objets de schéma AD.', 'Restreignez la modification du schéma au personnel autorisé uniquement.', 4, 'Sécurité du schéma AD faible'),
(356, 'Expose des informations sensibles comme des mots de passe dans les paramètres GPO.', 'Retirez les informations sensibles des préférences de stratégie de groupe et utilisez le filtrage de sécurité de la stratégie de groupe.', 3, 'Préférences de stratégie de groupe non sécurisées'),
(357, 'Permet aux attaquants de rediriger les requêtes DNS vers des adresses malveillantes.', 'Mettez en œuvre DNSSEC et surveillez régulièrement la santé du cache DNS.', 4, 'Empoisonnement du cache DNs'),
(358, 'Permet un accès non autorisé aux systèmes distants.', 'Activez WinRM de manière sécurisée et limitez l`accès aux hôtes de confiance.', 3, 'Mauvaise configuration de Windows Remote Management (WinRM)'),
(359, 'Permet un accès non autorisé entre des domaines de confiance.', 'Révisez et sécurisez régulièrement les relations de confiance entre les domaines.', 3, 'Relations de confiance AD non sécurisées'),
(360, 'Permet aux attaquants de recueillir des données sensibles AD.', 'Limitez l`accès aux requêtes LDAP et mettez en œuvre des filtres.', 3, 'Requêtes LDAP non restreintes'),
(361, 'Permet des modifications non autorisées des enregistrements DNS.', 'Restreignez l`accès à la gestion DNS et surveillez les modifications DNS.', 3, 'Mauvaise configuration de DNS intégré Ad'),
(362, 'Expose des informations sensibles sur les objets AD.', 'Contrôlez l`accès aux informations AD et limitez les informations exposées aux utilisateurs.', 3, 'Divulgation d`informations Active Directory'),
(363, 'Permet aux attaquants de forcer brutalement les tickets Kerberos.', 'Activez la pré-authentification Kerberos et appliquez des mots de passe forts.', 4, 'Vulnérabilités de pré-authentification Kerberos'),
(364, 'Permet aux attaquants d`extraire des hachages de mots de passe de la mémoire.', 'Mettez en œuvre Credential Guard et protégez les zones de mémoire sensibles.', 4, 'Dépassement de hachage de mot de passe'),
(365, 'Permet aux attaquants d`utiliser des comptes inactifs à des fins malveillantes.', 'Effectuez régulièrement un nettoyage AD et désactivez ou supprimez les comptes inutilisés.', 2, 'Objets AD obsolètes ou inutilisés'),
(366, 'Expose des données AD lors des opérations de sauvegarde et de restauration.', 'Gérez de manière sécurisée les fichiers de sauvegarde AD et assurez un chiffrement approprié.', 3, 'Processus de sauvegarde et de restauration non sécurisés'),
(367, 'Permet aux attaquants de recueillir des informations sur les domaines de confiance.', 'Minimisez les relations de confiance et limitez l`exposition des informations.', 2, 'Énumération de confiance Ad'),
(368, 'Permet aux attaquants d`abuser des paramètres GPO pour des modifications non autorisées.', 'Sécurisez les GPO et appliquez des politiques de mot de passe fortes sur les comptes GPO.', 3, 'Vulnérabilités de la stratégie de groupe'),
(369, 'Permet aux attaquants de réutiliser des tickets Kerberos interceptés.', 'Utilisez des contraintes de temps sur les tickets Kerberos pour limiter leur période de validité.', 4, 'Attaque de rejeu de ticket Kerberos'),
(370, 'Permet un accès non autorisé aux données AD sans authentification.', 'Exigez une authentification pour la liaison LDAP à AD.', 3, 'Liaison LDAP non authentifiée'),
(371, 'Permet aux attaquants de renifler des informations d`identification sur le réseau.', 'Chiffrez le trafic réseau et utilisez des protocoles sécurisés pour l`authentification.', 4, 'Reniflage d`informations d`identification à distance'),
(372, 'Permet à des utilisateurs non autorisés de modifier ou de supprimer des objets AD.', 'Révisez et resserrez régulièrement les permissions sur les objets AD.', 3, 'Permissions d`objets AD non sécurisées'),
(373, 'Provoque des incohérences de réplication entre les contrôleurs de domaine.', 'Surveillez et maintenez la santé de la réplication AD et résolvez les problèmes de synchronisation.', 3, 'Problèmes de synchronisation des contrôleurs de domaine'),
(374, 'Permet la délivrance non autorisée de certificats numériques.', 'Sécurisez et surveillez les services d`autorité de certification et maintenez des politiques de certificat solides.', 4, 'Vulnérabilités de l`autorité de certification'),
(375, 'Permet un accès non autorisé aux partitions AD.', 'Contrôlez l`accès aux partitions AD et mettez en œuvre une sécurité appropriée des partitions.', 3, 'Mauvaise configuration des partitions Ad'),
(376, 'Permet des déploiements dans l`AD non autorisés ou non gérés.', 'Appliquez des politiques pour les déploiements AD et surveillez le Shadow IT.', 2, 'Shadow IT dans Ad'),
(377, 'Permet aux attaquants de se faire passer pour d`autres utilisateurs ou applications.', 'Mettez en œuvre une sécurité appropriée des jetons et validez l`authenticité des jetons.', 4, 'Vulnérabilité d`usurpation de jeton'),
(378, 'Permet aux attaquants d`échapper à la détection en altérant les journaux d`audit.', 'Configurez et protégez de manière sécurisée les paramètres d`audit AD.', 3, 'Abus d`audit privilégié'),
(379, 'Permet des modifications non autorisées des enregistrements DNS.', 'Restreignez les mises à jour DNS dynamiques et surveillez les modifications DNS.', 3, 'Vulnérabilité de mise à jour dynamique DNs'),
(380, 'Permet aux attaquants d`accéder et de manipuler les données AD hors ligne.', 'Sécurisez l`accès physique aux contrôleurs de domaine et chiffrez les données sensibles.', 4, 'Vol de contrôleur de domaine'),
(381, 'Permet aux attaquants de voler et d`abuser des informations d`identification stockées.', 'Stockez les informations d`identification de manière sécurisée et utilisez des solutions de gestion des informations d`identification sécurisées.', 3, 'Stockage d`informations d`identification non fiable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pocs`
--
ALTER TABLE `pocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scope_vulnerabilidades`
--
ALTER TABLE `scope_vulnerabilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vulnerabilidades`
--
ALTER TABLE `vulnerabilidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pocs`
--
ALTER TABLE `pocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `scope`
--
ALTER TABLE `scope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vulnerabilidades`
--
ALTER TABLE `vulnerabilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
