<!-- https://technext.github.io/magnews2/index.html -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="inc/top.jsp"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript"
	src="<c:url value='/resources/main/js/jquery-3.4.1.min.js'/>"></script>
<script type="text/javascript">
$(function() {

	
	$('form[name=loginform]').submit(function(){
		
		$('.getId').each(function(){
			if($(this).val().length<1){
				var msg=$(this).attr('title');
				alert(msg+'를 입력하세요.');
				event.preventDefault();
				return false;
			}
			
		});
		
	});
	 
	 
	$('#vvipone').hover(function(){
				
			$(this).css("border","2px solid blue");
			},
		function(){
			$('#vvipone').css("border","");
			
		
	});
		
	
	

});
</script>

<!------ Include the above in your HEAD tag ---------->
<style type="text/css">
/* .col-sm-6.p-r-25.p-r-15-sr991 {
    border: 1px solid lightgray;
} */
.logo img {
	max-width: 300%;
	max-height: 50%;
	width: 215px;
}

.how2.how2-cl4.flex-s-c.m-r-10.m-r-0-sr991 {
	margin-left: 0px;
}

.col-md-10.col-lg-8.p-b-20 {
	width: 767px;
}

a.f1-m-3.cl2.hov-cl10.trans-03 {
	font-size: 1.2em;
}

img.imgsize {
	width: 160px;
}

.row {
	display: block;
}
/*  .m-b-45 {
    width: 200px;
}  */
.m-all-45, .m-b-45, .m-tb-45 {
	margin-bottom: 10px;
}

.pos-relative.size-a-2.bo-1-rad-22.of-hidden.bocl11.m-tb-6 {
	margin-left: 140px;
}

.col-sm-6.p-r-25.p-r-15-sr991 {
	width: 25%;
	height: 195px;
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
	width: 267px;
    margin-left: 42px;
    height: 110px;
    border: 1px solid #e3e4e8;
    background-color: #f8f8f8;  
    box-sizing: border-box;
}

