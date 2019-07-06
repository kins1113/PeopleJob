<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/inc/top.jsp" %>
<script type="text/javascript" src=<c:url value='/resources/js/jquery-3.4.1.min.js'/>></script>
<script type="text/javascript">
	$(document).ready(function(){
		var a;
		$("input[name='welfare1']").click(function(idx,item){
			if($(this).is(':checked')){
				//alert(1);
				a=$("input[name='welfare']").val();
				$("input[name='welfare']").val(a+","+$(this).val()); 
			}else{
				$("input[name='welfare']").val(a); 
			}
		});
	});
</script>
<article>
<fieldset>
    <div class="col-md-9">
        <div class="page-header">
            <h3>구인</h3>
        </div>
        <form id="boardForm" class="form-horizontal" role="form" method="post" action="<c:url value='/company/jobopening_edit.do'/>"
        enctype="multipart/form-data">
        <!-- ${company_code} -->
        <input type="text" name="companyCode" value="${vo.companyCode}">
		<input type="hidden" name="jobopening" value="${vo.jobopening}">
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">공고제목</label>
                <div class="col-sm-10">
                    <input id="jobtitle" name="jobtitle" class="form-control" type="text" value="${vo.jobtitle }"/>
                </div>
            </div>
             
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">지역구분</label>
                <div class="col-sm-10">
                    <input id="localcheck" name="localcheck" class="form-control" type="text" value="${vo.localcheck }"/>
                </div>
            </div>
            
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">역정보</label>
                <div class="col-sm-10">
                    <input id="subwayinfo" name="subwayinfo" class="form-control" type="text" value="${vo.subwayinfo }"/>
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">근무방식</label>
                <div class="col-sm-10">
                    <input id="workway" name="workway" class="form-control" type="text" value="${vo.workway }"/>
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">근무기간(date)</label>
                <div class="col-sm-10">
                    <input id="workdate" name="workdate" class="form-control" type="text" value="${fn:substring(vo.workdate,0,10) }"/>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">모집종료일(date) :</label> 
                    <input id="end_date" name="endDate" class="form-control" type="text" value="${fn:substring(vo.endDate,0,10)}"/>
                </div>
            </div>
            <!-- 
             <div class="form-group">
                <label class="col-sm-2 control-label">근무기간</label>
                <div class="col-sm-6">
                    <div class="input-group">
                        <input id="start" name="start" class="form-control" placeholder="YYYYMMDD" type="text" />
                        <span class="input-group-addon">~</span>
                        <input id="end" name="start" class="form-control" placeholder="YYYYMMDD" type="text" />
                    </div>
                </div>
            </div>
             -->
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">근무요일</label>
                <div class="col-sm-10">
                    <input id="dayofweek" name="dayofweek" class="form-control" type="text" value="${vo.dayofweek }"/>
                </div>
            </div>
            
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">근무시간</label>
                <div class="col-sm-10">
                    <input id="worktime" name="worktime" class="form-control" type="text" value="${vo.worktime }"/>
                </div>
            </div>
          
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">급여방식</label>
                <div class="col-sm-10">
                    <input id="payway" name="payway" class="form-control" type="text" value="${vo.payway }"/>
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">급여</label>
                <div class="col-sm-10">
                    <input id="pay" name="pay" class="form-control" type="text" value="${vo.pay }"/>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label">근무형태</label>
                <div class="col-sm-6">
                    <select name="workform" class="form-control">
                        <option value="정규직(신입)"
                        <c:if test="${vo.workform=='정규직(신입)'}">
                        selected
                        </c:if>
                        >정규직(신입)</option>
                        <option value="정규직(경력)"
                        <c:if test="${vo.workform=='정규직(경력)'}">
                        selected
                        </c:if>
                        >정규직(경력)</option>
                        <option value="프리랜서(계약직)"
                        <c:if test="${vo.workform=='프리랜서(계약직)'}">
                        selected
                        </c:if>
                        >프리랜서(계약직)</option>
                    </select>
                </div>
            </div>
              <!-- name="welfare" -->
             <div class="form-group">
                <label class="col-sm-2 control-label">복리후생</label>
                <div class="col-sm-10">  
                <c:set var="welfare" value="${vo.welfare }"/>
                    <label><input type="checkbox" name="welfare1" value="국민연금" 
                    <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'국민연금'),fn:indexOf(welfare,'국민연금')+fn:length('국민연금'))=='국민연금'}">
                    checked
                    </c:if>
                    /> 국민연금</label>
                    <label><input type="checkbox" name="welfare1" value="건강보험" 
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'건강보험'),fn:indexOf(welfare,'건강보험')+fn:length('건강보험'))=='건강보험'}">
                    checked
                    </c:if>
                    /> 건강보험</label>
                    <label><input type="checkbox" name="welfare1" value="고용보험" 
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'고용보험'),fn:indexOf(welfare,'고용보험')+fn:length('고용보험'))=='고용보험'}">
                    checked
                    </c:if>
                    /> 고용보험</label>
                    <label><input type="checkbox" name="welfare1" value="산재보험" 
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'산재보험'),fn:indexOf(welfare,'산재보험')+fn:length('산재보험'))=='산재보험'}">
                    checked
                    </c:if>
                    /> 산재보험</label>
                    <label><input type="checkbox" name="welfare1" value="야근수당"
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'야근수당'),fn:indexOf(welfare,'야근수당')+fn:length('야근수당'))=='야근수당'}">
                    checked
                    </c:if>
                    /> 야근수당</label>
                    <label><input type="checkbox" name="welfare1" value="식대(점심)"
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'식대(점심)'),fn:indexOf(welfare,'식대(점심)')+fn:length('식대(점심)'))=='식대(점심)'}">
                    checked
                    </c:if>
                    /> 식대(점심)</label>
                    <label><input type="checkbox" name="welfare1" value="식대(저녁)"
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'식대(저녁)'),fn:indexOf(welfare,'식대(저녁)')+fn:length('식대(저녁)'))=='식대(저녁)'}">
                    checked
                    </c:if>
                    /> 식대(저녁)</label>
                    <label><input type="checkbox" name="welfare1" value="교통비"
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'교통비'),fn:indexOf(welfare,'교통비')+fn:length('교통비'))=='교통비'}">
                    checked
                    </c:if>
                    /> 교통비</label>
                    <label><input type="checkbox" name="welfare1" value="통신비" 
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'통신비'),fn:indexOf(welfare,'통신비')+fn:length('통신비'))=='통신비'}">
                    checked
                    </c:if>
                    /> 통신비</label>
                    <label><input type="checkbox" name="welfare1" value="퇴직금"
                     <c:if test="${fn:substring(welfare,fn:indexOf(welfare,'퇴직금'),fn:indexOf(welfare,'퇴직금')+fn:length('퇴직금'))=='퇴직금'}">
                    checked
                    </c:if>
                    /> 퇴직금</label>
                    <input type="text" name="welfare" value="${vo.welfare }">
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">성별</label>
                <div class="col-sm-10">
                	<select class="form-control" id="gender" name="gender">
                        <option value="남자"
                        <c:if test="${vo.gender=='남자'}">
                        selected
                        </c:if>
                        >남자</option>
                        <option value="여자"
                        <c:if test="${vo.gender=='여자'}">
                        selected
                        </c:if>
                        >여자</option>
                        <option value="무관"
                        <c:if test="${vo.gender=='무관'}">
                        selected
                        </c:if>
                        >무관</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">제한연령</label>
                <div class="col-sm-10">
                    <input id="agelimit" name="agelimit" class="form-control" type="text" value="${vo.agelimit }"/>
                </div>
             </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">학력조건</label>
                <div class="col-sm-3">
                    <select class="form-control" id="academicCondition" name="academicCondition">
                        <option value="대졸"
                        <c:if test="${vo.academicCondition=='대졸'}">
                        selected
                        </c:if>
                        >대졸</option>
                        <option value="대학원"
                        <c:if test="${vo.academicCondition=='대학원'}">
                        selected
                        </c:if>
                        >대학원</option>
                        <option value="고졸"
                        <c:if test="${vo.academicCondition=='고졸'}">
                        selected
                        </c:if>
                        >고졸</option>
                    </select>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">경력사항 :</label> 
                    <input id="career" name="career" class="form-control" type="text" value="${vo.career }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">우대조건 :</label> 
                    <input id="sweetener" name="sweetener" class="form-control" type="text" value="${vo.sweetener }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">모집인원 :</label> 
                    <input id="recruit" name="recruit" class="form-control" type="text" value="${vo.recruit }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">모집대상 :</label> 
                    <input id="recruitment_target" name="recruitmentTarget" class="form-control" type="text" value="${vo.recruitmentTarget }"/>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">접수방법 :</label> 
                    <input id="receiveway" name="receiveway" class="form-control" type="text" value="${vo.receiveway }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">제출서류 :</label> 
                    <input id="submit" name="submit" class="form-control" type="text" value="${vo.submit }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">상세모집요강 :</label> 
                    <input id="applicationhandbook" name="applicationhandbook" class="form-control" type="text" value="${vo.applicationhandbook }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">카테고리 :</label> 
                    <input id="category" name="category" class="form-control" type="text" value="${vo.category }"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <label class="control-label">공고 이미지 :</label> 
                    <input id="companyimageurl" name="companyimageurl" class="form-control" type="file" value="${vo.companyimage}"/>
                </div>
                <c:if test="${!empty vo.companyimage }">
	            <br>
	            <span class="sp1"></span>
	            <span style="color:green;font-weight: bold">
	            	※ 첨부파일을 새로 지정할 경우 기존 파일 ${fileInfo }은 삭제됩니다.
	            </span>
            </c:if>
	            <input type="text" name="oldFileName" value="${vo.companyimage}" />
            </div>
            <div class="form-group">
                <div class="text-center">
                    <input type="submit" class="btn btn-success btn-mg" value="저장" role="button" />
                    <a href="<c:url value='/company/jobopening_view.do?jobopening=${vo.jobopening }'/>" id="cancelBtn" class="btn btn-default btn-mg" role="button">취소</a>
                </div>
            </div>

        </form> 
    </div>
    </fieldset>
    </article>
<%@include file="../main/inc/bottom.jsp" %>