<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>CanAR Website</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/img/favicon.png" rel="icon">
<link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/vendor/aos/aos.css" rel="stylesheet">
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href=/css/style.css " rel="stylesheet">
<style>
.rounded-lg {
	border-radius: 1rem !important;
}

.text-small {
	font-size: 0.9rem !important;
}

.custom-separator {
	width: 5rem;
	height: 6px;
	border-radius: 1rem;
}

.text-uppercase {
	letter-spacing: 0.2em;
}
/**
* Template Name: Dewi - v4.3.0
* Template URL: https://bootstrapmade.com/dewi-free-multi-purpose-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/

/*--------------------------------------------------------------
# General
--------------------------------------------------------------*/
body {
	font-family: "Open Sans", sans-serif;
	color: #444444;
}

a {
	color: #ff4a17;
	text-decoration: none;
}

a:hover {
	color: #ff724a;
	text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif;
}

/*--------------------------------------------------------------
# Back to top button
--------------------------------------------------------------*/
.back-to-top {
	position: fixed;
	visibility: hidden;
	opacity: 0;
	right: 15px;
	bottom: 15px;
	z-index: 996;
	background: #ff4a17;
	width: 40px;
	height: 40px;
	border-radius: 4px;
	transition: all 0.4s;
}

.back-to-top i {
	font-size: 24px;
	color: #fff;
	line-height: 0;
}

.back-to-top:hover {
	background: #ff6a40;
	color: #fff;
}

.back-to-top.active {
	visibility: visible;
	opacity: 1;
}

/*--------------------------------------------------------------
# Preloader
--------------------------------------------------------------*/
#preloader {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 9999;
	overflow: hidden;
	background: #fff;
}

#preloader:before {
	content: "";
	position: fixed;
	top: calc(50% - 30px);
	left: calc(50% - 30px);
	border: 6px solid #ff4a17;
	border-top-color: #ffe9e3;
	border-radius: 50%;
	width: 60px;
	height: 60px;
	-webkit-animation: animate-preloader 1s linear infinite;
	animation: animate-preloader 1s linear infinite;
}

@
-webkit-keyframes animate-preloader { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}
@
keyframes animate-preloader { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}

/*--------------------------------------------------------------
# Disable aos animation delay on mobile devices
--------------------------------------------------------------*/
@media screen and (max-width: 768px) {
	[data-aos-delay] {
		transition-delay: 0 !important;
	}
}

/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
#header {
	transition: all 0.5s;
	z-index: 997;
	padding: 20px 0;
}

#header.header-scrolled, #header.header-inner-pages {
	background: rgba(21, 34, 43, 0.85);
	padding: 10px 0;
}

#header .logo {
	font-size: 32px;
	margin: 0;
	padding: 0;
	line-height: 1;
	font-weight: 700;
	letter-spacing: 2px;
}

#header .logo a {
	color: #fff;
}

#header .logo img {
	max-height: 40px;
}

/*--------------------------------------------------------------
# Navigation Menu
--------------------------------------------------------------*/
/**
* Desktop Navigation 
*/
.navbar {
	padding: 0;
}

.navbar ul {
	margin: 0;
	padding: 0;
	display: flex;
	list-style: none;
	align-items: center;
}

.navbar li {
	position: relative;
}

.navbar>ul>li {
	white-space: nowrap;
	padding: 8px 12px;
}

.navbar a, .navbar a:focus {
	display: flex;
	align-items: center;
	position: relative;
	justify-content: space-between;
	padding: 0 3px;
	font-size: 14px;
	text-transform: uppercase;
	font-weight: 600;
	color: rgba(255, 255, 255, 0.9);
	white-space: nowrap;
	transition: 0.3s;
}

.navbar a i, .navbar a:focus i {
	font-size: 12px;
	line-height: 0;
	margin-left: 5px;
}

.navbar>ul>li>a:before {
	content: "";
	position: absolute;
	width: 100%;
	height: 2px;
	bottom: -6px;
	left: 0;
	background-color: #ff4a17;
	visibility: hidden;
	width: 0px;
	transition: all 0.3s ease-in-out 0s;
}

.navbar a:hover:before, .navbar li:hover>a:before, .navbar .active:before
	{
	visibility: visible;
	width: 100%;
}

.navbar a:hover, .navbar .active, .navbar .active:focus, .navbar li:hover>a
	{
	color: #fff;
}

.navbar .getstarted {
	padding: 8px 25px;
	margin-left: 30px;
	border-radius: 4px;
	color: #fff;
	border: 2px solid #fff;
}

.navbar .getstarted:hover {
	color: #fff;
	background: #fd3800;
	border-color: #ff4a17;
}

.navbar>ul>li>.getstarted:before {
	visibility: hidden;
}

.navbar .dropdown ul {
	display: block;
	position: absolute;
	left: 14px;
	top: calc(100% + 30px);
	margin: 0;
	padding: 10px 0;
	z-index: 99;
	opacity: 0;
	visibility: hidden;
	background: #fff;
	box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
	transition: 0.3s;
	border-radius: 4px;
}

.navbar .dropdown ul li {
	min-width: 200px;
}

.navbar .dropdown ul a {
	padding: 10px 20px;
	font-size: 14px;
	text-transform: none;
	color: #15222b;
	font-weight: 400;
}

.navbar .dropdown ul a i {
	font-size: 12px;
}

.navbar .dropdown ul a:hover, .navbar .dropdown ul .active:hover,
	.navbar .dropdown ul li:hover>a {
	color: #ff4a17;
}

.navbar .dropdown:hover>ul {
	opacity: 1;
	top: 100%;
	visibility: visible;
}

.navbar .dropdown .dropdown ul {
	top: 0;
	left: calc(100% - 30px);
	visibility: hidden;
}

