<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>
<script type="text/javascript">	
	function pageFunc(curPage){
		document.frmSearch.currentPage.value=curPage;
		document.frmSearch.submit();
	}
</script>

<div class="divList">
<table class="box2"
	
	 	summary="이력서 현황에 관한 표로써, 이력서제목, 이력서 공개 설정, 내 이력서 열람 기업에 대한 정보를 제공합니다.">
	<caption>이력서리스트</caption>
	<colgroup>
		<col style="width:60%;" />
		<col style="width:10%;" />
		<col style="width:20%;" />
		<col style="width:10%;" />
				
	</colgroup>
	<thead>
	  <tr>
	  <th> <input type="hidden" name="resumeCode" value="${param.resumeCode }"/></th>
	    <th scope="col">이력서제목</th>
	    <th scope="col">이력서 공개 설정</th>
	    <th scope="col">내 이력서 열람 기업</th>
	    <th scope="col">등록일</th>
	  </tr>
	</thead> 
	<tbody> 
	<c:if test="${empty list }">	 
	 	<tr>
	 		<td colspan="5" class="align_center">데이터가 존재하지 않습니다.</td>
	 	</tr>
	</c:if> 	
	<c:if test="${!empty list }">
	  <!-- 반복문 시작  -->	  	
		<c:forEach var="vo" items="${list }">					
			<tr>
				
					<!-- 제목이 긴 경우 30글자만 보여주기 -->
					<td><c:if test="${fn:length(vo.resumeTitle) >=30 }">
						${fn:substring(vo.resumeTitle, 0,30)}...
					</c:if>
					<c:if test="${fn:length(vo.resumeTitle) <30 }">					
						${vo.resumeTitle}
					</c:if>
					</td>
				<td>${vo.opencheck}</td>
					
					
				<td>${vo.membername}</td><!--일단 멤버 네임으로  -->
				<td><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>
				</td>
				
			</tr>			
		</c:forEach>
	</c:if>
	
	  <!--반복처리 끝  -->
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
   		action='<c:url value="/resume/list.do"/>'>
   		<!-- 현재 페이지 hidden에 넣기 -->
   		<input type="Text" name='currentPage' value="1">
        
    </form>
</div>

<%@include file="../main/inc/bottom.jsp" %>

