-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Oct 16, 2015 at 09:18 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--

CREATE DATABASE `providers`;
USE `providers`;
--

-- --------------------------------------------------------

--
-- Table structure for table `AWS_GCP`
--

CREATE TABLE `AWS_GCP` (
  `Provider_Name` varchar(250) DEFAULT NULL,
  `Description` varchar(650) DEFAULT NULL,
  `Deployment_Model` varchar(250) DEFAULT NULL,
  `Service_Model` varchar(250) DEFAULT NULL,
  `Provider_Image` varchar(50) DEFAULT NULL,
  `Server_Location` varchar(650) DEFAULT NULL,
  `Subscription_Method` varchar(125) DEFAULT NULL,
  `Criteria` varchar(650) DEFAULT NULL,
  `Suitability` int(7) DEFAULT NULL,
  `Industry` varchar(650) DEFAULT NULL,
  `cloud_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AWS_GCP`
--

INSERT INTO `AWS_GCP` (`Provider_Name`, `Description`, `Deployment_Model`, `Service_Model`, `Provider_Image`, `Server_Location`, `Subscription_Method`, `Criteria`, `Suitability`, `Industry`, `cloud_id`) VALUES
('Google Cloud Platform', 'Google Cloud Platform is a set of modular cloud-based services that allow you to create anything from simple websites to complex applications.', 'Public cloud', 'PaaS', 'download.png', 'North America', 'Pay Per Use', 'Low cost', 1, 'Energy & Environment', 1),
('Amazon Web Services', 'AWS began offering its technology infrastructure platform in 2006. Since then.', 'Public cloud', 'SaaS', 'Amazon_Inc_1571001.png', 'USA West California', 'Pay Per Use', 'DRP', 1, 'Media & Entertainment', 2),
('CloudSigma', 'CloudSigma"s virtualization is based on KVM and includes full CPU instruction set, flexible CPU provisioning, NUMA topology exposure and QEMU VIRTIO (para-visualization).', 'Hybrid cloud ', 'IaaS', 'CloudSigma.jpg', 'North America', 'Pay Per Use', 'Low cost', 1, 'Banking & Finance', 3),
('WorkXpress', 'WorkXpress is a robust platform as a service (PaaS) offering you the ability to build your own complex database apps 100% visually.', 'Hybrid cloud ', 'PaaS', 'WorkXpress_6551902.jpg', 'North America', 'Pay Per Use and Fixed Rate', 'Cloud storage', 1, 'Energy & Environment', 4),
('Lunacloud', 'Lunacloud is a provider that not only delivers real cloud services that meet all the essential characteristics of Cloud Computing but strives to exceed your expectations by being technologically advanced and design mindfully.', 'Hybrid cloud ', 'PaaS', 'Lunacloud_1571955.png', 'Europe', 'Fixed Rate', 'Hourly Rate', 1, 'Media & Entertainment', 5),
('Windows Azure', 'With Windows Azure, you can spin up new Windows Server and Linux virtual machines in minutes and adjust your usage as your needs change.', 'Private cloud ', 'PaaS', 'Microsoft_1571003.png', 'Europe', 'Pay Per Use', 'Products', 0, 'Information and Communication Technology', 6),
('EngineYard', 'Engine Yard is the leading cloud application management platform empowering developers and DevOps to provision, manage, monitor and control applications in the public and private cloud.', 'Private cloud ', 'PaaS', 'Engine_Yard_Inc_6337183.png', 'North America', 'Fixed Rate', 'SLA', 0, 'Healthcare & Pharmaceuticals', 7),
('Rackspace', 'Whether youâ€™re building a corporate website or a demanding application, our public cloud can power your most critical workloads.', 'Hybrid cloud ', 'IaaS', 'Rackspace_59596.png', 'North America', 'Pay Per Use and Fixed Rate', 'Managed cloud', 1, 'Transportation & Logistics', 8),
('FireHost', 'FireHost provides secure cloud hosting without sacrificing the redundancy and speed you would expect from an enterprise managed cloud hosting provider.', 'Private cloud ', 'IaaS', 'FireHost_Inc_6362185.jpg', 'Europe', 'Fixed Rate', 'DRP', 1, 'Retail & Customer Services', 9),
('Skyvia', 'Skyvia is a cloud service for data integration and backup.', 'Private cloud ', 'PaaS', 'Skyvia_6926251.png', 'North America', 'Fixed Rate', 'Cloud storage', 1, 'Customer Relationship Management', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Cloud_Services`
--

CREATE TABLE `Cloud_Services` (
  `service_name` varchar(215) DEFAULT NULL,
  `service_description` varchar(650) DEFAULT NULL,
  `provider_name` varchar(250) DEFAULT NULL,
  `cloud_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cloud_Services`
--

INSERT INTO `Cloud_Services` (`service_name`, `service_description`, `provider_name`, `cloud_id`) VALUES
('BigQuery', 'Querying massive datasets can be time consuming and expensive without the right hardware and infrastructure. Google BigQuery solves this problem by enabling super-fast, SQL-like queries against append-only tables, using the processing power of Google"s infrastructure', 'Google Cloud Platform', 1),
('App Engine', 'Google App Engine is a platform for building scalable web apps and mobile backends. App Engine provides you with built-in services and APIs, like a NoSQL datastore, memcache, and a user authentication API, common to most apps.', 'Google Cloud Platform', 1),
('Amazon Simple Storage Service', 'Amazon Simple Storage Service (Amazon S3), provides developers and IT teams with secure, durable, highly-scalable object storage.', 'Amazon Web Services', 2),
('Elastic Compute Cloud (EC2)', 'Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers.', 'Amazon Web Services', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AWS_GCP`
--
ALTER TABLE `AWS_GCP`
  ADD PRIMARY KEY (`cloud_id`);