.navbar .dropdown .dropdown:hover>ul {
	opacity: 1;
	top: 0;
	left: 100%;
	visibility: visible;
}

@media ( max-width : 1366px) {
	.navbar .dropdown .dropdown ul {
		left: -90%;
	}
	.navbar .dropdown .dropdown:hover>ul {
		left: -100%;
	}
}

/**
* Mobile Navigation 
*/
.mobile-nav-toggle {
	color: #fff;
	font-size: 28px;
	cursor: pointer;
	display: none;
	line-height: 0;
	transition: 0.5s;
}

@media ( max-width : 991px) {
	.mobile-nav-toggle {
		display: block;
	}
	.navbar ul {
		display: none;
	}
}

.navbar-mobile {
	position: fixed;
	overflow: hidden;
	top: 0;
	right: 0;
	left: 0;
	bottom: 0;
	background: rgba(4, 7, 9, 0.9);
	transition: 0.3s;
	z-index: 999;
}

.navbar-mobile .mobile-nav-toggle {
	position: absolute;
	top: 15px;
	right: 15px;
}

.navbar-mobile ul {
	display: block;
	position: absolute;
	top: 55px;
	right: 15px;
	bottom: 15px;
	left: 15px;
	padding: 10px 0;
	border-radius: 10px;
	background-color: #fff;
	overflow-y: auto;
	transition: 0.3s;
}

.navbar-mobile a {
	padding: 10px 20px;
	font-size: 15px;
	color: #15222b;
}

.navbar-mobile a:hover, .navbar-mobile .active, .navbar-mobile li:hover>a
	{
	color: #ff4a17;
}

.navbar-mobile .getstarted {
	margin: 15px;
}

.navbar-mobile .dropdown ul {
	position: static;
	display: none;
	margin: 10px 20px;
	padding: 10px 0;
	z-index: 99;
	opacity: 1;
	visibility: visible;
	background: #fff;
	box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
}

.navbar-mobile .dropdown ul li {
	min-width: 200px;
}

.navbar-mobile .dropdown ul a {
	padding: 10px 20px;
}

.navbar-mobile .dropdown ul a i {
	font-size: 12px;
}

.navbar-mobile .dropdown ul a:hover, .navbar-mobile .dropdown ul .active:hover,
	.navbar-mobile .dropdown ul li:hover>a {
	color: #ff4a17;
}

.navbar-mobile .dropdown>.dropdown-active {
	display: block;
}

/*--------------------------------------------------------------
# Hero Section
--------------------------------------------------------------*/
#hero {
	width: 100%;
	height: 100vh;
	background: url("../img/CanAr.jpg") top center;
	background-size: cover;
	position: relative;
	padding: 0;
}

#hero:before {
	content: "";
	background: rgba(13, 20, 26, 0.7);
	position: absolute;
	bottom: 0;
	top: 0;
	left: 0;
	right: 0;
}

#hero .hero-container {
	position: absolute;
	bottom: 0;
	top: 0;
	left: 0;
	right: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	text-align: center;
}

#hero h1 {
	margin: 0 0 10px 0;
	font-size: 48px;
	font-weight: 700;
	line-height: 56px;
	text-transform: uppercase;
	color: #fff;
}

#hero h2 {
	color: #eee;
	margin-bottom: 50px;
	font-size: 24px;
}

#hero .btn-get-started {
	font-family: "Open Sans", sans-serif;
	text-transform: uppercase;
	font-weight: 500;
	font-size: 14px;
	display: inline-block;
	padding: 10px 35px 10px 35px;
	border-radius: 4px;
	transition: 0.5s;
	color: #fff;
	background: #ff4a17;
	border: 2px solid #ff4a17;
}

#hero .btn-get-started:hover {
	border-color: #fff;
	background: rgba(255, 255, 255, 0.1);
}

#hero .btn-watch-video {
	font-size: 16px;
	display: inline-block;
	transition: 0.5s;
	margin-left: 25px;
	color: #fff;
	display: inline-flex;
	align-items: center;
	justify-content: center;
}

#hero .btn-watch-video i {
	line-height: 0;
	color: #fff;
	font-size: 32px;
	transition: 0.3s;
	margin-right: 8px;
}

#hero .btn-watch-video:hover i {
	color: #ff4a17;
}

@media ( min-width : 1024px) {
	#hero {
		background-attachment: fixed;
	}
}

@media ( max-width : 768px) {
	#hero h1 {
		font-size: 28px;
		line-height: 36px;
	}
	#hero h2 {
		font-size: 18px;
		line-height: 24px;
		margin-bottom: 30px;
	}
}

/*--------------------------------------------------------------
# Sections General
--------------------------------------------------------------*/
section {
	padding: 60px 0;
	overflow: hidden;
}

.section-bg {
	background-color: #f0f4f8;
}

.section-title {
	padding-bottom: 40px;
}

.section-title h2 {
	font-size: 14px;
	font-weight: 500;
	padding: 0;
	line-height: 1px;
	margin: 0 0 5px 0;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #5c8eb0;
	font-family: "Poppins", sans-serif;
}

.section-title h2::after {
	content: "";
	width: 120px;
	height: 1px;
	display: inline-block;
	background: #ff8664;
	margin: 4px 10px;
}

.section-title p {
	margin: 0;
	margin: 0;
	font-size: 36px;
	font-weight: 700;
	text-transform: uppercase;
	font-family: "Poppins", sans-serif;
	color: #263d4d;
}

/*--------------------------------------------------------------
# About
--------------------------------------------------------------*/
.about .container {
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
	padding-bottom: 15px;
}

.about .count-box {
	padding: 60px 0;
	width: 100%;
}

