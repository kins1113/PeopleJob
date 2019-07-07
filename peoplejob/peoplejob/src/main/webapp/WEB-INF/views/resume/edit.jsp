<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../main/inc/top.jsp" %>
    <script type="text/javascript">
	$(document).ready(function(){
		$('form[name=frm2]').submit(function(){
			$('#infobox').each(function(idx, item){
				if($(this).val().length<1){
					alert($(this).prev().html()+'를 입력하세요');
					$(this).focus();
					
					event.preventDefault();  //이벤트 진행을 막고
					return false;  //each() 탈출
				}
			});	
		});
		
	});
</script>
<article>
<div class="divForm">
<form name="frm2" method="post" 
	action="<c:url value='/resume/edit.do'/>">
<fieldset>
	<legend style="font-weight: bold">이력서수정</legend>
	<!-- hidden필드에 no 넣기 -->
		<input type="hidden" name="resumeCode" value="${vo.resumeCode}" />
		<div>
		<!--이력서 사진 https://kuzuro.blogspot.com/2018/10/11.html  -->
		<img src="..." alt="..." class="img-thumbnail">
		</div>
	<div>        
        <label for="resumeTitle">이력서 제목</label>
        <input type="text" class="form-control" placeholder="이력서 제목을 입력하세요" name="resumeTitle" id="infobox"  style="ime-mode:active">
    </div>
    <hr>
    <h3>기본정보</h3>
    <div>        
        <label for="membername">이름</label>
        <input type="text" class="form-control"  name="membername" id="infobox" value="${vo.membername }" style="ime-mode:active">
    </div>
    <div>        
        <label for="birth">생년월일</label>
        <input type="text" class="form-control"  name="birth" id="infobox" value="${vo.birth}" style="ime-mode:active">
    	
    </div>
    
   
    <div>
        <label for="email">이메일 주소</label>
        <input type="text" class="form-control"  name="email"  id="infobox" value="${vo.email }" title="이메일주소 앞자리">
    </div>
    
    <div>
        <label for="address">주소</label>
        <input type="text" class="form-control"  name="zipcode" id="infobox" ReadOnly  
        	title="우편번호" class="width_80" value="${vo.zipcode}">
        
        <button type="button" class="btn btn-success" value="우편번호 찾기" id="btnZipcode" 
        title="새창열림">우편번호찾기</button>
        <br />
        <span class="sp1">&nbsp;</span>
        <input type="text"  class="form-control" id="infobox" name="address" value="${vo.address }" ReadOnly title="주소"  class="width_350"><br />
        <span class="sp1">&nbsp;</span>
        <input type="text"  class="form-control" id="infobox" name="addressdetail" value="${vo.addressdetail }" title="상세주소"  class="width_350">
    </div>
    <div>
        <label for="tel">핸드폰</label>&nbsp;
       
        <input type="text"  class="form-control"   name="tel" id="infobox" value="${vo.tel}" maxlength="4" title="휴대폰 번호"
        	class="width_80">
    </div>
    
    <h3>학력사항</h3>
    <div>
        <label for="education">학력사항</label>&nbsp;
       
       <label class="radio-inline">
  		<input type="radio" name="graduatetype" id="graduatetype" value="초등학교 졸업" <c:if test="${vo.graduatetype=='초등학교 졸업'}">            	
            		checked="checked"
            	</c:if>> 초등학교 졸업
		</label>
		
		<label class="radio-inline">
  		<input type="radio" name="graduatetype" id="graduatetype" value="중학교 졸업" <c:if test="${vo.graduatetype=='중학교 졸업'}">            	
            		checked="checked"
            	</c:if>> 중학교 졸업
		</label>
		<label class="radio-inline">
  		<input type="radio" name="graduatetype" id="graduatetype" value="고등학교 졸업" <c:if test="${vo.graduatetype=='고등학교 졸업'}">            	
            		checked="checked"
            	</c:if>> 고등학교 졸업
		</label>
		<label class="radio-inline">
  		<input type="radio" name="graduatetype" id="graduatetype" value="대학교 졸업" <c:if test="${vo.graduatetype=='대학교 졸업'}">            	
            		checked="checked"
            	</c:if>> 대학교 졸업
		</label>
		<hr>
	</div>
		
		<div>
		 <label for="element">학교명</label>&nbsp;
			    
        <input type="text"  class="form-control" placeholder="학교명을 입력"  name="schoolname" id="infobox" 
        	class="width_80" value=${vo.schoolname }>
        </div>
        <div>
		 <label for="schoollocal">지역</label>&nbsp;
			<select class="form-control" name="schoollocal" id="infobox" >
        	<option value="서울" <c:if test="${vo.schoollocal=='서울'}">            	
            		selected="selected"
            	</c:if>>서울</option>
        	<option value="경기" <c:if test="${vo.schoollocal=='경기'}">            	
            		selected="selected"
            	</c:if>>경기</option>
        	<option value="광주" <c:if test="${vo.schoollocal=='광주'}">            	
            		selected="selected"
            	</c:if>>광주</option>
        	<option value="대구" <c:if test="${vo.schoollocal=='대구'}">            	
            		selected="selected"
            	</c:if>>대구</option>
        	<option value="대전" <c:if test="${vo.schoollocal=='대전'}">            	
            		selected="selected"
            	</c:if>>대전</option>
        	<option value="부산" <c:if test="${vo.schoollocal=='부산'}">            	
            		selected="selected"
            	</c:if>>부산</option>
        	<option value="울산" <c:if test="${vo.schoollocal=='울산'}">            	
            		selected="selected"
            	</c:if>>울산</option>
        	<option value="인천" <c:if test="${vo.schoollocal=='인천'}">            	
            		selected="selected"
            	</c:if>>인천</option>
        	<option value="강원" <c:if test="${vo.schoollocal=='강원'}">            	
            		selected="selected"
            	</c:if>>강원</option>
        	<option value="경남" <c:if test="${vo.schoollocal=='경남'}">            	
            		selected="selected"
            	</c:if>>경남</option>
        	<option value="경북" <c:if test="${vo.schoollocal=='경북'}">            	
            		selected="selected"
            	</c:if>>경북</option>
        	<option value="전남" <c:if test="${vo.schoollocal=='전남'}">            	
            		selected="selected"
            	</c:if>>전남</option>
        	<option value="전북" <c:if test="${vo.schoollocal=='전북'}">            	
            		selected="selected"
            	</c:if>>전북</option>
        	<option value="충북" <c:if test="${vo.schoollocal=='충북'}">            	
            		selected="selected"
            	</c:if>>충북</option>
        	<option value="충남" <c:if test="${vo.schoollocal=='충남'}">            	
            		selected="selected"
            	</c:if>>충남</option>
        	<option value="제주" <c:if test="${vo.schoollocal=='제주'}">            	
            		selected="selected"
            	</c:if>>제주</option>
        	<option value="세종" <c:if test="${vo.schoollocal=='세종'}">            	
            		selected="selected"
            	</c:if>>세종</option>
        	<option value="아시아,중동" <c:if test="${vo.schoollocal=='아시아,중동'}">            	
            		selected="selected"
            	</c:if>>아시아,중동</option>
        	<option value="북,중미" <c:if test="${vo.schoollocal=='북,중미'}">            	
            		selected="selected"
            	</c:if>>북,중미</option>
        	<option value="남미" <c:if test="${vo.schoollocal=='남미'}">            	
            		selected="selected"
            	</c:if>>남미</option>
        	<option value="유럽" <c:if test="${vo.schoollocal=='유럽'}">            	
            		selected="selected"
            	</c:if>>유럽</option>
        	<option value="오세아니아" <c:if test="${vo.schoollocal=='오세아니아'}">            	
            		selected="selected"
            	</c:if>>오세아니아</option>
        	<option value="아프리카" <c:if test="${vo.schoollocal=='아프리카'}">            	
            		selected="selected"
            	</c:if>>아프리카</option>
        	<option value="남극대륙" <c:if test="${vo.schoollocal=='남극대륙'}">            	
            		selected="selected"
            	</c:if>>남극대륙</option>
        </select>   
       </div>
       <div>
		 <label for="graduate">졸업년도</label>&nbsp;
		 <input type="text" class="form-control" name="graduate" value="${vo.graduate }"id="datepicker1">
         <select class="form-control" name="graduatecheck" id="infobox" >
        	<option value="졸업여부" <c:if test="${vo.graduatecheck=='졸업여부'}">            	
            		selected="selected"
            	</c:if>>졸업여부</option>
        	<option value="졸업" <c:if test="${vo.graduatecheck=='졸업'}">            	
            		selected="selected"
            	</c:if>>졸업</option>
        	<option value="중퇴" <c:if test="${vo.graduatecheck=='중퇴'}">            	
            		selected="selected"
            	</c:if>>중퇴</option>
        </select>
       </div>	
    
    <h3>경력사항</h3>
    <div>
    <label for="workcheck">경력구분</label>&nbsp;
       
       <label class="radio-inline">
  		<input type="radio" name="workcheck" id="infobox" value="신입" <c:if test="${vo.workcheck=='신입'}">            	
            		checked="checked"
            	</c:if>>신입
		</label>
		
		<label class="radio-inline">
  		<input type="radio" name="workcheck" id="infobox" value="경력" <c:if test="${vo.workcheck=='경력'}">            	
            		checked="checked"
            	</c:if>>경력
		</label>
    </div>
    <hr>
    <div>        
        <label for="companyname">회사명</label>
        <input type="text" class="form-control" placeholder="회사명 입력" name="companyname" value="${vo.companyname }" id="infobox" style="ime-mode:active">
    </div>
    <div>
        <label for="workterm">근무기간</label>
		<input type="text" class="form-control" name="workterm" value="${vo.workterm }" id="infobox">~ 
  		<input type="text" class="form-control" name="workterm" value="${vo.workterm }" id="infobox">
  		&nbsp;
		<select class="form-control" name="workcondition" id="infobox" >
        	<option value="재직중" <c:if test="${vo.workcondition=='재직중'}">            	
            		selected="selected"
            	</c:if>>재직중</option>
        	<option value="퇴사" <c:if test="${vo.workcondition=='퇴사'}">            	
            		selected="selected"
            	</c:if>>퇴사</option>
        </select>
	</div>
	<div>
        <label for="chargework">직종</label>
        <input type="text" class="form-control"  name="chargework" id="infobox" value="${vo.chargework }" style="ime-mode:active">
    </div>	
    <div>
        <label for="jobgrade">직급</label>
        <input type="text" class="form-control"  name="jobgrade" id="infobox" value="${vo.jobgrade }" style="ime-mode:active">
   </div>
  
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
자격증/어학시험
</a>

