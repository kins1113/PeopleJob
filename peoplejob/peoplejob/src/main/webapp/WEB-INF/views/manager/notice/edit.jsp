<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>



<script type="text/javascript">
	$(document).ready(function(){
		$('form[name=frmEdit]').submit(function(){
			$('.infobox').each(function(idx, item){
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

<div class="divForm">
<form name="frmEdit" method="post" 
	action="<c:url value='/manager/notice/edit.do'/>"> 
    <fieldset>
	<legend>글수정</legend>
		<!-- hidden필드에 notifyCode 넣기 -->
		<input type="hidden" name="notifyCode" value="${vo.notifyCode}" />
            	
        <div class="firstDiv">
            <label for="notifytitle">제목</label>
            <input type="text" id="notifytitle" name="notifytitle" class="infobox"
            	value="${vo.notifytitle}" />
        </div>
        <div>
            <label for="adminCode">관리자코드</label>
            <input type="text" id="adminCode" name="adminCode" value="${vo.adminCode}"
            	class="infobox"/>
        </div>

        <div>  
        	<label for="notifycontent">내용</label>        
 			<textarea id="notifycontent" name="notifycontent" rows="12" cols="40">${vo.notifycontent}</textarea>
        </div>
        <div class="center">
            <input type = "submit" value="수정"/>
            <input type = "Button" value="글목록" 
            	onclick
           ="location.href	='<c:url value='/manager/notice/list.do'/>'" />         
        </div>
	</fieldset>
</form>    
</div>

<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>