.about .count-box i {
	display: block;
	font-size: 48px;
	color: #a1bdd1;
	float: left;
	line-height: 0;
}

.about .count-box span {
	font-size: 28px;
	line-height: 25px;
	display: block;
	font-weight: 700;
	color: #365870;
	margin-left: 60px;
}

.about .count-box p {
	padding: 5px 0 0 0;
	margin: 0 0 0 60px;
	font-family: "Raleway", sans-serif;
	font-weight: 600;
	font-size: 14px;
	color: #2e4b5e;
}

.about .count-box a {
	font-weight: 600;
	display: block;
	margin-top: 20px;
	color: #2e4b5e;
	font-size: 15px;
	font-family: "Poppins", sans-serif;
	transition: ease-in-out 0.3s;
}

.about .count-box a:hover {
	color: #477392;
}

.about .content {
	font-size: 15px;
}

.about .content h3 {
	font-weight: 700;
	font-size: 24px;
	color: #263d4d;
}

.about .content ul {
	list-style: none;
	padding: 0;
}

.about .content ul li {
	padding-bottom: 10px;
	padding-left: 28px;
	position: relative;
}

.about .content ul i {
	font-size: 24px;
	color: #ff4a17;
	position: absolute;
	left: 0;
	top: -2px;
}

.about .content p:last-child {
	margin-bottom: 0;
}

.about .play-btn {
	width: 94px;
	height: 94px;
	background: radial-gradient(#ff4a17 50%, rgba(255, 74, 23, 0.4) 52%);
	border-radius: 50%;
	display: block;
	position: absolute;
	left: calc(50% - 47px);
	top: calc(50% - 47px);
	overflow: hidden;
}

.about .play-btn::after {
	content: '';
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translateX(-40%) translateY(-50%);
	width: 0;
	height: 0;
	border-top: 10px solid transparent;
	border-bottom: 10px solid transparent;
	border-left: 15px solid #fff;
	z-index: 100;
	transition: all 400ms cubic-bezier(0.55, 0.055, 0.675, 0.19);
}

.about .play-btn::before {
	content: '';
	position: absolute;
	width: 120px;
	height: 120px;
	-webkit-animation-delay: 0s;
	animation-delay: 0s;
	-webkit-animation: pulsate-btn 2s;
	animation: pulsate-btn 2s;
	-webkit-animation-direction: forwards;
	animation-direction: forwards;
	-webkit-animation-iteration-count: infinite;
	animation-iteration-count: infinite;
	-webkit-animation-timing-function: steps;
	animation-timing-function: steps;
	opacity: 1;
	border-radius: 50%;
	border: 5px solid rgba(255, 74, 23, 0.7);
	top: -15%;
	left: -15%;
	background: rgba(198, 16, 0, 0);
}

.about .play-btn:hover::after {
	border-left: 15px solid #ff4a17;
	transform: scale(20);
}

.about .play-btn:hover::before {
	content: '';
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translateX(-40%) translateY(-50%);
	width: 0;
	height: 0;
	border: none;
	border-top: 10px solid transparent;
	border-bottom: 10px solid transparent;
	border-left: 15px solid #fff;
	z-index: 200;
	-webkit-animation: none;
	animation: none;
	border-radius: 0;
}

@
-webkit-keyframes pulsate-btn { 0% {
	transform: scale(0.6, 0.6);
	opacity: 1;
}

100
%
{
transform
:
scale(
1
,
1
);
opacity
:
0;
}
}
@
keyframes pulsate-btn { 0% {
	transform: scale(0.6, 0.6);
	opacity: 1;
}

100
%
{
transform
:
scale(
1
,
1
);
opacity
:
0;
}
}

/*--------------------------------------------------------------
# About Boxes
--------------------------------------------------------------*/
.about-boxes {
	background: url("../img/about-boxes-bg.jpg") center top no-repeat fixed;
	background-size: cover;
	padding: 60px 0 30px 0;
	position: relative;
}

.about-boxes::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	background: rgba(255, 255, 255, 0.92);
	z-index: 9;
}

.about-boxes .container, .about-boxes .container-fluid {
	position: relative;
	z-index: 10;
}

.about-boxes .card {
	border-radius: 3px;
	border: 0;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
	margin-bottom: 30px;
}

.about-boxes .card-icon {
	text-align: center;
	margin-top: -32px;
}

.about-boxes .card-icon i {
	font-size: 32px;
	color: #fff;
	width: 64px;
	height: 64px;
	padding-top: 5px;
	text-align: center;
	background-color: #ff4a17;
	border-radius: 4px;
	text-align: center;
	border: 4px solid #fff;
	transition: 0.3s;
	display: inline-block;
}

.about-boxes .card-body {
	padding-top: 12px;
}

.about-boxes .card-title {
	font-weight: 700;
	text-align: center;
}

.about-boxes .card-title a {
	color: #15222b;
}

.about-boxes .card-title a:hover {
	color: #ff4a17;
}

.about-boxes .card-text {
	color: #5e5e5e;
}

.about-boxes .card:hover .card-icon i {
	background: #fff;
	color: #ff4a17;
}

@media ( max-width : 1024px) {
	.about-boxes {
		background-attachment: scroll;
	}
}

/*--------------------------------------------------------------
# Clients
--------------------------------------------------------------*/
.clients {
	background: #f0f4f8;
	padding: 15px 0;
	text-align: center;
}

.clients img {
	max-width: 45%;
	transition: all 0.4s ease-in-out;
	display: inline-block;
	padding: 15px 0;
	filter: grayscale(100);
}

.clients img:hover {
	filter: none;
	transform: scale(1.15);
}

@media ( max-width : 768px) {
	.clients img {
		max-width: 40%;
	}
}

