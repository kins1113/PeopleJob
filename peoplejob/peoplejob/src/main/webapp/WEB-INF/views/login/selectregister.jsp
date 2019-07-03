<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/css/login.css'/>" />

<script type="text/javascript" src="<c:url value='/resources/main/js/jquery-3.4.1.min.js'/>"></script>
<script type="text/javascript">
$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

</script>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">개인회원</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">기업회원</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="memberid" id="memberid" tabindex="1" class="form-control" placeholder="아이디">
									</div>
									<div class="form-group">
										<input type="password" name="pwd" id="pwd" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="pwd2" id="pwd2" tabindex="2" class="form-control" placeholder="비밀번호확인">
									</div>
									<div class="form-group">
										<input type="text" name="membername" id="membername" tabindex="1" class="form-control" placeholder="이름">
									</div>
										<!-- <div class="radio radio-danger" style="float:left">
 
										<input type="radio" name="membergender" id="membergender" value="Yes" checked>
										<input type="radio" name="membergender" id="membergender" value="No">
										<label>남</label>
										<label>여</label>
										</div> -->
 
									<div class="form-group">
										<table>
											<tr style="font-size:1.3em">
												<td>성별</td>
												<td>&nbsp;&nbsp;</td>
												<td rowspan="3"><input type="radio" name="membergender" id="membergender" value="남" checked>남</td>
												<td>&nbsp;&nbsp;</td>
												<td rowspan="3"><input type="radio" name="membergender" id="membergender" value="여" checked>여</td>
											</tr>
										</table>
									</div>
									<div class="form-group">
										<input type="text" name="birth" id="birth" tabindex="1" class="form-control" placeholder="생년월일">
									</div>
									<div class="form-group">
										<input type="text" name="tel" id="tel" tabindex="1" class="form-control" placeholder="전화번호">
										
									</div>
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="zipcode" id="zipcode" tabindex="1" placeholder="우편번호" 
										class="form-control" style="width:150px" style="background-color: #50a954">
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" name="findzipcode" value="우편번호 찾기" class="btn btn-register" id="findzipcode">
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="1" class="form-control" placeholder="주소">
									</div>
									<div class="form-group">
										<input type="text" name="addressdetail" id="addressdetail" tabindex="1" class="form-control" placeholder="상세주소">
									</div>
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="email" id="email" tabindex="1" placeholder="이메일" 
										class="form-control" style="width:300px" style="background-color: #50a954">
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" name="emailcertificate" value="이메일 인증" class="btn btn-register" id="emailcertificate">
										</div>
									</div>
									
									<div class="form-group">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" 
												tabindex="4" class="form-control btn btn-register" value="가입하기" style="background-color: #50a954">
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="<c:url value='/login/login.do'/>" tabindex="5" class="forgot-password">로그인하기</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="memberid" id="memberid" tabindex="1" class="form-control" placeholder="아이디">
									</div>
									<div class="form-group">
										<input type="password" name="pwd" id="pwd" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="pwd2" id="pwd2" tabindex="2" class="form-control" placeholder="비밀번호확인">
									</div>
									<div class="form-group">
										<input type="text" name="membername" id="membername" tabindex="1" class="form-control" placeholder="이름">
									</div>
										<!-- <div class="radio radio-danger" style="float:left">
 
										<input type="radio" name="membergender" id="membergender" value="Yes" checked>
										<input type="radio" name="membergender" id="membergender" value="No">
										<label>남</label>
										<label>여</label>
										</div> -->
 
									<div class="form-group">
										<table>
											<tr style="font-size:1.3em">
												<td>성별</td>
												<td>&nbsp;&nbsp;</td>
												<td rowspan="3"><input type="radio" name="membergender" id="membergender" value="남" checked>남</td>
												<td>&nbsp;&nbsp;</td>
												<td rowspan="3"><input type="radio" name="membergender" id="membergender" value="여">여</td>
											</tr>
										</table>
									</div>
									<div class="form-group">
										<input type="text" name="birth" id="birth" tabindex="1" class="form-control" placeholder="생년월일">
									</div>
									<div class="form-group">
										<input type="text" name="tel" id="tel" tabindex="1" class="form-control" placeholder="전화번호">
										
									</div>
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="zipcode" id="zipcode" tabindex="1" placeholder="우편번호" 
										class="form-control" style="width:150px" style="background-color: #50a954">
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" name="findzipcode" value="우편번호 찾기" class="btn btn-register" id="findzipcode">
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="1" class="form-control" placeholder="주소">
									</div>
									<div class="form-group">
										<input type="text" name="addressdetail" id="addressdetail" tabindex="1" class="form-control" placeholder="상세주소">
									</div>
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="email" id="email" tabindex="1" placeholder="이메일" 
										class="form-control" style="width:300px" style="background-color: #50a954">
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" name="emailcertificate" value="이메일 인증" class="btn btn-register" id="emailcertificate">
										</div>
									</div>
									
									<div class="form-group">
										<input type="text" name="companyNo" id="companyno" tabindex="1" class="form-control" placeholder="사업자번호">
									</div>
									<div class="form-group">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" 
												tabindex="4" class="form-control btn btn-register" value="가입하기" style="background-color: #50a954">
										</div>
									</div>
									
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@include file="../main/inc/bottom.jsp" %>