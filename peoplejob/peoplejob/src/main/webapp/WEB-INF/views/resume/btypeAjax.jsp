<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
$('#categoryNoL').change(function(){
    $.ajax({
       url:"<c:url value='/admin/bannerexpoert/ajaxCategoryM.do'/>",
       type:"get",
       data:"categoryNo="+$(this).val(),
       dataType:"json",
       success:function(res){
          $('#categoryNoM').html("");
          if(res.length>0){
             var str = "";
             $.each(res, function(idx, item){
                str="<option value='" + this.categoryNoM + "'>" 
                + this.categoryName + "</option>";
                $('#categoryNoM').append(str);
             });
          }
       },
       error:function(xhr, status, error){
          alert(status+":"+ error);
       }
    });
 });
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	                                      <select name="categoryNoL" id="categoryNoL">
                                          <c:forEach var="vo" items="${list }">
                                             <option value="${vo.categoryNo }">${vo.categoryNameL }</option>
                                          </c:forEach>
                                       </select>
                                       <select name="categoryNoM" id="categoryNoM">
                                       </select>
</body>
</html>