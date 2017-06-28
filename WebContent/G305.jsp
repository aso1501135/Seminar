<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ include file="/WEB-INF/jsp/common.jsp"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<html>
<head>
<title>ゼミ受講システム(学生一覧)</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
  <link rel="stylesheet" type="text/css" href="G305.css"/>
    <link rel="stylesheet" type="text/css" href="seminar.css"/>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="main" align="center">
    <h2>学生一覧</h2>
    <ul class="table">
		<li>曜日:<c:if test="${List[id].week == 1}">
		火曜日
		</c:if>
		<c:if test="${List[id].week == 2}">
		木曜日
		</c:if>
		</li>
		<li>科目名:${List[id].seminar_Name}</li>
		<li>受講者:${member}人</li>
		</ul>
		<table border="1">
		<tr>
			<th>クラス</th>
			<th>氏名</th>
		</tr>
		<c:forEach var="list" items="${student}">
		<tr>
		<td class="class">${list.class_Name}</td>
		<td class="name">${list.student_Name}</td>
		</tr>
		</c:forEach>
	</table>
	<input type="button" class="button" name="back" value="戻る">
<input type="button" class="button" name="print" value="印刷">

</div>
	<%@ include file="footer.jsp"%>

</body>
</html>