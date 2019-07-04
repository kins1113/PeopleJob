<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>People Job-index</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value='/resources/main/images/icons/favicon.png'/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/vendor/bootstrap/css/bootstrap.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/fonts/fontawesome-5.0.8/css/fontawesome-all.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/fonts/iconic/css/material-design-iconic-font.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/vendor/animate/animate.css'/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/vendor/css-hamburgers/hamburgers.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/vendor/animsition/css/animsition.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/css/util.min.css'/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/css/main.css'/>">
<!--===============================================================================================-->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style type="text/css">
.pos-relative.size-a-2.bo-1-rad-22.of-hidden.bocl11.m-tb-6 {
    margin-left: 140px;
}

.banner-header {
    margin-top: -10px;
}

h2 {
        font-size: 18px;
        margin: 0 0 15px;
    }
    
    .loginWrap {
    margin-left: 20px;
    height: 110px;
    border: 1px solid #e3e4e8;
    background-color: #f3f4f6;
    box-sizing: border-box;
}

.blind {
    position: absolute;
    overflow: hidden;
    width: 1px;
    height: 1px;
    clip: rect(0 0 0 0);
    margin: -1px;
}

.memberType {
    width: 262px;
    margin: -1px 0 0 -1px;
    border: 1px solid #e3e4e8;
    background-color: #fff;
    box-sizing: border-box;
}

#point .pointWrap button {
    font-family: inherit;
    outline: none;
}

.memberType > li .tab {
    position: relative;
    display: block;
    vertical-align: top;
    line-height: 70px;
}
.memberType > li {
    float: left;
    width: 50%;
    height: 50px;
    text-align: center;
}
li {
    list-style: none;
}
button {
    overflow: visible;
    background: transparent;
    cursor: pointer;
}

