<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/main/css/login.css'/>" />

<style type="text/css">
input[type=button]{
	    height: 44px;
    font-size: small;
}

span{
	color:red;
	margin-top: 12px;
}


/*체크박스 디자인*/
.checkbox.custom {
  float: left;
  margin: 0;
  padding: 0;
  display: block;
  width: 100%;
  margin-bottom: 20px;
}

input[type="checkbox"].custom {
  margin-left: 0;
  padding: 0;
}

input[type=checkbox].css-checkbox {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  height: 1px;
  width: 1px;
  margin: -1px;
  padding: 0px;
  border: 0;
}

input[type=checkbox].css-checkbox+label.css-label{
  padding-left: 70px;
  height: 65px;
  display: inline-block;
  line-height: 70px;
  background-repeat: no-repeat;
  background-position: 0 0;
  font-size: 15px;
  vertical-align: middle;
  cursor: pointer;
  opacity: 1;
}


input[type=checkbox].css-checkbox:checked+label.css-label{
  background-position: 0 -66px;
}

.css-label {
  background-image: url(http://codeopus.net/file/blog/check1.png);
}
</style>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('roadAddress').value = fullRoadAddr;
            }
        }).open();
    }
</script>
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
	
	
	
	$('#registersubmit').click(function(){
		var msg="";
		 if($('#memberid').val()==''){
			msg="아이디를";
			$('#memberid').focus();
		}else if($('#pwd').val()==''){
			msg="비밀번호를";
			$('#pwd').focus();
		}else if($('#pwd2').val()==''){
			msg="비밀번호확인칸을";
			$('#pwd2').focus();
		}else if($('#membername').val()==''){
			msg="이름을";
			$('#membername').focus();
		}else if($('#tel').val()==''){
			msg="전화번호를";
			$('#tel').focus();
		}else if($('#email').val()==''){
			msg="이메일";
			$('#email').focus();
		}else if($('#emailcertificatenum').val()==''){
			msg="이메일 인증번호를";
			$('#emailcertificatenum').focus();
		}
		 
		alert(msg+' 입력해주세요');
		event.preventDefault();
		return false;
		
		
	});
	
	$('#registerCompanysubmit').click(function(){
		var msg="";
		 if($('#memberid').val()==''){
			msg="아이디를";
			$('#memberid').focus();
		}else if($('#pwd').val()==''){
			msg="비밀번호를";
			$('#pwd').focus();
		}else if($('#pwd2').val()==''){
			msg="비밀번호확인칸을";
			$('#pwd2').focus();
		}else if($('#membername').val()==''){
			msg="대표자명을";
			$('#membername').focus();
		}else if($('#tel').val()==''){
			msg="전화번호를";
			$('#tel').focus();
		}else if($('#email').val()==''){
			msg="이메일";
			$('#email').focus();
		}else if($('#emailcertificatenum').val()==''){
			msg="이메일 인증번호를";
			$('#emailcertificatenum').focus();
		}
		 
		alert(msg+' 입력해주세요');
		event.preventDefault();
		return false;
		
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
								<form id="login-form" action="<c:url value='/login/selectregister.do'/> " method="post" role="form" style="display: block;">
									<input type="text" name="authorityCode" value=1>
									
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="memberid" id="memberid" tabindex="1" placeholder="아이디" 
										class="form-control infobox" style="width:250px" title="아이디">
									</div>
									
									<div class="form-group">
									<div class="row">
										<span id="availableId">사용가능한 아이디입니다.</span>
									<!-- <span id="unavailableId">이미 사용중인 아이디입니다.</span> -->
										</div>
									</div>
									
									
										<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="memberid" id="memberid" tabindex="1" placeholder="비밀번호" 
										class="form-control infobox" style="width:250px" title="비밀번호">
									</div>
									
									<div class="form-group">
									<div class="row">
										<span id="availableId">필수입력정보입니다.</span>
									<!-- <span id="unavailableId">이미 사용중인 아이디입니다.</span> -->
										</div>
									</div>
										<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="memberid" id="memberid" tabindex="1" placeholder="비밀번호 확인" 
										class="form-control infobox" style="width:250px" title="비밀번호 확인">
									</div>
									
									<div class="form-group">
									<div class="row">
										<span id="availableId">비밀번호가 일치하지 않습니다.</span>
									<!-- <span id="unavailableId">이미 사용중인 아이디입니다.</span> -->
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="membername" id="membername" tabindex="1" class="form-control infobox" placeholder="이름" title="이름">
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
												<td rowspan="3"><input type="radio" name="selectgender" id="selectgender" value="남" checked>남</td>
												<td>&nbsp;&nbsp;</td>
												<td rowspan="3"><input type="radio" name="selectgender" id="selectgender" value="여">여</td>
											</tr>
										</table>
										<input type="text" name="membergender" id="membergender" value="남자">
									</div>
									<div class="form-group">
										<input type="text" name="birth" id="birth" tabindex="1" class="form-control" placeholder="생년월일">
									</div>
									<div class="form-group">
										<input type="text" name="tel" id="tel" tabindex="1" class="form-control infobox" placeholder="전화번호" title="전화번호">
										
									</div>
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="zipcode" id="zipcode" tabindex="1" placeholder="우편번호" 
										class="form-control" style="width:150px" style="background-color: #50a954" readonly>
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" value="우편번호 찾기" class="btn btn-register"
										onclick="execDaumPostcode()">
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="address" id="roadAddress" tabindex="1" class="form-control" placeholder="주소" readonly>
									</div>
									<div class="form-group">
										<input type="text" name="addressdetail" id="addressdetail" tabindex="1" class="form-control" placeholder="상세주소">
									</div>
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="email" id="email" tabindex="1" placeholder="이메일" 
										class="form-control infobox" style="width:300px" style="background-color: #50a954" title="이메일">
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" value="이메일 인증" class="btn btn-register" id="emailcertificate">
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="emailcertificatenum"  id="emailcertificatenum" tabindex="1" class="form-control" placeholder="이메일 인증 번호">
									</div>
									
									
									<div class="form-group" style="float:left">
				          <h3>이용약관 동의</h3>
						<input type="checkbox" name="chk" id="chk">
				        <ul id="faq-list" class="wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
				          <li>
				            <a data-toggle="collapse" class="collapsed" href="#faq1">이용약관 보기▽ <i class="ion-android-remove"></i></a>
				            <div id="faq1" class="collapse" data-parent="#faq-list">
				              <p>
				            		  아이프레임
				              </p>
				            </div>
				          </li>
				
				        </ul>
				
				      
   				 </div>
									
									
									<div class="form-group">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="registersubmit" id="registersubmit" 
												tabindex="4" class="form-control btn btn-register" value="가입하기" style="background-color: #50a954">
										</div>
									</div>
									<div class="form-group">
											<div class="col-sm-6 col-sm-offset-3">
												<div class="text-center">
													<a href="<c:url value='/login/login.do'/>" tabindex="5" class="forgot-password">로그인하기</a>
												</div>
											</div>
									</div>
								</form>
								<form id="register-form" action="<c:url value='/login/selectregister.do'/>" method="post" role="form" style="display: none;">
									<input type="text" name="authorityCode" value=2>
									
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="memberid" id="memberid" tabindex="1" placeholder="아이디" 
										class="form-control infobox" style="width:250px" title="아이디">
									</div>
									
									<div class="form-group">
									<div class="row">
										<span id="availableId">사용가능한 아이디입니다.</span>
									<!-- <span id="unavailableId">이미 사용중인 아이디입니다.</span> -->
										</div>
									</div>
									
									
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="memberid" id="memberid" tabindex="1" placeholder="비밀번호" 
										class="form-control infobox" style="width:250px" title="비밀번호">
									</div>
									
									<div class="form-group">
									<div class="row">
										<span id="availableId">필수입력정보입니다.</span>
									<!-- <span id="unavailableId">이미 사용중인 아이디입니다.</span> -->
										</div>
									</div>
										<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="memberid" id="memberid" tabindex="1" placeholder="비밀번호 확인" 
										class="form-control infobox" style="width:250px" title="비밀번호 확인">
									</div>
									
									<div class="form-group">
									<div class="row">
										<span id="availableId">비밀번호가 일치하지 않습니다.</span>
									<!-- <span id="unavailableId">이미 사용중인 아이디입니다.</span> -->
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="membername" id="membername" tabindex="1" class="form-control infobox" placeholder="대표자명" title="이름">
									</div>
										<!-- <div class="radio radio-danger" style="float:left">
 
										<input type="radio" name="membergender" id="membergender" value="Yes" checked>
										<input type="radio" name="membergender" id="membergender" value="No">
										<label>남</label>
										<label>여</label>
										</div> -->
 
									
									<div class="form-group">
										<input type="text" name="tel" id="tel" tabindex="1" class="form-control infobox" placeholder="전화번호" title="전화번호">
									</div>
									<div class="form-group">
										<input type="text" name="companyname" id="companyname" tabindex="1" class="form-control infobox" placeholder="기업명">
									</div>
									<div class="form-group">
										<input type="text" name="bussinessNumber" id="bussinessNumber" tabindex="1" class="form-control infobox" placeholder="사업자등록번호">
									</div>
									
									
									<div class="form-group" style="float: left; margin-right:30px;" >
										<input type="text" name="email" id="email" tabindex="1" placeholder="이메일" 
										class="form-control infobox" style="width:300px" style="background-color: #50a954" title="이메일">
									</div>
									<div class="form-group">
									<div class="row">
										<input type="button" value="이메일 인증" class="btn btn-register" id="emailcertificate">
										</div>
									</div>
									<div class="form-group">
										<input type="text" name="emailcertificatenum"  id="emailcertificatenum" tabindex="1" class="form-control" placeholder="이메일 인증 번호">
									</div>
									
									<div class="form-group">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="registerCompanysubmit" id="registerCompanysubmit" 
												tabindex="4" class="form-control btn btn-register" value="가입하기" style="background-color: #50a954">
										</div>
									</div>
									<div class="form-group">
											<div class="col-sm-6 col-sm-offset-3">
												<div class="text-center">
													<a href="<c:url value='/login/login.do'/>" tabindex="5" class="forgot-password">로그인하기</a>
												</div>
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