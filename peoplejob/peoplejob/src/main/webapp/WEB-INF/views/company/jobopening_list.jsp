<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>
<script>
	function pageFunc(curPage){
		document.frmSearch.currentPage.value=curPage;
		document.frmSearch.submit();
	}
</script>
<article>
	<fieldset>
    <div class="col-md-9">
        <div class="page-header">
            <h3>채용공고</h3>
        </div>
        <c:if test="${!empty param.searchKeyword}">
			<p>
				검색어 : ${param.searchKeyword}, ${pagingInfo.totalRecord}건 검색되었습니다.
			</p>
		</c:if>
        <div>
        <c:if test="${empty list }">	 
	 	<tr>
	 		<td colspan="5" class="align_center">데이터가 존재하지 않습니다.</td>
	 	</tr>
		</c:if>
		<c:if test="${!empty list }">
			<c:forEach var="vo" items="${list }">
	        <div class="list-group">
	            <div class="list-group-item">
	                <h4 class="list-group-item-heading"><a href="<c:url value='/company/jobopening_upHit.do?jobopening=${vo.jobopening }'/>">공고제목:${vo.jobtitle }</a></h4>
	                <p class="list-group-item-text">회사이름으로 바꾸기(나중에) | 지역:${vo.localcheck} | 기간 : ${fn:substring(vo.workdate,0,10) }~${fn:substring(vo.endDate,0,10)} 
	                | <small>등록일 : ${fn:substring(vo.jobregdate,0,10)}</small> 
	                <small>조회수 : ${vo.hits }</small>
	                </p> 
	                <span class="label label-info">
					<img src="<c:url value='/peoplejob_upload/${vo.companyimage }'/>" 
							alt="공고이미지" width="50">
					
					</span> <span class="label label-info">복리후생 : ${vo.welfare }</span>
	            </div>
	        </div>
			</c:forEach>
		</c:if>
		</div>
        <div class="pull-left">
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
			<a href="#" onclick="pageFunc(${i})">
				[${i}]</a>
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
   		action='<c:url value="/company/jobopening_list.do"/>'>
   		<!-- 현재 페이지 hidden에 넣기 -->
   		<input type="hidden" name='currentPage' value="1" >
   		
        <select name="searchCondition">
            <option value="jobtitle" 
            	<c:if test="${param.searchCondition=='jobtitle'}">
            		selected="selected"
            	</c:if>
            >제목</option>
            <option value="localcheck"
            	<c:if test="${param.searchCondition=='localcheck'}">
            		selected="selected"
            	</c:if>
            >지역</option>
            <option value="academic_condition"
            	<c:if test="${param.searchCondition=='academic_condition'}">
            		selected="selected"
            	</c:if>
            >학력</option>
        </select>   
        <div class="input-group col-xs-4 pull-right">
         <input id="searchKeyword" name="searchKeyword" type="text" value="${param.searchKeyword }"
         class="form-control" placeholder="검색" />
		<input type="submit" value="검색">
        </div>
    </form>
</div>
        </div>
        <div class="pull-right">
            <a href="<c:url value='/company/jobopening_register.do'/>" class="btn btn-primary" role="button">글쓰기</a>
        </div>
    </div>
    </fieldset>
    </article>
<%@include file="../main/inc/bottom.jsp" %>