.lyLoginForm {
    display: none;
    position: absolute;
    left: 0;
    top: 0;
    width: 260px;
    height: 364px;
    padding: 40px 13px 13px 13px;
    border: 1px solid #565d79;
    background-color: #fff;
    text-align: left;
    box-sizing: border-box;
    letter-spacing: -1px;
    z-index: 10;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

button {
    overflow: visible;
    background: transparent;
    cursor: pointer;
}
    
 
 
</style>
</head>
<body class="animsition">
	
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- <div class="topbar">
				<div class="content-topbar container h-100">
					<div class="left-topbar">
						<span class="left-topbar-item flex-wr-s-c">
							<span>
								New York, NY
							</span>

							<img class="m-b-1 m-rl-8" src="images/icons/icon-night.png" alt="IMG">

							<span>
								HI 58° LO 56°
							</span>
						</span>

						<a href="#" class="left-topbar-item">
							About
						</a>

						<a href="#" class="left-topbar-item">
							Contact
						</a>

						<a href="#" class="left-topbar-item">
							Sing up
						</a>

						<a href="#" class="left-topbar-item">
							Log in
						</a>
					</div>

					<div class="right-topbar">
						<a href="#">
							<span class="fab fa-facebook-f"></span>
						</a>

						<a href="#">
							<span class="fab fa-twitter"></span>
						</a>

						<a href="#">
							<span class="fab fa-pinterest-p"></span>
						</a>

						<a href="#">
							<span class="fab fa-vimeo-v"></span>
						</a>

						<a href="#">
							<span class="fab fa-youtube"></span>
						</a>
					</div>
				</div>
			</div> -->

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->		
				<div class="logo-mobile">
					<a href="index.html"><img src="<c:url value='/resources/main/images/icons/logo-01.png'/>" alt="IMG-LOGO"></a>
				</div>
<span class="dis-inline-block cl6 slide100-txt pos-relative size-w-0" data-in="fadeInDown" data-out="fadeOutDown">
					<span class="dis-inline-block slide100-txt-item animated visible-false">
						Interest rate angst trips up US equity bull market
					</span>
					
					<span class="dis-inline-block slide100-txt-item animated visible-false">
						Designer fashion show kicks off Variety Week
					</span>

					<span class="dis-inline-block slide100-txt-item animated visible-false">
						Microsoft quisque at ipsum vel orci eleifend ultrices
					</span>
				</span>
				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze m-r--8">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>

			<!-- Menu Mobile -->
			<!-- <div class="menu-mobile">
				<ul class="topbar-mobile">
					<li class="left-topbar">
						<span class="left-topbar-item flex-wr-s-c">
							<span>
								New York, NY
							</span>

							<img class="m-b-1 m-rl-8" src="images/icons/icon-night.png" alt="IMG">

							<span>
								HI 58° LO 56°
							</span>
						</span>
					</li>

					<li class="left-topbar">
						<a href="#" class="left-topbar-item">
							About
						</a>

						<a href="#" class="left-topbar-item">
							Contact
						</a>

						<a href="#" class="left-topbar-item">
							Sing up
						</a>

						<a href="#" class="left-topbar-item">
							Log in
						</a>
					</li>

					<li class="right-topbar">
						<a href="#">
							<span class="fab fa-facebook-f"></span>
						</a>

						<a href="#">
							<span class="fab fa-twitter"></span>
						</a>

						<a href="#">
							<span class="fab fa-pinterest-p"></span>
						</a>

						<a href="#">
							<span class="fab fa-vimeo-v"></span>
						</a>

						<a href="#">
							<span class="fab fa-youtube"></span>
						</a>
					</li>
				</ul>

				<ul class="main-menu-m">
					<li>
						<a href="index.html">채용정보</a>
						<ul class="sub-menu-m">
							<li><a href="index.html">Homepage v1</a></li>

						<span class="arrow-main-menu-m">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</span>
					</li>

					<li>
						<a href="category-01.html">인재정보</a>
					</li>

					<li>
						<a href="category-02.html">자료실 </a>
					</li>

					<li>
						<a href="category-01.html">이력서관리</a>
					</li>

					<li>
						<a href="category-02.html">채용공고 관리</a>
					</li>

					<li>
						<a href="category-01.html">게시판</a>
					</li>
				
					<li>
						<a href="#">Features</a>
						<ul class="sub-menu-m">
							<li><a href="category-01.html">Category Page v1</a></li>
							<li><a href="category-02.html">Category Page v2</a></li>
							<li><a href="blog-grid.html">Blog Grid Sidebar</a></li>
							<li><a href="blog-list-01.html">Blog List Sidebar v1</a></li>
							<li><a href="blog-list-02.html">Blog List Sidebar v2</a></li>
							<li><a href="blog-detail-01.html">Blog Detail Sidebar</a></li>
							<li><a href="blog-detail-02.html">Blog Detail No Sidebar</a></li>
							<li><a href="about.html">About Us</a></li>
							<li><a href="contact.html">Contact Us</a></li>
						</ul>

						<span class="arrow-main-menu-m">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</span>
					</li>
				</ul>
			</div> -->
			
			<!--  -->
			<div class="wrap-logo container">
				<!-- Logo desktop -->		
				<div class="logo">
					<a href="<c:url value='/main/mainindex.do'/>">
					<img src="<c:url value='/resources/main/images/peoplejob_logo.JPG'/>" alt="LOGO">
					</a>
				</div>	
			<div class="pos-relative size-a-2 bo-1-rad-22 of-hidden bocl11 m-tb-6" style="width: 500px">
				<input class="f1-s-1 cl6 plh9 s-full p-l-25 p-r-45" type="text" name="search" placeholder="Search">
				<button class="flex-c-c size-a-1 ab-t-r fs-20 cl2 hov-cl10 trans-03">
					<i class="zmdi zmdi-search"></i>
				</button>
			</div>
				<!-- Banner -->
				<div class="banner-header">
					<a href="https://themewagon.com/themes/free-bootstrap-4-html5-news-website-template-magnews2/">
					<img src="<c:url value='/resources/main/images/banner_.png'/>" alt="IMG" ></a>
				</div>
			</div>	
			
			<!--  -->
			<div class="wrap-main-nav">
				<div class="main-nav">
					<!-- Menu desktop -->
					<nav class="menu-desktop">
						<a class="logo-stick" href="index.html">
							<img src="<c:url value='/resources/main/images/peoplejob_logo.JPG'/>" alt="LOGO">
						</a>

						<ul class="main-menu">
							<li class="main-menu-active">
								<a href="index.html">채용정보</a>
								<ul class="sub-menu">
									<li><a href="index.html">직종별</a></li>
									<li><a href="home-02.html">지역별</a></li>
									<li><a href="home-03.html">업무별</a></li>
								</ul>
							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">인재정보</a>
							</li>

							<li>
								<a href="#">자료실</a>
								<ul class="sub-menu">
									<li><a href="category-01.html">이력서 양식</a></li>
									<li><a href="category-02.html">취업 뉴스</a></li>
									
								</ul>
							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">이력서관리</a>

							</li>

							<li class="mega-menu-item">
								<a href="category-02.html">채용공고 관리</a>

							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">게시판</a>

								<div class="sub-mega-menu">
									<div class="nav flex-column nav-pills" role="tablist">
										<a class="nav-link active" data-toggle="pill" href="#life-1" role="tab">All</a>
									</div>

									<div class="tab-content">
										<div class="tab-pane show active" id="life-1" role="tabpanel">
											<div class="row">
												<div class="col-3">
													<!-- Item post -->	
													<div>
														<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
															<img src="images/post-25.jpg" alt="IMG">
														</a>

														<div class="p-t-10">
															<h5 class="p-b-5">
																<a href="blog-detail-01.html" class="f1-s-5 cl3 hov-cl10 trans-03">
																	Donec metus orci, malesuada et lectus vitae
																</a>
															</h5>

															<span class="cl8">
																<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																	Music
																</a>

																<span class="f1-s-3 m-rl-3">
																	-
																</span>

																<span class="f1-s-3">
																	Feb 18
																</span>
															</span>
														</div>
													</div>
												</div>

												<div class="col-3">
													<!-- Item post -->	
													<div>
														<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
															<img src="images/post-27.jpg" alt="IMG">
														</a>

														<div class="p-t-10">
															<h5 class="p-b-5">
																<a href="blog-detail-01.html" class="f1-s-5 cl3 hov-cl10 trans-03">
																	Donec metus orci, malesuada et lectus vitae
																</a>
															</h5>

															<span class="cl8">
																<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																	Music
																</a>

																<span class="f1-s-3 m-rl-3">
																	-
																</span>

																<span class="f1-s-3">
																	Jan 20
																</span>
															</span>
														</div>
													</div>
												</div>

												<div class="col-3">
													<!-- Item post -->	
													<div>
														<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
															<img src="images/post-26.jpg" alt="IMG">
														</a>

														<div class="p-t-10">
															<h5 class="p-b-5">
																<a href="blog-detail-01.html" class="f1-s-5 cl3 hov-cl10 trans-03">
																	Donec metus orci, malesuada et lectus vitae
																</a>
															</h5>

															<span class="cl8">
																<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																	Music
																</a>

																<span class="f1-s-3 m-rl-3">
																	-
																</span>

																<span class="f1-s-3">
																	Feb 12
																</span>
															</span>
														</div>
													</div>
												</div>

												<div class="col-3">
													<!-- Item post -->	
													<div>
														<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
															<img src="images/post-34.jpg" alt="IMG">
														</a>

														<div class="p-t-10">
															<h5 class="p-b-5">
																<a href="blog-detail-01.html" class="f1-s-5 cl3 hov-cl10 trans-03">
																	Donec metus orci, malesuada et lectus vitae
																</a>
															</h5>

															<span class="cl8">
																<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
																	Music
																</a>

																<span class="f1-s-3 m-rl-3">
																	-
																</span>

																<span class="f1-s-3">
																	Jan 15
																</span>
															</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>

						</ul>
					</nav>
				</div>
			</div>	
		</div>
	</header>