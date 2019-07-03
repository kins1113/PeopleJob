<!-- https://technext.github.io/magnews2/index.html -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>People Job-index</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
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
img.imgsize {
    width: 160px;
}
.row{
	display: block;
}
.m-b-45 {
    width: 200px;
}
.m-all-45, .m-b-45, .m-tb-45 {
    margin-bottom: 10px;
}

.pos-relative.size-a-2.bo-1-rad-22.of-hidden.bocl11.m-tb-6 {
    margin-left: 140px;
}

.col-sm-6.p-r-25.p-r-15-sr991 {
    width: 30%;
}

.col-md-10.col-lg-4 {
    width: 260px;
    margin-left: 48px;
}


.how2.how2-cl4.flex-s-c.m-b-35 {
    margin-bottom: 0px;
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
}

button {
    overflow: visible;
    background: transparent;
    cursor: pointer;
}
	/* .login-form {
	float:right;
		width: 340px;
    	margin: 30px auto;
	}
    .login-form form {        
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }    
    .form-control, .btn {
        height: 36px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
    .remember-me {
        margin: 8pxfh 0 0 12px;
    } */
    
   .panel.panel-login {
    width: 20%;
    height: 50%;
    
}
.panel-login {
	border-color: #ccc;
	margin-left: 50px;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-login>.panel-heading a{
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-login>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-login>.panel-heading hr{
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-login input:hover,
.panel-login input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}
.btn-login:hover,
.btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}
.forgot-password {
	text-decoration: underline;
	color: #888;
}
.forgot-password:hover,
.forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}
.btn-register:hover,
.btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}

.how2.how2-cl4.flex-s-c.m-r-10.m-r-0-sr991 {
    height: 35px;
    width: 753px;
    margin-left: 7px;
}

.how2.how2-cl4.flex-s-c.m-b-35 {
    height: 35px;
}
 
