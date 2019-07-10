<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchDate.jsp</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $(function($) {
    $( "#datepicker1" ).datepicker({
    		dateFormat:"yy-mm-dd",
			changeYear:true,
			dayNamesMin:["일","월","화","수","목","금","토"],
			monthNames:["1월","2월","3월","4월","5월","6월",
					"7월","8월","9월","10월","11월","12월"]});
    $( "#datepicker2" ).datepicker({
    		dateFormat:"yy-mm-dd",
			changeYear:true,
			dayNamesMin:["일","월","화","수","목","금","토"],
			monthNames:["1월","2월","3월","4월","5월","6월",
					"7월","8월","9월","10월","11월","12월"]});
  })
  </script>
</head>
<body>
<input type="text" class="form-control" id="${param.id}" name="${param.name }" readonly="readonly" valud="${param.date }">
</body>
</html>
<!-- 파라미터 값으로 datepicker1, datepicker2, datepicker3, datepicker4 넘겨줘야함
<c:import url="/inc/searchDate.do">
	<c:param name="id" value="datepicker1"></c:param>
	<c:param name="name" value="datepicker1"></c:param>
	<c:param name="date" value="datepicker1"></c:param>
</c:import>
 -->