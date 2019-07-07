<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>

<div class="divList">
<table class="table">
	<thead class="thead-dark">
		<tr>
			<th scope="col">공지번호</th>
			<th scope="col">제목</th>
			<th scope="col">작성자</th>
			<th scope="col">등록일</th>
			<th scope="col">조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty list }">
			<tr>
				<td colspan="5" class="align_center">데이터가 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:if test="${!empty list }">
			<!--  내용 반복 시작 -->
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.notifyCode }</td>
					<td><a href="<c:url value='/notice/countUpdate.do?notifyCode=${vo.notifyCode}'/>">
							<!-- 제목이 긴경우 30글자만 보여주기 -->
						 <c:if test="${fn:length(vo.notifytitle ) >=30}">
  							${fn:substring(vo.notifytitle,0,30)}...
  						</c:if> 
  					<c:if test="${fn:length(vo.notifytitle)<30 }">
  				${vo.notifytitle}
  					</c:if> 
  			<!-- 24시간 이내 글인 경우 new 이미지 보여주기 --> 
  					<c:if test="${vo.newImgTerm<24 }">
					<img src="<c:url value='/resources/images/new.gif'/>"
									alt="new이미지">
					</c:if>
					</a></td>
					<!-- adminid로 찍어주기 -->
					<td>${vo.adminCode}</td>
					<td><fmt:formatDate value="${vo.notifydate}"
							pattern="yyyy-MM-dd" /></td>
					<td>${vo.readcount}</td>
				</tr>
			</c:forEach>
		</c:if>
	<!-- 반복끝 -->
	</tbody>
</table>

</div>
<div class="divPage">
	<!-- 이전블럭으로 이동하기 -->
	<c:if test="${pagingInfo.firstPage>1 }">	
		<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1})">
			<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭으로 이동">
		</a>	
	</c:if>
	<!-- 페이지 번호 추가 -->
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-size: 1em">${i }</span>
		</c:if>
		<c:if test="${i!=pagingInfo.currentPage }">
			<a href="#" onclick="pageFunc(${i})">[${i}]</a>
		</c:if>
	</c:forEach>
	<!--  페이지 번호 끝 -->
	
	<!-- 다음 블럭으로 이동하기 -->
	<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">	
		<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">
			<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭으로 이동">
		</a>
	</c:if>
</div>
<div class="divSearch">
	<!-- 페이징 처리에도 사용 -->
   	<form name="frmSearch" method="post" 
   		action='<c:url value="/manager/notice/list.do"/>'>
   		<!-- 현재 페이지 hidden에 넣기 -->
   		<input type="Text" name='currentPage' value="1">
   		
        <select name="searchCondition">
            <option value="notifytitle" 
            	<c:if test="${param.searchCondition=='notifytitle'}">
            		selected="selected"
            	</c:if>
            >제목</option>
            <option value="notifycontent"
            	<c:if test="${param.searchCondition=='notifycontent'}">
            		selected="selected"
            	</c:if>
            >내용</option>

        </select>   
        <input type="text" name="searchKeyword" title="검색어 입력"
        	value="${param.searchKeyword }">   
		<input type="submit" value="검색">
    </form>
</div>


<div class="card-body">
	<button type="button" class="mb-1 btn btn-danger"
		onclick="location.href='write.do' ">공지등록</button>

</div>

<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>