/*--------------------------------------------------------------
# Features
--------------------------------------------------------------*/
.features .nav-tabs {
	border: 0;
}

.features .nav-link {
	border: 1px solid #b5ccdb;
	padding: 15px;
	transition: 0.3s;
	color: #15222b;
	border-radius: 0;
	display: flex;
	align-items: center;
	justify-content: center;
}

.features .nav-link i {
	padding-right: 15px;
	font-size: 48px;
}

.features .nav-link h4 {
	font-size: 18px;
	font-weight: 600;
	margin: 0;
}

.features .nav-link:hover {
	color: #ff4a17;
}

.features .nav-link.active {
	background: #ff4a17;
	color: #fff;
	border-color: #ff4a17;
}

@media ( max-width : 768px) {
	.features .nav-link i {
		padding: 0;
		line-height: 1;
		font-size: 36px;
	}
}

@media ( max-width : 575px) {
	.features .nav-link {
		padding: 15px;
	}
	.features .nav-link i {
		font-size: 24px;
	}
}

.features .tab-content {
	margin-top: 30px;
}

.features .tab-pane h3 {
	font-weight: 600;
	font-size: 26px;
}

.features .tab-pane ul {
	list-style: none;
	padding: 0;
}

.features .tab-pane ul li {
	padding-bottom: 10px;
}

.features .tab-pane ul i {
	font-size: 20px;
	padding-right: 4px;
	color: #ff4a17;
}

.features .tab-pane p:last-child {
	margin-bottom: 0;
}

/*--------------------------------------------------------------
# Services
--------------------------------------------------------------*/
.services .icon-box {
	margin-bottom: 20px;
	padding: 30px;
	border-radius: 6px;
	background: #fff;
}

.services .icon-box i {
	float: left;
	color: #5c8eb0;
	font-size: 40px;
	line-height: 0;
}

.services .icon-box h4 {
	margin-left: 70px;
	font-weight: 700;
	margin-bottom: 15px;
	font-size: 18px;
}

.services .icon-box h4 a {
	color: #365870;
	transition: 0.3s;
}

.services .icon-box .icon-box:hover h4 a {
	color: #ff4a17;
}

.services .icon-box p {
	margin-left: 70px;
	line-height: 24px;
	font-size: 14px;
}

.services .icon-box:hover h4 a {
	color: #ff4a17;
}

/*--------------------------------------------------------------
# Testimonials
--------------------------------------------------------------*/
.testimonials {
	padding: 80px 0;
	background: url("../img/testimonials-bg.jpg") no-repeat;
	background-position: center center;
	background-size: cover;
	position: relative;
}

.testimonials::before {
	content: "";
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	background: rgba(13, 20, 26, 0.7);
}

.testimonials .section-header {
	margin-bottom: 40px;
}

.testimonials .testimonial-item {
	text-align: center;
	color: #fff;
}

.testimonials .testimonial-item .testimonial-img {
	width: 100px;
	border-radius: 50%;
	border: 6px solid rgba(255, 255, 255, 0.15);
	margin: 0 auto;
}

.testimonials .testimonial-item h3 {
	font-size: 20px;
	font-weight: bold;
	margin: 10px 0 5px 0;
	color: #fff;
}

.testimonials .testimonial-item h4 {
	font-size: 14px;
	color: #ddd;
	margin: 0 0 15px 0;
}

.testimonials .testimonial-item .quote-icon-left, .testimonials .testimonial-item .quote-icon-right
	{
	color: rgba(255, 255, 255, 0.4);
	font-size: 26px;
}

.testimonials .testimonial-item .quote-icon-left {
	display: inline-block;
	left: -5px;
	position: relative;
}

.testimonials .testimonial-item .quote-icon-right {
	display: inline-block;
	right: -5px;
	position: relative;
	top: 10px;
}

.testimonials .testimonial-item p {
	font-style: italic;
	margin: 0 auto 15px auto;
	color: #eee;
}

@media ( min-width : 992px) {
	.testimonials .testimonial-item p {
		width: 80%;
	}
}

.testimonials .swiper-pagination {
	margin-top: 20px;
	position: relative;
}

.testimonials .swiper-pagination .swiper-pagination-bullet {
	width: 12px;
	height: 12px;
	background-color: #a1bdd1;
	opacity: .5;
}

.testimonials .swiper-pagination .swiper-pagination-bullet-active {
	background-color: #ff4a17;
	opacity: 1;
}

/*--------------------------------------------------------------
# Portfolio
--------------------------------------------------------------*/
.portfolio #portfolio-flters {
	padding: 0;
	margin: 0 auto 25px auto;
	list-style: none;
	text-align: center;
	border-radius: 50px;
}

.portfolio #portfolio-flters li {
	cursor: pointer;
	display: inline-block;
	padding: 8px 16px;
	font-size: 14px;
	font-weight: 500;
	line-height: 1;
	color: #444444;
	margin: 0 3px 10px 3px;
	transition: all ease-in-out 0.3s;
	background: #e5edf3;
	border-radius: 4px;
}

.portfolio #portfolio-flters li:hover, .portfolio #portfolio-flters li.filter-active
	{
	color: #fff;
	background: #ff4a17;
}

.portfolio #portfolio-flters li:last-child {
	margin-right: 0;
}

.portfolio .portfolio-item {
	margin-bottom: 30px;
	overflow: hidden;
}

