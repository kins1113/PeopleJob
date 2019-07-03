<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="ko">
<head>
    <meta name="decorator" content="basic" />
</head>
<body>
    <div class="col-md-9">
        <div class="page-header">
            <h3>채용공고</h3>
        </div>

        <div class="form-group clearfix">
            <form id="boardForm" class="form-inline" role="form" method="post">
                <div class="input-group col-xs-4 pull-right">
                    <input id="search" name="search" type="text" class="form-control" placeholder="검색" />
                    <span class="input-group-btn">
                        <input type="button" class="btn btn-default" value="검색">
                    </span>
                </div>
            </form>
        </div>
		<c:forEach var="vo" items="${list }">
        <div class="list-group">
            <div class="list-group-item">
                <h4 class="list-group-item-heading"><a href="<c:url value='/company/jobopening_view.do?jobopening=${vo.jobopening }'/>">공고제목:${vo.jobtitle }</a></h4>
                <p class="list-group-item-text">회사이름으로 바꾸기(나중에) | 지역:${vo.localcheck} | 기간 : ${fn:substring(vo.workdate,0,10) }~${fn:substring(vo.endDate,0,10)} 
                | <small>${fn:substring(vo.jobregdate,0,10)}</small> </p> 
                <span class="label label-info">회사로고 넣기(나중에)</span> <span class="label label-info">복리후생 : ${vo.welfare }</span>
            </div>
        </div>
		</c:forEach>
        <div class="pull-left">
            <a href="#" class="btn btn-default btn-mg">< 이전</a>&nbsp;
            <a href="#" class="btn btn-default btn-mg">다음 ></a>
        </div>
        <div class="pull-right">
            <a href="jobopening_register.do" class="btn btn-primary" role="button">글쓰기</a>
        </div>
    </div>
</body>
</html>