.blind {
	position: absolute;
	overflow: hidden;
	width: 1px;
	height: 1px;
	clip: rect(0, 0, 0, 0);
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

.memberType>li .tab {
	position: relative;
	display: block;
	vertical-align: top;
	line-height: 70px;
}

.memberType>li {
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

.panel.panel-login {
	width: 20%;
	height: 50%;
}

.panel-login {
	border-color: #ccc;
	margin-left: 50px;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login>.panel-heading hr {
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
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

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
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

.btn-register:hover, .btn-register:focus {
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

.getId {
	border: 1px solid lightgray;
	height: 27px;
}

button.btnLogin {
	width: 56px;
	position: absolute;
	border: 1px solid lightgray;
	font-weight: bold;
	height: 54px;
	background: white;
	margin-top: -54px;
	margin-left: 171px;
}

.cnt {
	margin-top: 10px;
	margin-left: 10px;
}

.mbrLinks.clear {
	margin-top: -53px;
}

span.tx {
	margin-left: -120px;
}

input[type="checkbox"] {
	display: inline;
}

.p-t-35 {
	margin-left: -34px;
}

.rankingColumn {
	margin-top: -45px;
	border: 1px solid #dbe0e9;
	background-color: #fff;
	box-sizing: border-box;
	width: 280px;
	float: right;
}

.rankListWap {
	position: relative;
}

/* 페이지수 */
.rankListWap .carousel-pagination {
	position: absolute;
	top: 16px;
	right: 65px;
	font: 11px verdana, sans-serif;
	color: #999;
}

/* 리스트 패딩 */
.rankListWap .infoList {
	font-size: 13px;
	padding: 12px 14px 10px 16px;
}

/* 더보기 */
.rankListWap .btnMore {
	margin: 3px 14px 0 0;
	text-align: right;
}

table {
	width: 753px;
    height: 300px;
    border: 1px solid lightgray;
    margin-left: 7px;
}

table td {
	width: 30%;
	height: 50%;
}

.img_main {
    display: block;
    overflow: hidden;
    background: url(//www.saraminimage.co.kr/sri/main/img_main_spr_190125.png) no-repeat 0 0;
}  

h1 {
    display: inline;
}

a {
    float: right;
}

.col-md-10.col-lg-8.p-b-20 {
    width: 1300px;
}

img.imgsize {
    width: 300px;
}

.col-sm-6.p-r-25.p-r-15-sr991 {
    border: 1px solid lightgray;
}
 
 div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        border-right: 1px solid lightgray;
    }
    div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        
    }
 
 .deadline{
	margin-bottom: 8px;
 }
 
 .logintop{
 	height: 70%;
 }
</style>
</head>
<body class="animsition">

	<!-- Header -->


	<!-- Headline -->


	<!-- Feature post -->

	<!-- Post -->

	<!-- Banner -->
	<div class="container" style="max-width: 150%;"> <!-- 원래105% -->
	<div class="colortop">
		<div class="flex-c-c" style="margin-top: 10px;width: 1300px;">
			<a href="#"> <img class="max-w-full"
				src="<c:url value='/resources/main/images/190125_apple_752x110.png'/>"
				alt="IMG" style="    margin-right: 212px; max-width: 150%;margin-left: -130px;"> 
				<%-- <img class="max-w-full" src="<c:url value='/resources/main/images/ezenbanner.PNG'/>" style="width: 100px;" alt="IMG"> --%>
			</a>
			
			<div style="    width: 205px;
    border: 1px solid lightgray;
    margin-left: -185px;
    height: 110px;
    margin-right: -22px;">
    	<div class="left" style=" width: 50%;
        float: left; 
        box-sizing: border-box; height: 100%;">
        <br><img alt="" src="<c:url value='/resources/main/images/글자수세기.PNG'/>" style="margin-left: 22px; width: 55px;"><br>&nbsp;글자수 세기</div>
        <div class="right" style=" width: 50%;float: right;box-sizing: border-box; height: 100%;">
        <a href="<c:url value='/login/Test.do'/>" onclick="alert('ㅜㅜ');">테스트!!!!!!</a>
          <br><img alt="" src="<c:url value='/resources/main/images/맞춤법검사.PNG'/>"  style="margin-left: 22px; width: 55px;"><br>&nbsp;맞춤법 검사</div>  


    </div>
			<!-- 로그인  -->
			<div class="loginWrap">
			
				<c:if test="${empty sessionScope.memberid }">
					<div class="cnt">
						<form action="<c:url value='/login/mainlogin.do'/>" method="post"
							name="loginform">
							<div class="inputWrap user-id">
								<input type="text" id="getId" class="getId" name="memberId"
									placeholder="아이디" title="아이디">
							</div>
							<div class="inputWrap user-password">
								<input type="password" id="pwd" class="getId" name="pwd"
									placeholder="비밀번호" title="비밀번호">
							</div>
							<button type="submit" class="btnLogin">로그인</button>
							<input type="checkbox" name="saveId" value=""> <span>아이디
								저장</span>
						</form>
						<a href="<c:url value='/login/registerU.do'/>"> <strong>회원가입</strong></a>
						<span class="idBx"> <a
							href="<c:url value='/login/findId.do'/>">ID/PW 찾기</a></span>
					</div>
					<ul class="memberType clear">

					</ul>
				</c:if> 
				<c:if test="${!empty sessionScope.memberName }">
				<div class="logintop">
					<img alt="회원이미지" src="<c:url value='/resources/main/images/people.PNG'/>" width="100px;">
		        	<span style="margin-bottom: 10px;display: inline-block;">${sessionScope.memberName }님, 환영합니다.</span>
					<input type="button" value="로그아웃" onclick="location='<c:url value='/login/logout.do'/>'" style="    margin-left: 174px;
    margin-top: -28px;
    background: white;
    border: 1px solid gray;
    padding: 2px;">
				</div>
				</c:if>
			</div>
			<!-- loginWrap -->
		</div>

		<!-- Latest -->
		<section class="bg0 p-t-60 p-b-35" style="margin-top: -40px;">
			<div class="container">
				<div class="row justify-content-center" style="    width: 1300px;
    margin-left: -120px;">
					<div class="col-md-10 col-lg-8 p-b-20" style="width: 800px;">
						<div class="how2 how2-cl4 flex-s-c m-r-10 m-r-0-sr991" style="margin-bottom: 5px;">
							<h3 class="f1-m-2 cl3 tab01-title" style="float: right">
								추천공고 </h3>
							<h5></h5>
							<h5 style="margin-left: 510px;">
								<a href="<c:url value='/service/payment.do'/> ">  </a>
							</h5>
						</div>

						<div class="row p-t-35"
							style="padding: 0px; margin-left: 0px; width: 91%;">

							<table border="1">
								<tr>
									<td>
										<div style="padding: 20px;">
											<strong style="display: block;">(주) 이트리즈시스템</strong> 
											<span style="display: block;">이트리즈 시스템 SI 웹개발자 </span>
											 <span style="display: block;">(java/jsp/spring)신입 채용 </span>
											 <div>
											 <button type="button" class="img_main btn_scrap on" value="36473003"><span class="blind">스크랩</span> </button>
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/scrapstarwhite.PNG'/>" style="margin-top:40px;">
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/즉시지원.PNG'/>" style="float:right;margin-top:40px;margin-right:5px;">
											 </div> 
										</div>
										</td>
									<td>
										<div style="padding: 20px;">
											<strong style="display: block;">(주) 이트리즈시스템</strong> 
											<span style="display: block;">이트리즈 시스템 SI 웹개발자 </span>
											 <span style="display: block;">(java/jsp/spring)신입 채용 </span>
											 <div>
											 <button type="button" class="img_main btn_scrap on" value="36473003"><span class="blind">스크랩</span> </button>
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/scrapstar.PNG'/>" style="margin-top:40px;">
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/즉시지원.PNG'/>" style="float:right;margin-top:40px;margin-right:5px;">
											 </div> 
										</div>
										</td>
									<td>
										<div style="padding: 20px;">
											<strong style="display: block;">(주) 이트리즈시스템</strong> 
											<span style="display: block;">이트리즈 시스템 SI 웹개발자 </span>
											 <span style="display: block;">(java/jsp/spring)신입 채용 </span>
											 <div>
											 <button type="button" class="img_main btn_scrap on" value="36473003"><span class="blind">스크랩</span> </button>
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/scrapstar.PNG'/>" style="margin-top:40px;">
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/즉시지원.PNG'/>" style="float:right;margin-top:40px;margin-right:5px;">
											 </div> 
										</div>
										</td>
								</tr>
								<tr>
									<td>
										<div style="padding: 20px;">
											<strong style="display: block;">(주) 이트리즈시스템</strong> 
											<span style="display: block;">이트리즈 시스템 SI 웹개발자 </span>
											 <span style="display: block;">(java/jsp/spring)신입 채용 </span>
											 <div>
											 <button type="button" class="img_main btn_scrap on" value="36473003"><span class="blind">스크랩</span> </button>
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/scrapstarwhite.PNG'/>" style="margin-top:40px;">
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/즉시지원.PNG'/>" style="float:right;margin-top:40px;margin-right:5px;">
											 </div> 
										</div>
										</td>
									<td>
										<div style="padding: 20px;">
											<strong style="display: block;">(주) 이트리즈시스템</strong> 
											<span style="display: block;">이트리즈 시스템 SI 웹개발자 </span>
											 <span style="display: block;">(java/jsp/spring)신입 채용 </span>
											 <div>
											 <button type="button" class="img_main btn_scrap on" value="36473003"><span class="blind">스크랩</span> </button>
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/scrapstarwhite.PNG'/>" style="margin-top:40px;">
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/즉시지원.PNG'/>" style="float:right;margin-top:40px;margin-right:5px;">
											 </div> 
										</div>
										</td>
									<td>
										<div style="padding: 20px;">
											<strong style="display: block;">(주) 이트리즈시스템</strong> 
											<span style="display: block;">이트리즈 시스템 SI 웹개발자 </span>
											 <span style="display: block;">(java/jsp/spring)신입 채용 </span>
											 <div>
											 <button type="button" class="img_main btn_scrap on" value="36473003"><span class="blind">스크랩</span> </button>
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/scrapstarwhite.PNG'/>" style="margin-top:40px;">
											 	<img alt="스크랩임시사진" src="<c:url value='/peoplejob_upload/즉시지원.PNG'/>" style="float:right;margin-top:40px;margin-right:5px;">
											 </div> 
										</div>
										</td>
								</tr>
							</table>
							<%-- <c:forEach var="map" items="${list }">
					 			<div class="col-sm-6 p-r-25 p-r-15-sr991" style="    margin-bottom: -38px;">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/peoplejob_upload/${map["IMAGE"] }'/>" alt="IMG" class="imgsize">
								</a>
 
	 							<div class="p-t-16" style="padding-top: 0px;">
									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03" style="font-size: 1.0em">
											${map['JOBTITLE'] }
										</a>
									</h5>

									<span class="cl8" style="">
										<a href="#" class="f1-s-4 cl8 hov-cl10 trans-03">
											by ${map['COMPANYNAME'] }
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
										~<fmt:formatDate value="${map['END_DATE'] }" pattern="yyyy-MM-dd"/> 
											
										</span>
									</span>
								</div>
							</div>
						</div>
					 
						</c:forEach>  
						
						<div class="col-sm-6 p-r-25 p-r-15-sr991">
							<!-- Item latest -->	
							<div class="m-b-45">
								<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
									<img src="<c:url value='/resources/main/images/samsung.png'/>" alt="IMG" class="imgsize">
								</a>

								<div class="p-t-16">
									<h5 class="p-b-5">
										<a href="blog-detail-01.html" class="f1-m-3 cl2 hov-cl10 trans-03" style="font-size: 1.0em">
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

--%>



						</div>


					</div>
		<!-- 중간 -->
		<div style="border: 1px solid lightgray;
    width: 210px;
    float: right;
    margin-right: 288px;
    height: 366px;
    display: inline;">
    <!-- 	<table border="1" style="width:200px;"> 
    		<tr>
    			<td colspan="2">마감 임박 공채</td>
    		</tr>
    		<tr>
    			<td>삼성전자</td>
    			<td>~7.17</td>
    		</tr> 
    		<tr>
    			<td>삼성전자</td>
    			<td>~7.17</td>
    		</tr>
    		<tr>
    			<td>삼성전자</td>
    			<td>~7.17</td>
    		</tr>
    	</table> -->
    	<div class="devRankingWrap devStarter" style="display: block;width:200px;">  
 
						<div class="rankingColumn devRanking" id="ranking_carousel_1" style="width: 200px;margin-top: 0px;
   							 height: 364px; border: 1px solid white;"> 
							<h3 class="blind">신입 랭킹</h3>
							<div id="ranking_carousel" class="rankListWap">
								<div class="carousel-pagination">
								</div>
								<ul class="carousel-wrapper" style="padding:0px">


									<li class="carousel-slide on">  
										<h4 class="hd_4">마감 임박 공채</h4>
										<ul class="infoList endList">
										
										  <c:forEach var="map" items="${deadlineList }">
											<li class="deadline">
											<span class="titBx"><a href="" class="devClick devHref" data-click-value="98">
											${map['JOBTITLE'] }</a></span> 
													<span class="txBx">~${map['END_DATE']}</span></li>
										</c:forEach>   
										
										<%--   <c:forEach var="map" items="${list }">
										<li class="deadline"><span class="titBx"><a href="#" class="devClick devHref" data-click-value="98">
											${map['JOBTITLE'] }</a></span> 
													<span class="txBx"></span></li>
										</c:forEach>  --%>
										
										
											<%-- <li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">㈜GS리테일</a></span> <span class="txBx">~16시</span></li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">호텔신라</a></span> <span class="txBx">~17시</span></li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">에스케이이노베이션</a></span> <span class="txBx">~24시</span>
											</li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">한국국제협력단</a></span> <span class="txBx">~15시</span>
											</li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">주식회사 캠시스</a></span> <span class="txBx">~07.08</span>
											</li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">대한무역투자진흥공사</a></span> <span class="txBx">~24시</span>
											</li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank"> 한국건설기술연구원</a></span> <span class="txBx">~24시</span>
											</li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98"
													target="_blank">(재)씨젠의료재단</a></span> <span class="txBx">~24시</span>
											</li>
											<li class="deadline"><span class="titBx"><a
													href="<c:url value='https://www.naver.com'/>"
													class="devClick devHref" data-click-value="98"
													target="_blank">(재)전라북도생물산업진흥원</a></span> <span class="txBx">~18시</span>
											</li>
											<li class="deadline"><span class="titBx"><a href="#"
													class="devClick devHref" data-click-value="98" target="">위본건설㈜</a></span>
												<span class="txBx">~24시</span></li> --%>
										</ul>
									</li>

								</ul>

							</div>
						</div>
					</div> 
    </div>
						<div class="p-l-10 p-rl-0-sr991 p-b-20" style="width: 271px;float: right;margin-top: -369px;padding: 0px;">
							<!-- Video -->
							<div class="p-b-23">
								<div class="how2 how2-cl4 flex-s-c m-b-35">
									<h3 class="f1-m-2 cl3 tab01-title">공지사항</h3>
								</div>
								<ul class="p-t-35" style="padding-top: 0px"> 
									<li style="margin-bottom: 5px;" >
										<!-- <div class="size-a-8 flex-c-c borad-3 size-a-8 bg9 f1-m-4 cl0 m-b-6">
										1
									</div> -->1&nbsp; <a href="#"
										class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03" style="margin-left: 30px;"> &nbsp;기업회원
											회원가입시 주의사항 </a>
									</li>

									<li style="margin-bottom: 5px">2&nbsp; <a href="#"
										class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03" style="margin-left: 30px;"> &nbsp; 배너광고
											문의 </a>
									</li>

									<li style="margin-bottom: 5px">3&nbsp; <a href="#"
										class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03" style="margin-left: 30px;"> &nbsp;자주하는
											질문 </a>
									</li>

								</ul>
							</div>

						<div class="devRankingWrap devStarter" style="display: block;">

						<div class="rankingColumn devRanking" id="ranking_carousel_1" style="width: 258px;margin-top: -27px; border: 1px solid lightgray; height:240px;">
							<img alt="" src="<c:url value='/resources/main/images/getImage.png'/>">
						</div>
					</div>
						</div> <!-- 여기까지 공지사항 -->
					
					<!-- 공지사항 -->
					<%-- <div class="col-md-10 col-lg-4">
					<img alt="사이드배너" src="<c:url value='/resources/main/images/skybanner.png'/>">
					</div> --%>
				</div>
 
</div> 
				<!-- 복사 -->
				<div class="row justify-content-center" style="width: 1300px;margin-left:15px;"> 
						<%-- <div class="how2 how2-cl4 flex-s-c m-r-10 m-r-0-sr991">
							<h3 class="f1-m-2 cl3 tab01-title" style="float: right">
								채용정보</h3>
							<h5>VIP</h5>
							<h5 style="margin-left: 525px;">
								
							</h5>   
						</div> --%>  
						<div style="margin-left: -115px;width: 1280px;">
						<h1>VVIP</h1>  <a href="<c:url value='/service/payment.do'/> " style="font-size:1.1em;color:black;"> >상품문의 </a>
						</div>
						
						<div class="row p-t-35"
							style="padding-top: 0px; width: 1300px; margin-left: -125px;">
							<div class="col-sm-6 p-r-25 p-r-15-sr991" id="vvipone">
								<!-- Item latest -->
								<div class="m-b-45">
									<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
										<img src="<c:url value='/resources/main/images/samsung.png'/>"
										alt="IMG" class="imgsize">
									</a>
									<div class="p-t-16">
										<h5 class="p-b-5">
											<a href="blog-detail-01.html"
												class="f1-m-3 cl2 hov-cl10 trans-03"
												style="font-size: 1.0em"> 삼성전자 개발자 채용 </a>
										</h5>

										<span class="cl8"> <a href="#"
											class="f1-s-4 cl8 hov-cl10 trans-03"> by SAMSUNG </a> <span
											class="f1-s-3 m-rl-3"> - </span> <span class="f1-s-3">
												2019-07-01 ~ 2019-07-13 </span>
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 p-r-25 p-r-15-sr991" id="vvipone">
								<!-- Item latest -->
								<div class="m-b-45">
									<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
										<img src="<c:url value='/resources/main/images/naver.jpg'/>"
										alt="IMG" class="imgsize">
									</a>

									<h5 class="p-b-5">
										<a href="blog-detail-01.html"
											class="f1-m-3 cl2 hov-cl10 trans-03"> 2019 네이버 개발자 채용 </a>
									</h5>

									<span class="cl8"> <a href="#"
										class="f1-s-4 cl8 hov-cl10 trans-03"> by NAVER </a> <span
										class="f1-s-3 m-rl-3"> - </span> <span class="f1-s-3">
											2019-06-30 ~ 2019-07-15 </span>
									</span>
								</div>
							</div>

							<div class="col-sm-6 p-r-25 p-r-15-sr991" id="vvipone"> 
								<!-- Item latest -->
								<div class="m-b-45">
									<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
										<img src="<c:url value='/resources/main/images/한화.png'/>"
										alt="IMG" class="imgsize">
									</a>

									<div class="p-t-16">
										<h5 class="p-b-5">
											<a href="blog-detail-01.html"
												class="f1-m-3 cl2 hov-cl10 trans-03"> 한화 2019 공채 </a>
										</h5>

										<span class="cl8"> <a href="#"
											class="f1-s-4 cl8 hov-cl10 trans-03"> by HanWha </a> <span
											class="f1-s-3 m-rl-3"> - </span> <span class="f1-s-3">
												Feb 15 </span>
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 p-r-25 p-r-15-sr991">
								<!-- Item latest -->
								<div class="m-b-45">
									<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
										<img
										src="<c:url value='/resources/main/images/kaokaobank.png'/>"
										alt="IMG" class="imgsize">
									</a>

									<div class="p-t-16">
										<h5 class="p-b-5">
											<a href="blog-detail-01.html"
												class="f1-m-3 cl2 hov-cl10 trans-03"> 한화 2019 공채 </a>
										</h5>

										<span class="cl8"> <a href="#"
											class="f1-s-4 cl8 hov-cl10 trans-03"> by HanWha </a> <span
											class="f1-s-3 m-rl-3"> - </span> <span class="f1-s-3">
												Feb 15 </span>
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 p-r-25 p-r-15-sr991">
								<!-- Item latest -->
								<div class="m-b-45">
									<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
										<img src="<c:url value='/resources/main/images/ezen.jpg'/>"
										alt="IMG" class="imgsize">
									</a>

									<div class="p-t-16">
										<h5 class="p-b-5">
											<a href="blog-detail-01.html"
												class="f1-m-3 cl2 hov-cl10 trans-03"> 한화 2019 공채 </a>
										</h5>

										<span class="cl8"> <a href="#"
											class="f1-s-4 cl8 hov-cl10 trans-03"> by HanWha </a> <span
											class="f1-s-3 m-rl-3"> - </span> <span class="f1-s-3">
												Feb 15 </span>
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 p-r-25 p-r-15-sr991">
								<!-- Item latest -->
								<div class="m-b-45">
									<a href="blog-detail-01.html" class="wrap-pic-w hov1 trans-03">
										<img src="<c:url value='/resources/main/images/lg.png'/>"
										alt="IMG" class="imgsize">
									</a>

									<div class="p-t-16">
										<h5 class="p-b-5">
											<a href="blog-detail-01.html"
												class="f1-m-3 cl2 hov-cl10 trans-03"> 한화 2019 공채 </a>
										</h5>

										<span class="cl8"> <a href="#"
											class="f1-s-4 cl8 hov-cl10 trans-03"> by HanWha </a> <span
											class="f1-s-3 m-rl-3"> - </span> <span class="f1-s-3">
												Feb 15 </span>
										</span>
									</div>
								</div>
							</div>
						</div>



				</div>
			</div>
	</div>
	
	</section>
	</div>
</body>
<!-- Footer -->
<%@include file="../main/inc/bottom.jsp"%>