.portfolio .portfolio-item img {
	position: relative;
	top: 0;
	transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.portfolio .portfolio-item .portfolio-info {
	opacity: 0;
	position: absolute;
	left: 15px;
	right: 15px;
	bottom: -50px;
	z-index: 3;
	transition: all ease-in-out 0.3s;
	background: #ff4a17;
	padding: 15px 20px;
}

.portfolio .portfolio-item .portfolio-info h4 {
	font-size: 18px;
	color: #fff;
	font-weight: 600;
}

.portfolio .portfolio-item .portfolio-info p {
	color: #fff;
	font-size: 14px;
	margin-bottom: 0;
}

.portfolio .portfolio-item .portfolio-info .preview-link, .portfolio .portfolio-item .portfolio-info .details-link
	{
	position: absolute;
	right: 50px;
	font-size: 24px;
	top: calc(50% - 18px);
	color: white;
	transition: ease-in-out 0.3s;
}

.portfolio .portfolio-item .portfolio-info .preview-link:hover,
	.portfolio .portfolio-item .portfolio-info .details-link:hover {
	color: #ffc1b0;
}

.portfolio .portfolio-item .portfolio-info .details-link {
	right: 15px;
}

.portfolio .portfolio-item:hover img {
	top: -30px;
}

.portfolio .portfolio-item:hover .portfolio-info {
	opacity: 1;
	bottom: 0;
}

/*--------------------------------------------------------------
# Portfolio Details
--------------------------------------------------------------*/
.portfolio-details {
	padding-top: 40px;
}

.portfolio-details .portfolio-details-slider img {
	width: 100%;
}

.portfolio-details .portfolio-details-slider .swiper-pagination {
	margin-top: 20px;
	position: relative;
}

.portfolio-details .portfolio-details-slider .swiper-pagination .swiper-pagination-bullet
	{
	width: 12px;
	height: 12px;
	background-color: #fff;
	opacity: 1;
	border: 1px solid #ff4a17;
}

.portfolio-details .portfolio-details-slider .swiper-pagination .swiper-pagination-bullet-active
	{
	background-color: #ff4a17;
}

.portfolio-details .portfolio-info {
	padding: 30px;
	box-shadow: 0px 0 30px rgba(21, 34, 43, 0.08);
}

.portfolio-details .portfolio-info h3 {
	font-size: 22px;
	font-weight: 700;
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #eee;
}

.portfolio-details .portfolio-info ul {
	list-style: none;
	padding: 0;
	font-size: 15px;
}

.portfolio-details .portfolio-info ul li+li {
	margin-top: 10px;
}

.portfolio-details .portfolio-description {
	padding-top: 30px;
}

.portfolio-details .portfolio-description h2 {
	font-size: 26px;
	font-weight: 700;
	margin-bottom: 20px;
}

.portfolio-details .portfolio-description p {
	padding: 0;
}

/*--------------------------------------------------------------
# Team
--------------------------------------------------------------*/
.team {
	position: relative;
}

.team .container {
	position: relative;
	z-index: 10;
}

.team .member {
	margin-bottom: 80px;
	position: relative;
}

.team .member .pic {
	overflow: hidden;
}

.team .member .member-info {
	position: absolute;
	bottom: -50px;
	left: 20px;
	right: 20px;
	background: #fff;
	padding: 20px 15px;
	color: #15222b;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	transition: 0.5s;
}

.team .member h4 {
	font-weight: 700;
	margin-bottom: 10px;
	font-size: 16px;
	color: #15222b;
	position: relative;
	padding-bottom: 10px;
}

.team .member h4::after {
	content: '';
	position: absolute;
	display: block;
	width: 50px;
	height: 1px;
	background: #7fa5c0;
	bottom: 0;
	left: 0;
}

.team .member span {
	font-style: italic;
	display: block;
	font-size: 13px;
}

.team .member .social {
	position: absolute;
	right: 15px;
	bottom: 15px;
}

.team .member .social a {
	transition: color 0.3s;
	color: #477392;
}

.team .member .social a:hover {
	color: #ff4a17;
}

.team .member .social i {
	font-size: 16px;
	margin: 0 2px;
}

@media ( max-width : 992px) {
	.team .member {
		margin-bottom: 110px;
	}
}

/*--------------------------------------------------------------
# Contact
--------------------------------------------------------------*/
.contact .info-box {
	color: #444444;
	text-align: center;
	box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
	padding: 20px 0 30px 0;
}

.contact .info-box i {
	font-size: 32px;
	color: #ff4a17;
	border-radius: 50%;
	padding: 8px;
}

.contact .info-box h3 {
	font-size: 20px;
	color: #777777;
	font-weight: 700;
	margin: 10px 0;
}

.contact .info-box p {
	padding: 0;
	line-height: 24px;
	font-size: 14px;
	margin-bottom: 0;
}

.contact .asd {
	box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
	padding: 30px;
}

.contact .asd .error-message {
	display: none;
	color: #fff;
	background: #ed3c0d;
	text-align: left;
	padding: 15px;
	font-weight: 600;
}

.contact .asd .error-message br+br {
	margin-top: 25px;
}

.contact .asd .sent-message {
	display: none;
	color: #fff;
	background: #18d26e;
	text-align: center;
	padding: 15px;
	font-weight: 600;
}

.contact .asd .loading {
	display: none;
	background: #fff;
	text-align: center;
	padding: 15px;
}

.contact .asd .loading:before {
	content: "";
	display: inline-block;
	border-radius: 50%;
	width: 24px;
	height: 24px;
	margin: 0 10px -6px 0;
	border: 3px solid #18d26e;
	border-top-color: #eee;
	-webkit-animation: animate-loading 1s linear infinite;
	animation: animate-loading 1s linear infinite;
}

.contact .asd input, .contact .asd textarea {
	border-radius: 0;
	box-shadow: none;
	font-size: 14px;
	border-radius: 4px;
}

.contact .asd input:focus, .contact .asd textarea:focus {
	border-color: #ff4a17;
}

.contact .asd input {
	padding: 10px 15px;
}

.contact .asd textarea {
	padding: 12px 15px;
}

.contact .asd button[type="submit"] {
	background: #ff4a17;
	border: 0;
	padding: 10px 24px;
	color: #fff;
	transition: 0.4s;
	border-radius: 4px;
}

.contact .asd button[type="submit"]:hover {
	background: #ff5e31;
}

@
-webkit-keyframes animate-loading { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}
@
keyframes animate-loading { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}

/*--------------------------------------------------------------
# Breadcrumbs
--------------------------------------------------------------*/
.breadcrumbs {
	padding: 15px 0;
	background: #f0f4f8;
	min-height: 40px;
	margin-top: 78px;
}

.breadcrumbs h2 {
	font-size: 28px;
	font-weight: 400;
}

.breadcrumbs ol {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
	padding: 0;
	margin: 0;
}

.breadcrumbs ol li+li {
	padding-left: 10px;
}

.breadcrumbs ol li+li::before {
	display: inline-block;
	padding-right: 10px;
	color: #263d4d;
	content: "/";
}

@media ( max-width : 992px) {
	.breadcrumbs {
		margin-top: 52px;
	}
	.breadcrumbs .d-flex {
		display: block !important;
	}
	.breadcrumbs ol {
		display: block;
	}
	.breadcrumbs ol li {
		display: inline-block;
	}
}

/*--------------------------------------------------------------
# Footer
--------------------------------------------------------------*/
#footer {
	background: #121d24;
	padding: 0 0 30px 0;
	color: #fff;
	font-size: 14px;
}

