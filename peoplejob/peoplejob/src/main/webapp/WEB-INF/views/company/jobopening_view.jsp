<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>
<article>
<fieldset>
    <div class="col-md-9">
        <div class="page-header">
            <h3>채용공고</h3>
        </div>
		<input type="hidden" name="jobopening" value="${vo.jobopening }">
        <h2>${vo.jobtitle } <small>${vo.workform }</small></h2>

        <div class="form-horizontal job-view">

            <div class="form-group">
                <label class="col-sm-2 control-label">${vo.companyCode }(이름으로 바꾸기)</label>
                <div class="col-sm-5">
                    <p class="form-control-static">좋은회사</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">담당자 연락처</label>
                <div class="col-sm-7">
                    <p class="form-control-static">000-0000-0000</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">근무지역</label>
                <div class="col-sm-3">
                    <p class="form-control-static">${vo.localcheck }</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">역정보</label>
                <div class="col-sm-3">
                    <p class="form-control-static">${vo.subwayinfo}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">성별</label>
                <div class="col-sm-3">
                    <p class="form-control-static">${vo.gender}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">제한연령</label>
                <div class="col-sm-3">
                    <p class="form-control-static">${vo.agelimit}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">학력조건</label>
                <div class="col-sm-3">
                    <p class="form-control-static">${vo.academicCondition}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">근무형태</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${vo.workform }</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">근무기간</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${fn:substring(vo.workdate,0,10) }~${fn:substring(vo.endDate,0,10)}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">근무요일</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${vo.dayofweek }</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">급여 및 급여방식</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${vo.pay } / ${vo.payway }</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">복리후생</label>
                <div class="col-sm-10">
                    <p class="form-control-static">
                        <span class="label label-success">${vo.welfare }</span> 
                    </p>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">우대조건</label>
                <div class="col-sm-10">
                    <p class="form-control-static">
                        <span class="label label-info">${vo.sweetener }</span>
                    </p>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">업무내용</label>
                <div class="col-sm-10">
                    <p class="form-control-static">
                        웹개발 ...
                    </p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">회사소개</label>
                <div class="col-sm-10">
                    <p class="form-control-static">
                        어려서부터 우리집은 가난했었고.<br/>
                        남들은 다하는 외식 몇 번 한적이 없었고.<br/>
                    </p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">공고이미지</label>
                <div class="col-sm-10">
                    <p class="form-control-static">
			           <img src="<c:url value='/peoplejob_upload/${vo.companyimage }'/>" 
						alt="공고이미지" width="50">
                    </p>
                </div>
            </div>

        </div>

        <form id="removeForm" method="post">
            <input type="hidden" name="_method" value="delete"/>
            <div class="pull-right">
                <a href="<c:url value='/company/jobopening_del.do?jobopening=${vo.jobopening}'/>"><input type="button" id="deleteBtn" class="btn btn-default btn-mg" role="button" value="삭제"></a>
                <a href="<c:url value='/company/jobopening_edit.do?jobopening=${vo.jobopening }'/>"><input type="button" id="modifyBtn" class="btn btn-default btn-mg" role="button" value="수정"></a>
                <a href="<c:url value='/company/jobopening_agreeEdit.do?jobopening=${vo.jobopening}'/>"><input type="button" class="btn btn-default btn-mg" role="button" value="활성화 수정"></a>
                <a href="#"><input type="button" class="btn btn-default btn-mg" role="button" value="스크랩"></a>
                <a href="<c:url value='/company/jobopening_list.do'/>"><input type="button" id="listBtn" class="btn btn-default btn-mg" role="button" value="목록"></a>
            </div>
        </form>

    </div>
    </fieldset>
    </article>
<%@include file="../main/inc/bottom.jsp" %>