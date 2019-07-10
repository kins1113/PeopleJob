<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
<div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-12">
				<div class="card card-default">
					<div class="card-body">

<div class="col-lg-6">
	<div class="card card-default">
		<div class="card-header card-header-border-bottom">
			<h2><% pageContext.setAttribute("newLine", "\r\n"); %>
				${fn:replace(vo.notifytitle, newLine,'<br>')}</h2>
		</div>
		<div class="card-body">
			
				<div class="form-group row">
					<div class="col-12 col-md-3 text-right">
						<label for="notifyCode">글 번호</label>
					</div>
					<div class="col-12 col-md-9">
						<p>${vo.notifyCode}</p>
					</div>
			
				</div>
				
		
				
				<div class="form-group row">
					<div class="col-12 col-md-3 text-right">
						<label for="readcount">조회수</label>
					</div>
					<div class="col-12 col-md-9">
						<p>${vo.readcount}</p>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-12 col-md-3 text-right">
						<label for="notifyContent">글 내용</label>
					</div>
					<div class="col-12 col-md-9">
				<p>
				<% pageContext.setAttribute("newLine", "\r\n"); %>
				${fn:replace(vo.notifycontent, newLine,'<br>')}
				</p>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-12 col-md-3 text-right">
						<label for="notifydate">등록일</label>
					</div>
					<div class="col-12 col-md-9">
						<p><fmt:formatDate value="${vo.notifydate}"
							pattern="yyyy-MM-dd" /></p>
					</div>
				</div>


		</div>
	</div>
</div>


		<div class="center">
        	<a href="<c:url value='/manager/notice/delete.do?notifyCode=${param.notifyCode}'/>">삭제</a> |
			<a href="<c:url value='/manager/notice/edit.do?notifyCode=${param.notifyCode}'/>">수정</a> |
        	<a href="<c:url value='/manager/notice/list.do'/>">목록</a>			
		</div>
		
		</div></div></div></div></div></div>

<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>