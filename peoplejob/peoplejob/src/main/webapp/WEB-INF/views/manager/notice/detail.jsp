<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>


<h2>글 상세보기</h2>
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">제목</span> <span>${vo.notifytitle}</span>
		</div>
		<div>
			<span class="sp1">작성자</span> <span>${vo.adminCode}</span>
		</div>
		<div>
			<span class="sp1">등록일</span> <span>${vo.notifydate}</span>
		</div>
		<div>
			<span class="sp1">조회수</span> <span>${vo.readcount}</span>
		</div>
		
		<div class="lastDiv">			
			<p class="content">
				<% pageContext.setAttribute("newLine", "\r\n"); %>
				${fn:replace(vo.notifycontent, newLine,'<br>')}
			</p>
		</div>
		
		<div class="center">
			<a href="<c:url value='/manager/notice/edit.do?notifyCode=${param.notifyCode}'/>">수정</a> |
        	<a href="<c:url value='/manager/notice/delete.do?notifyCode=${param.notifyCode}'/>">삭제</a> |
        	<a href="<c:url value='/manager/notice/list.do'/>">목록</a>			
		</div>
		</div>

<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>