#footer .footer-top {
	background: #15222b;
	border-bottom: 1px solid #1d303c;
	padding: 60px 0 30px 0;
}

#footer .footer-top .footer-info {
	margin-bottom: 30px;
}

#footer .footer-top .footer-info h3 {
	font-size: 28px;
	margin: 0 0 15px 0;
	padding: 2px 0 2px 0;
	line-height: 1;
	font-weight: 700;
}

#footer .footer-top .footer-info p {
	font-size: 14px;
	line-height: 24px;
	margin-bottom: 0;
	font-family: "Raleway", sans-serif;
	color: #fff;
}

#footer .footer-top .social-links a {
	font-size: 18px;
	display: inline-block;
	background: rgba(255, 255, 255, 0.08);
	color: #fff;
	line-height: 1;
	padding: 8px 0;
	margin-right: 4px;
	border-radius: 4px;
	text-align: center;
	width: 36px;
	height: 36px;
	transition: 0.3s;
}

#footer .footer-top .social-links a:hover {
	background: #ff4a17;
	color: #fff;
	text-decoration: none;
}

#footer .footer-top h4 {
	font-size: 16px;
	font-weight: 600;
	color: #fff;
	position: relative;
	padding-bottom: 12px;
}

#footer .footer-top .footer-links {
	margin-bottom: 30px;
}

#footer .footer-top .footer-links ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

#footer .footer-top .footer-links ul i {
	padding-right: 2px;
	color: #ff5e31;
	font-size: 18px;
	line-height: 1;
}

#footer .footer-top .footer-links ul li {
	padding: 10px 0;
	display: flex;
	align-items: center;
}

#footer .footer-top .footer-links ul li:first-child {
	padding-top: 0;
}

#footer .footer-top .footer-links ul a {
	color: #fff;
	transition: 0.3s;
	display: inline-block;
	line-height: 1;
}

#footer .footer-top .footer-links ul a:hover {
	color: #ff4a17;
}

#footer .footer-top .footer-newsletter form {
	margin-top: 30px;
	background: #fff;
	padding: 6px 10px;
	position: relative;
	border-radius: 4px;
}

#footer .footer-top .footer-newsletter form input[type="email"] {
	border: 0;
	padding: 4px;
	width: calc(100% - 110px);
}

#footer .footer-top .footer-newsletter form input[type="submit"] {
	position: absolute;
	top: 0;
	right: -2px;
	bottom: 0;
	border: 0;
	background: none;
	font-size: 16px;
	padding: 0 20px;
	background: #ff4a17;
	color: #fff;
	transition: 0.3s;
	border-radius: 0 4px 4px 0;
}

#footer .footer-top .footer-newsletter form input[type="submit"]:hover {
	background: #ff5e31;
}

#footer .copyright {
	text-align: center;
	padding-top: 30px;
}

#footer .credits {
	padding-top: 10px;
	text-align: center;
	font-size: 13px;
	color: #fff;
}

#footer .credits a {
	transition: 0.3s;
}
</style>
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div
			class="container d-flex align-items-center justify-content-between">

			<h1 class="logo">
				<a href="index.html">CANAR</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo"><img src="/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="#hero">Home</a></li>
					<li><a class="nav-link scrollto" href="#about">About</a></li>
					<li><a class="nav-link scrollto" href="#a">Team</a></li>
					<li><a class="nav-link scrollto" href="#pricing">Pricing</a></li>
					<li><a class="nav-link scrollto" href="#contact">Contact</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero">
		<div class="hero-container" data-aos="fade-up" data-aos-delay="150">
			<h1>Can AR?</h1>
			<h2>Crush Into Realty</h2>
			<div class="d-flex">
				<a href="#about" class="btn-get-started scrollto">Get Started</a>
			</div>
		</div>
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= About Section ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up">
				<!-- ======= About Boxes Section ======= -->
				<section id="about-boxes" class="about-boxes">
					<div class="container" data-aos="fade-up">

						<div class="row">
							<div class="col-lg-4 col-lg-6 d-flex align-items-stretch"
								data-aos="fade-up" data-aos-delay="100">
								<div class="card">
									<img src="/img/about-boxes-1.jpg" class="card-img-top"
										alt="...">
									<div class="card-icon">
										<i class="ri-brush-4-line"></i>
									</div>
									<div class="card-body">
										<h5 class="card-title">
											<a href="">Our Mission</a>
										</h5>
										<p class="card-text">
											Developing the educational system and Process, and