<div class="collapse" id="collapseExample">
  <div class="well">
    <h3>자격증/어학</h3>	
   <div>
        <label for="certificationtype">항목선택</label>
        <select class="form-control" name="certificationtype" id="certificationtype" >
        	<option value="자격증/면허증" <c:if test="${vo.certificationtype=='자격증/면허증'}">            	
            		selected="selected"
            	</c:if>>자격증/면허증</option>
        	<option value="어학시험" <c:if test="${vo.certificationtype=='어학시험'}">            	
            		selected="selected"
            	</c:if>>어학시험</option>
        </select>
   </div>&nbsp;&nbsp;
     <c:if test="${vo.certificationtype=='자격증/면허증'}">
   <h5>자격증/면허증</h5>
     <div>
        <label for="lName">자격증명</label>
        <input type="text" class="form-control"  name="lName" id="lName" value="${vo.lName}" style="ime-mode:active">
    </div>
    <div>    
        <label for="lInstitution">발행처/기관</label>
        <input type="text" class="form-control"  name="lInstitution" id="lInstitution" value="${vo.lInstitution }" style="ime-mode:active">
    </div>
    <div>
        <label for="lGetdate">취득일</label>
        <input type="text" class="form-control"  name="lGetdate" id="lGetdate" value="${vo.lGetdate }" style="ime-mode:active">
    </div> 
    </c:if>
    &nbsp;
    <c:if test="${vo.certificationtype=='어학시험'}">
    <h5>어학시험</h5>  
    <div>	
        <label for="language">언어</label>
        <input type="text" class="form-control"  name="language" id="language" value="${vo.language }" style="ime-mode:active">
    </div>
     <div>
        <label for="institution">발행처/기관</label>
        <input type="text" class="form-control"  name="institution" id="institution" value="${vo.institution }" style="ime-mode:active">
     </div>
     <div>
        <label for="langlicencename">시험종류</label>
        <input type="text" class="form-control"  name="langlicencename" id="langlicencename" value="${vo.langlicencename }" style="ime-mode:active">
     </div> 
     <div>
        <label for="langpoint">점수</label>
        <input type="text" class="form-control"  name="langpoint" id="langpoint" value="${vo.langpoint }" style="ime-mode:active">
     </div>
     
     <div>
        <label for="langGrade">급수</label>
        <input type="text" class="form-control"  name="langGrade" id="langGrade" value="${vo.langGrade }" style="ime-mode:active">
     </div>
     <div>             
        <label for="langGetdate">취득일</label>
        <input type="text" class="form-control"  name="langGetdate" id="langGetdate" value="${vo.langGetdate }" style="ime-mode:active">
     </div>
     </c:if>
  </div>
