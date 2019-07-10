<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
          
          
<script type="text/javascript">
	$(document).ready(function(){
		$('form[name=noticeWrite]').submit(function(){
			$('#notifytitle').each(function(idx, item){
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
          
          
          <div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-6">
				<div class="card card-default">

					<div class="card-body">
						<form name="noticeWrite" method="post"
						action="<c:url value='/notice/write.do'/>" >
							<div class="form-group">
								<label for="notifytitle">제목</label> <input
									type="text" class="form-control" id="notifytitle"
									name="notifytitle"  />
									 
							</div>


							<div class="form-group">
								<label for="notifycontent">공지사항 내용</label>
								<textarea class="form-control" id="notifycontent" name="notifycontent" 
									rows="3" cols="30"></textarea>
							</div>
							
							<div>
								<!-- 관리자 아이디를 세션 값으로 input  -->
								<label for="adminid">관리자아이디</label>
							<input type="text" id="adminid" name="adminid" value="${sessionScope.adminid}" />
							<input type="text" id="adminCode" name="adminCode" value="${sessionScope.adminCode}" />
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