make it more interactive, interesting, and stimulating.
Constantly expanding the targeted groups to include
all educational levels.
Developing and updating the product to ensure its
sustainability, and matching our vision to merge it in
different sectors, locally, regionally, and worldwide
										</p>
									</div>
								</div>
							</div>
							<!-- <div class="col-lg-4 col-md-6 d-flex align-items-stretch"
								data-aos="fade-up" data-aos-delay="200">
								<div class="card">
									<img src="/img/about-boxes-2.jpg" class="card-img-top"
										alt="...">
									<div class="card-icon">
										<i class="ri-calendar-check-line"></i>
									</div>
									<div class="card-body">
										<h5 class="card-title">
											<a href="">Our Plan</a>
										</h5>
										<p class="card-text">Sed ut perspiciatis unde omnis iste
											natus error sit voluptatem doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
											architecto beatae vitae dicta sunt explicabo.</p>
									</div>
								</div>
							</div> -->
							<div class="col-lg-4 col-lg-6 d-flex align-items-stretch"
								data-aos="fade-up" data-aos-delay="300">
								<div class="card">
									<img src="/img/about-boxes-3.jpg" class="card-img-top"
										alt="...">
									<div class="card-icon">
										<i class="ri-movie-2-line"></i>
									</div>
									<div class="card-body">
										<h5 class="card-title">
											<a href="">Our Vision</a>
										</h5>
										<p class="card-text">We adhere to our pursuit, to become a leader in