</style>
</head>
<body class="animsition">
	
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->		
				<div class="logo-mobile">
					<a href="<c:url value='/main/mainindex.do'/>"><img src="<c:url value='/resources/main/images/peoplejob_logo.JPG'/>" alt="IMG-LOGO"></a>
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
			
			<div class="wrap-logo container">
				<!-- Logo desktop -->		
				<div class="logo">
					<a href="<c:url value='/main/mainindex.do'/>"><img src="<c:url value='/resources/main/images/peoplejob_logo.JPG'/>" alt="LOGO"></a>
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
						<a class="logo-stick" href="<c:url value='/main/mainindex.do'/>">
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

							<li>
								<a href="#">게시판</a>
								<ul class="sub-menu">
									<li><a href="category-01.html">자유게시판</a></li>
									<li><a href="category-02.html">QnA</a></li>
									<li><a href="category-02.html">공지사항</a></li>
								</ul>
							</li>


							<li>
								<a href="#">Features</a>
								<ul class="sub-menu">
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
							</li>
						</ul>
					</nav>
				</div>
			</div>	
		</div>
	</header>

	<!-- Headline -->
	
		
	<!-- Feature post -->

	<!-- Post -->

	<!-- Banner -->
	<div class="container" style="max-width: 105%">
		<div class="flex-c-c" style="margin-top: 10px">
			<a href="#">
				<img class="max-w-full" src="<c:url value='/resources/main/images/190125_apple_752x110.png'/>" alt="IMG">
			</a>
			
		<!-- 로그인  -->
		<div class="loginWrap">
        <h3 class="blind">회원 로그인</h3>
        <ul class="memberType clear">
            <li>
                <button type="button" class="tab devToggleLayer devHref devClick" data-click-value="53" data-target="#divLoginForm" title="개인회원 로그인">
                    <span class="mainBtn mainBtnPer"></span>
                    <a href="<c:url value='/login/login.do'/>" >
                    <span class="tx"> 로그인</span></a>
                </button>
                <div class="lyLoginForm" id="divLoginForm">
                    <h4>개인회원 로그인</h4>
                    <form id="loginForm" name="loginForm" action="https://www.jobkorea.co.kr/Login/Login.asp" method="post">
                        <input type="hidden" id="DB_Name" name="DB_Name" value="GG">
                        <input type="hidden" id="IP_ONOFF" name="IP_ONOFF" value="Y">
                        <input type="hidden" id="re_url" name="re_url">
                        <fieldset>
                            <legend class="blind">로그인 및 관련 정보</legend>
                            <div class="loginIptWrap clear">
                                <div class="loginIpt">
                                    <label type="text" for="lb_id" class="ph id">잡코리아 ID 또는 알바몬 ID</label>
                                    <input type="text" name="M_ID" id="lb_id" class="iptTx" title="아이디 입력" maxlength="20" style="ime-mode:inactive;" value="">
                                    <label for="lb_pw" class="ph pw">비밀번호</label>
                                    <input type="password" name="M_PWD" id="lb_pw" class="iptTx" title="비밀번호 입력">
                                </div>
                                <button type="button" onclick="go_login_send(); return false;" class="btnLogin"><span>로그인</span></button>
                            </div>
                            <br><br>
                            <div class="loginSetWrap">
                                <span class="setBx"><input type="checkbox" name="lb_idSave" id="lb_idSave" value="Y" checked=""><label for="lb_idSave" class="devBox bxIpt chk">아이디저장</label></span>[개발] 선택 시 .chk 추가
                                <span class="setBx">
                                    <button type="button" onclick="window.open('http://www.jobkorea.co.kr/popup/popup_ipsecret01.asp','popName','width=500,height=460'); return false;"><span>IP 보안</span></button>
                                    <button type="button" class="mainBtnA mainBtnSec devSecurity on" onclick="ipCheckSetting();"><span class="blind">ON</span></button>[개발] 선택 시 .on 추가
                                    <span class="lyTooltip devHide" id="ipNotice" style="display:none;">개인정보 보호를 위해 IP보안을 <em>ON</em> 으로 변경해주세요.<span class="mainIcn mainIcnArrUp"></span></span>
                                </span>
                                <span class="links">
                                    <span class="idBx"><a href="https://www.jobkorea.co.kr/Login/Search/Search_Id.asp" class="devHref devClick" data-click-value="56">ID</a></span><span class="pwBx"><a href="https://www.jobkorea.co.kr/Login/Search/Search_Pwd.asp" class="devHref devClick" data-click-value="56">PW 찾기</a></span>
                                </span>
                            </div>

                            <ul class="btnSocial clear">
                                <li><button type="button" class="mainBtnB mainBtnNv devNvLogin devHref devClick" data-click-value="57"><span class="icn icnNa"></span>네이버 로그인</button></li>
                                <li><button type="button" class="mainBtnB mainBtnFb devFbLogin devHref devClick" data-click-value="58" onclick="facebookLogin()"><span class="icn icnFb"></span>페이스북 로그인</button></li>
                                <li><button type="button" class="mainBtnB mainBtnKo devKaLogin devHref devClick" data-click-value="59"><span class="icn icnKo"></span>카카오 로그인</button></li>
                                <li><button type="button" class="mainBtnB mainBtnGg devGlLogin devHref devClick" data-click-value="60"><span class="icn icnGl"></span>구글 로그인</button></li>
                            </ul>

                        </fieldset>
                    </form>
                </div>
            </li>
        </ul>
        <br><br><br>
        <div class="mbrLinks clear">
            <span class="mbr dotum">
                <a href="https://www.jobkorea.co.kr/Join/M_Regist" class="devHref devClick" data-click-value="55">
                <a href="<c:url value='/login/selectregister.do'/>" >
                <strong>회원가입</strong></a>
                </a><span class="idBx">
                 <a href="#">ID/PW 찾기</a></span>
            </span>
        
        </div> 
        
       
			</div>
		</div>

	<!-- Latest -->
	<section class="bg0 p-t-60 p-b-35" style="margin-top: -40px;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 col-lg-8 p-b-20">
					<div class="how2 how2-cl4 flex-s-c m-r-10 m-r-0-sr991">
						<h3 class="f1-m-2 cl3 tab01-title" style="float:right">
							채용정보
						</h3>
						<h5><a href="<c:url value='/service/payment.do'/> "> >상품문의 </a></h5>
					</div>

					<div class="row p-t-35" style="padding-top: 0px">
						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/samsung.png'/>" alt="IMG" class="imgsize">
								</a>

								<div class="p-t-16">
									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03">
											삼성전자 개발자 채용 
										</a>
									</h5>

									<span class="cl8">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by SAMSUNG
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											2019-07-01 ~ 2019-07-13
										</span>
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/naver.jpg'/>" alt="IMG" class="imgsize">
								</a>

									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03">
											2019 네이버 개발자 채용 
										</a>
									</h5>

									<span class="cl8">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by NAVER
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											2019-06-30 ~ 2019-07-15
										</span>
									</span>
							</div>
						</div>

						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/한화.png'/>" alt="IMG" class="imgsize">
								</a>

								<div class="p-t-16">
									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03">
											한화 2019 공채 
										</a>
									</h5>

									<span class="cl8">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by HanWha
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											Feb 15
										</span>
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/kaokaobank.png'/>" alt="IMG">
								</a>

								<div class="p-t-16">
									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03">
											한화 2019 공채 
										</a>
									</h5>

									<span class="cl8">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by HanWha
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											Feb 15
										</span>
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/ezen.jpg'/>" alt="IMG">
								</a>

								<div class="p-t-16">
									<h5 class="">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03">
											한화 2019 공채 
										</a>
									</h5>

									<span class="cl8">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by HanWha
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											Feb 15
										</span>
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/latest-06.jpg'/>" alt="IMG">
								</a>

								<div class="p-t-16">
									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03">
											You wish lorem ipsum dolor sit amet consectetur 
										</a>
									</h5>

									<span class="cl8">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by John Alvarado
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											Feb 09
										</span>
									</span>
								</div>
							</div>
						</div>
					</div>
					
					
				</div>

				<div class="col-md-10 col-lg-4">
					<div class="p-l-10 p-rl-0-sr991 p-b-20">
						<!-- Video -->
						<div class="p-b-23">
							<div class="how2 how2-cl4 flex-s-c m-b-35">
								<h3 class="f1-m-2 cl3 tab01-title">
									공지사항
								</h3>
							</div>
							<ul class="p-t-35" style="padding-top: 0px">
								<li class="">
									<!-- <div class="size-a-8 flex-c-c borad-3 size-a-8 bg9 f1-m-4 cl0 m-b-6">
										1
									</div> -->
									<a href="#" class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03">
										기업회원 회원가입시  주의사항
									</a>
								</li>

								<li class="">
									<a href="#" class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03">
										 배너광고 문의
									</a>
								</li>

								<li class="">
									<a href="#" class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03">
										 자주하는 질문
									</a>
								</li>

							</ul>	
						</div>
							
						
					</div>
				</div> 
				<!-- 공지사항 -->
				<%-- <div class="col-md-10 col-lg-4">
					<img alt="사이드배너" src="<c:url value='/resources/main/images/skybanner.png'/>">
					</div> --%>
				</div>
			</div>
		</div>
	</section>
</div>

	<!-- Footer -->
<%@include file="../main/inc/bottom.jsp" %>
	