</div>	

     &nbsp;
     
     <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
	수상내역
</a>

<div class="collapse" id="collapseExample">
  <div class="well">
     <c:if test="${vo.award!=null}">
     <h5>수상내역</h5>
      <label for="award">수상명</label>
        <input type="text" class="form-control"  name="award" id="award" value="${vo.award }" style="ime-mode:active">
        </c:if>
  </div>
</div>
     &nbsp;
     <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  자기소개서
</a>

<div class="collapse" id="collapseExample">
  <div class="well">
     <h3>자기소개서</h3>
      <div>	
    	<label for="introduce">자기소개서</label>
        <textarea class="form-control" rows="3" value="${vo.introduce }"></textarea>
      </div>
  </div>
</div>
      &nbsp;
<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  희망근무
</a>

<div class="collapse" id="collapseExample">
  <div class="well">
      <h3>희망근무 선택</h3>
      <div>	
    	<label for="hopeworkform">근무형태</label>
    	<select class="form-control" name="hopeworkform" id="hopeworkform" >
        	<option value="근무형태 선택" <c:if test="${vo.hopeworkform=='근무형태 선택'}">            	
            		selected="selected"
            	</c:if>>근무형태 선택</option>
        	<option value="정규직" <c:if test="${vo.hopeworkform=='정규직'}">            	
            		selected="selected"
            	</c:if>>정규직</option>
        	<option value="교육생" <c:if test="${vo.hopeworkform=='교육생'}">            	
            		selected="selected"
            	</c:if>>교육생</option>
        	<option value="별정직" <c:if test="${vo.hopeworkform=='별정직'}">            	
            		selected="selected"
            	</c:if>>별정직</option>
        	<option value="파트" <c:if test="${vo.hopeworkform=='파트'}">            	
            		selected="selected"
            	</c:if>>파트</option>
        	<option value="전임" <c:if test="${vo.hopeworkform=='전임'}">            	
            		selected="selected"
            	</c:if>>전임</option>
        	<option value="계약직" <c:if test="${vo.hopeworkform=='계약직'}">            	
            		selected="selected"
            	</c:if>>계약직</option>
        	<option value="병역특례" <c:if test="${vo.hopeworkform=='병역특례'}">            	
            		selected="selected"
            	</c:if>>병역특례</option>
        	<option value="인턴직" <c:if test="${vo.hopeworkform=='인턴직'}">            	
            		selected="selected"
            	</c:if>>인턴직</option>
        	<option value="아르바이트" <c:if test="${vo.hopeworkform=='아르바이트'}">            	
            		selected="selected"
            	</c:if>>아르바이트</option>
        	<option value="파견직" <c:if test="${vo.hopeworkform=='파견직'}">            	
            		selected="selected"
            	</c:if>>파견직</option>
        	<option value="해외취업" <c:if test="${vo.hopeworkform=='해외취업'}">            	
            		selected="selected"
            	</c:if>>해외취업</option>
        	<option value="위촉직" <c:if test="${vo.hopeworkform=='위촉직'}">            	
            		selected="selected"
            	</c:if>>위촉직</option>
        	<option value="프리랜서" <c:if test="${vo.hopeworkform=='프리랜서'}">            	
            		selected="selected"
            	</c:if>>프리랜서</option>
        </select>
       </div>
       <div>
    	<label for="hopepay">희망연봉</label>
    	<select class="form-control" name="hopepay" id="hopepay" >
        	<option value="회사내규에 따름" <c:if test="${vo.hopepay=='회사내규에 따름'}">            	
            		selected="selected"
            	</c:if>>회사내규에 따름</option>
        	<option value="1400만원이하" <c:if test="${vo.hopepay=='1400만원이하'}">            	
            		selected="selected"
            	</c:if>>1400만원이하</option>
        	<option value="1400~1600만원" <c:if test="${vo.hopepay=='1400~1600만원'}">            	
            		selected="selected"
            	</c:if>>1400~1600만원</option>
        	<option value="1600~1800만원"  <c:if test="${vo.hopepay=='1600~1800만원'}">            	
            		selected="selected"
            	</c:if>>1600~1800만원</option>
        	<option value="1800~2000만원"  <c:if test="${vo.hopepay=='1800~2000만원'}">            	
            		selected="selected"
            	</c:if>>1800~2000만원</option>
        	<option value="2000~2200만원"  <c:if test="${vo.hopepay=='2000~2200만원'}">            	
            		selected="selected"
            	</c:if>>2000~2200만원</option>
        	<option value="2200~2400만원" <c:if test="${vo.hopepay=='2200~2400만원'}">            	
            		selected="selected"
            	</c:if>>2200~2400만원</option>
        	<option value="2400~2600만원" <c:if test="${vo.hopepay=='2400~2600만원'}">            	
            		selected="selected"
            	</c:if>>2400~2600만원</option>
        	<option value="2600~2800만원" <c:if test="${vo.hopepay=='2600~2800만원'}">            	
            		selected="selected"
            	</c:if>>2600~2800만원</option>
        	<option value="2800~3000만원" <c:if test="${vo.hopepay=='2800~3000만원'}">            	
            		selected="selected"
            	</c:if>>2800~3000만원</option>
        	<option value="3000~4000만원" <c:if test="${vo.hopepay=='3000~4000만원'}">            	
            		selected="selected"
            	</c:if>>3000~4000만원</option>
        	<option value="4000~5000만원" <c:if test="${vo.hopepay=='4000~5000만원'}">            	
            		selected="selected"
            	</c:if>>4000~5000만원</option>
        	<option value="5000~6000만원" <c:if test="${vo.hopepay=='5000~6000만원'}">            	
            		selected="selected"
            	</c:if>>5000~6000만원</option>
        	<option value="6000~7000만원" <c:if test="${vo.hopepay=='6000~7000만원'}">            	
            		selected="selected"
            	</c:if>>6000~7000만원</option>
        	<option value="7000~8000만원" <c:if test="${vo.hopepay=='7000~8000만원'}">            	
            		selected="selected"
            	</c:if>>7000~8000만원</option>
        	<option value="8000~9000만원" <c:if test="${vo.hopepay=='8000~9000만원'}">            	
            		selected="selected"
            	</c:if>>8000~9000만원</option>
        	<option value="9000~1억원" <c:if test="${vo.hopepay=='9000~1억원'}">            	
            		selected="selected"
            	</c:if>>9000~1억원</option>
        	<option value="면접 후 결정" <c:if test="${vo.hopepay=='면접 후 결정'}">            	
            		selected="selected"
            	</c:if>>면접 후 결정</option>
        	
        </select>
       </div>
       
       
       <h3>희망근무지역</h3>
       <div>
       
       <label for="시도">시도</label>
        <input type="text" class="form-control"  name="sido" id="sido" value="${vo.sido }" style="ime-mode:active">
       	
        </div>
       	<div>
       
       <label for="구군">구군</label>
        <input type="text" class="form-control"  name="gugun" id="gugun" value="${vo.gugun }" style="ime-mode:active">
       	
        </div>
        
        <div>
        <label for="jobtype">업/직종</label>
        
        <input type="text" class="form-control"  name="jobtype" id="jobtype" value="${vo.jobtype }" style="ime-mode:active">
        </div>
        <div>
        <label for="firstname">직종1차</label>
        <input type="text" class="form-control"  name="firstname" id="firstname" value="${vo.firstname }" style="ime-mode:active">
     
        </div>
        <div>
        <label for="secondname">직종2차</label>
        <input type="text" class="form-control"  name="secondname" id="secondname" value="${vo.secondname }" style="ime-mode:active">
        	
        </div>
        <div>
        <label for="thirdname">직종3차</label>
        <input type="text" class="form-control"  name="thirdname" id="thirdname" value="${vo.thirdname }" style="ime-mode:active">
        
        </div>
        <div>
        <label for="hopeworkdate">근무일시</label>
        <select class="form-control" name="hopeworkdate" id="hopeworkdate" >
        	<option value="09시~06시"  <c:if test="${vo.hopeworkdate=='09시~06시'}">            	
            		selected="selected"
            	</c:if>>09시~06시</option>
        	<option value="10시~06시"  <c:if test="${vo.hopeworkdate=='10시~06시'}">            	
            		selected="selected"
            	</c:if>>10시~06시</option>
        	<option value="자율근무제"  <c:if test="${vo.hopeworkdate=='자율근무제'}">            	
            		selected="selected"
            	</c:if>>자율근무제</option>
        </select>
        </div>
  </div>
</div>
   &nbsp;
    <div>
    <label>기업 인사담당자의 입사제의 및 면접제의를 받으시겠어요?</label>
    <label class="radio-inline">
  		<input type="radio" name="opencheck" id="opencheck" value="${vo.opencheck}">공개
		</label>
		
		<label class="radio-inline">
  		<input type="radio" name="opencheck" id="opencheck" value="${vo.opencheck}">비공개
	</label>
    </div>
    <br>
    <input type="submit" value="이력서 수정"/>
</fieldset> 
</form>
</div>       
</article>
<%@include file="../main/inc/bottom.jsp" %>