presenting latest technical solutions in learning sector
through Augmented Reality technique, then in other possible
fields such as entertaining and occupational fields, and
merging new items with the latest technology in many other
sectors, besides looking forward to spread worldwide.</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</section>
				<!-- End About Boxes Section -->
				<!-- ======= Team Section ======= -->
				<section id="a" class="team section-bg">
					<div class="container" data-aos="fade-up">

						<div class="section-title">
							<h2>Team</h2>
							<p>Check our Team</p>
						</div>

						<div class="row">

							<div class="col-lg-4 col-md-6">
								<div class="member" data-aos="fade-up" data-aos-delay="100">
									<div class="pic">
										<img src="/img/team/image2.jpg" width="407" height="407" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Walter White</h4>
										<span>Chief Executive Officer</span>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="member">
									<div class="pic">
										<img src="/img/team/image19.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Sarah Jhonson</h4>
										<span>Product Manager</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="member">
									<div class="pic">
										<img src="/img/team/image2.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>William Anderson</h4>
										<span>CTO</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6" data-aos="fade-up"
									data-aos-delay="300"></div>
							</div>

						</div>
						<div class="row">

							<div class="col-lg-4 col-md-6">
								<div class="member" data-aos="fade-up" data-aos-delay="100">
									<div class="pic">
										<img src="/img/team/team-1.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Walter White</h4>
										<span>Chief Executive Officer</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-2.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Sarah Jhonson</h4>
										<span>Product Manager</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-3.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>William Anderson</h4>
										<span>CTO</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6" data-aos="fade-up"
									data-aos-delay="300"></div>
							</div>

						</div>
						<div class="row">

							<div class="col-lg-4 col-md-6">
								<div class="member" data-aos="fade-up" data-aos-delay="100">
									<div class="pic">
										<img src="/img/team/team-1.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Walter White</h4>
										<span>Chief Executive Officer</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-2.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Sarah Jhonson</h4>
										<span>Product Manager</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-3.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>William Anderson</h4>
										<span>CTO</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6" data-aos="fade-up"
									data-aos-delay="300"></div>
							</div>

						</div>
						<div class="row">

							<div class="col-lg-4 col-md-6">
								<div class="member" data-aos="fade-up" data-aos-delay="100">
									<div class="pic">
										<img src="/img/team/team-1.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Walter White</h4>
										<span>Chief Executive Officer</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-2.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Sarah Jhonson</h4>
										<span>Product Manager</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-3.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>William Anderson</h4>
										<span>CTO</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6" data-aos="fade-up"
									data-aos-delay="300"></div>
							</div>

						</div>
						<div class="row">

							<div class="col-lg-4 col-md-6">
								<div class="member" data-aos="fade-up" data-aos-delay="100">
									<div class="pic">
										<img src="/img/team/team-1.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Walter White</h4>
										<span>Chief Executive Officer</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-2.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Sarah Jhonson</h4>
										<span>Product Manager</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-3.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>William Anderson</h4>
										<span>CTO</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6" data-aos="fade-up"
									data-aos-delay="300"></div>
							</div>

						</div>
						<div class="row">

							<div class="col-lg-4 col-md-6">
								<div class="member" data-aos="fade-up" data-aos-delay="100">
									<div class="pic">
										<img src="/img/team/team-1.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Walter White</h4>
										<span>Chief Executive Officer</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-2.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>Sarah Jhonson</h4>
										<span>Product Manager</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="member">
									<div class="pic">
										<img src="/img/team/team-3.jpg" class="img-fluid" alt="">
									</div>
									<div class="member-info">
										<h4>William Anderson</h4>
										<span>CTO</span>
										<div class="social">
											<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
												class="bi bi-facebook"></i></a> <a href=""><i
												class="bi bi-instagram"></i></a> <a href=""><i
												class="bi bi-linkedin"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6" data-aos="fade-up"
									data-aos-delay="300"></div>
							</div>

						</div>
					</div>
				</section>
				<!-- End Team Section -->
				<!-- ======= Team Section ======= -->
				<section id="pricing" class="team section-bg">
					<div class="container" data-aos="fade-up">

						<div class="section-title">
							<h2>Pricing</h2>
							<p>Check our Prices</p>
						</div>



						<div class="row text-center align-items-end">
							<!-- Pricing Table-->
							<div class="col-lg-4 mb-5 mb-lg-0">
								<div class="bg-white p-5 rounded-lg shadow">
									<h1 class="h6 text-uppercase font-weight-bold mb-4">Basic</h1>
									<h2 class="h1 font-weight-bold">
										$199<span class="text-small font-weight-normal ml-2">/
											month</span>
									</h2>

									<div class="custom-separator my-4 mx-auto bg-primary"></div>

									<ul class="list-unstyled my-5 text-small text-left">
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Lorem ipsum dolor sit amet</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Sed ut perspiciatis</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											At vero eos et accusamus</li>
										<li class="mb-3 text-muted"><i class="fa fa-times mr-2"></i>
											<del>Nam libero tempore</del></li>
										<li class="mb-3 text-muted"><i class="fa fa-times mr-2"></i>
											<del>Sed ut perspiciatis</del></li>
										<li class="mb-3 text-muted"><i class="fa fa-times mr-2"></i>
											<del>Sed ut perspiciatis</del></li>
									</ul>
								</div>
							</div>
							<!-- END -->


							<!-- Pricing Table-->
							<div class="col-lg-4 mb-5 mb-lg-0">
								<div class="bg-white p-5 rounded-lg shadow">
									<h1 class="h6 text-uppercase font-weight-bold mb-4">Pro</h1>
									<h2 class="h1 font-weight-bold">
										$399<span class="text-small font-weight-normal ml-2">/
											month</span>
									</h2>

									<div class="custom-separator my-4 mx-auto bg-primary"></div>

									<ul
										class="list-unstyled my-5 text-small text-left font-weight-normal">
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Lorem ipsum dolor sit amet</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Sed ut perspiciatis</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											At vero eos et accusamus</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Nam libero tempore</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Sed ut perspiciatis</li>
										<li class="mb-3 text-muted"><i class="fa fa-times mr-2"></i>
											<del>Sed ut perspiciatis</del></li>
									</ul>
								</div>
							</div>
							<!-- END -->


							<!-- Pricing Table-->
							<div class="col-lg-4">
								<div class="bg-white p-5 rounded-lg shadow">
									<h1 class="h6 text-uppercase font-weight-bold mb-4">Enterprise</h1>
									<h2 class="h1 font-weight-bold">
										$899<span class="text-small font-weight-normal ml-2">/
											month</span>
									</h2>

									<div class="custom-separator my-4 mx-auto bg-primary"></div>

									<ul
										class="list-unstyled my-5 text-small text-left font-weight-normal">
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Lorem ipsum dolor sit amet</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Sed ut perspiciatis</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											At vero eos et accusamus</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Nam libero tempore</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Sed ut perspiciatis</li>
										<li class="mb-3"><i class="fa fa-check mr-2 text-primary"></i>
											Sed ut perspiciatis</li>
									</ul>
								</div>
							</div>
							<!-- END -->


						</div>
				</section>
				<!-- End Team Section -->

				<!-- ======= Contact Section ======= -->
				<section id="contact" class="contact">
					<div class="container" data-aos="fade-up"">

						<div class=" section-title">
							<h2>Contact</h2>
							<p>Contact Us</p>
						</div>

						<div class="row">

							<div class="col-lg-6">

								<div class="row">
									<div class="col-md-12">
										<div class="info-box">
											<i class="bx bx-map"></i>
											<h3>Our Address</h3>
											<p>Birzeit, Ramallah</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="info-box mt-4">
											<i class="bx bx-envelope"></i>
											<h3>Email Us</h3>
											<p>info@example.com</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="info-box mt-4">
											<i class="bx bx-phone-call"></i>
											<h3>Call Us</h3>
											<p>+970590000000</p>
										</div>
									</div>
								</div>

							</div>

							<div class="col-lg-6 mt-4 mt-lg-0">
								<form:form action="/" method="post" modelAttribute="newMessage"
									class="asd">
									<div class="row">
										<div class="col-md-6 form-group">
											<form:errors path="name" />
											<form:input path="name" type="text" name="name"
												class="form-control" id="name" placeholder="Your Name"></form:input>
										</div>
										<div class="col-md-6 form-group mt-3 mt-md-0">
											<form:errors path="email" />
											<form:input path="email" type="email" class="form-control"
												name="email" id="email" placeholder="Your Email"></form:input>
										</div>
									</div>
									<div class="form-group mt-3">
										<form:errors path="subject" />
										<form:input path="subject" type="text" class="form-control"
											name="subject" id="subject" placeholder="Subject"></form:input>
									</div>
									<div class="form-group mt-3">
										<form:errors path="message" />
										<form:textarea path="message" class="form-control"
											name="message" rows="5" placeholder="Message"></form:textarea>
									</div>

									<div class="text-center">
										<button type="submit">Send Message</button>
									</div>
								</form:form>
							</div>

						</div>

					</div>
				</section>
				<!-- End Contact Section -->
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6">
						<div class="footer-info">
							<h3>CanAR</h3>
							<p>
								Brizeit <br> Ramallah<br> <br> <strong>Phone:</strong>
								+970590000000<br> <strong>Email:</strong> info@example.com<br>
							</p>
							<div class="social-links mt-3">
								<a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
								<a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
								<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>


				</div>
			</div>
		</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="/vendor/aos/aos.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="/vendor/php-email-form/validate.js"></script>
	<script src="/vendor/purecounter/purecounter.js"></script>
	<script src="/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="/js/main.js"></script>

</body>

</html>