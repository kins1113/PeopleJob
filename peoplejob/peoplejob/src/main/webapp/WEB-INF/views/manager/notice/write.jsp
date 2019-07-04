<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
          
          <div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-6">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
						<h2>공지사항</h2>
					</div>
					<div class="card-body">
						<form name="noticeWrite" method="post"
						action="<c:url value='/notice/write.do'/>" >
							<div class="form-group">
								<label for="notifytitle">제목</label> <input
									type="text" class="form-control" id="notifytitle"
									name="notifytitle" class="infobox" />
									 
							</div>


							<div class="form-group">
								<label for="notifycontent">공지사항 내용</label>
								<textarea class="form-control" id="notifycontent" name="notifycontent" 
									rows="3" cols="30"></textarea>
							</div>
							
							<div>
							<input type="text" id="admin_code" name="admin_code" value="1"/>
							
							</div>

							<div class="form-footer pt-4 pt-5 mt-4 border-top">
								<button type="submit" class="btn btn-primary btn-default">등록하기</button>
							</div>
						</form>
					</div>
				</div>
          </div>
          </div>
          </div>
          </div>
          
          
          
          
<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>