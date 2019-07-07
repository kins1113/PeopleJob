<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>
<article>
<fieldset>
<label>지역구분</label>
<input type="checkbox" id="localcheck" name="localcheck" value="서울특별시">서울
<input type="checkbox" id="localcheck" name="localcheck" value="부산광역시">부산
<input type="checkbox" id="localcheck" name="localcheck" value="인천광역시">인천
<input type="checkbox" id="localcheck" name="localcheck" value="대전">대전
<input type="checkbox" id="localcheck" name="localcheck" value="광주">광주
<input type="checkbox" id="localcheck" name="localcheck" value="대구">대구
<input type="checkbox" id="localcheck" name="localcheck" value="울산">울산
<input type="checkbox" id="localcheck" name="localcheck" value="세종">세종<br>
<input type="checkbox" id="localcheck" name="localcheck" value="경기도">경기
<input type="checkbox" id="localcheck" name="localcheck" value="강원도">강원
<input type="checkbox" id="localcheck" name="localcheck" value="충청북도">충북
<input type="checkbox" id="localcheck" name="localcheck" value="충청남도">충남
<input type="checkbox" id="localcheck" name="localcheck" value="전라북도">전북
<input type="checkbox" id="localcheck" name="localcheck" value="전라남도">전남
<input type="checkbox" id="localcheck" name="localcheck" value="경상북도">경북
<input type="checkbox" id="localcheck" name="localcheck" value="경상남도">경남
<input type="checkbox" id="localcheck" name="localcheck" value="제주">제주
<br><label>근무방식</label>
<input type="checkbox" id="workway" name="workway" value="정규직">정규직
<input type="checkbox" id="workway" name="workway" value="계약직">계약직
<input type="checkbox" id="workway" name="workway" value="인턴">인턴
</body>
<br><label>급여방식</label>
<input type="checkbox" id="payway" name="payway" value="월급">월급
<input type="checkbox" id="payway" name="payway" value="월급">연봉
<input type="checkbox" id="payway" name="payway" value="주급">주급
<br><label>학력</label>
<input type="checkbox" id="payway" name="payway" value="고졸">고졸
<input type="checkbox" id="payway" name="payway" value="대졸(2,3년)">대졸(2,3년)
<input type="checkbox" id="payway" name="payway" value="대졸(4년)">대졸(4년)
<input type="checkbox" id="payway" name="payway" value="석사졸업">석사졸업
<input type="checkbox" id="payway" name="payway" value="박사졸업">박사졸업
<input type="checkbox" id="payway" name="payway" value="학력무관">학력무관

<br><br><hr> 
<input type="button" id="submit" name="submit"value="확인">
</fieldset>
</article>
<%@include file="../main/inc/bottom.jsp" %>