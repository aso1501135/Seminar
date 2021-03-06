<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common.jsp"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="G202.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

<title>受講してる科目一覧</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
			<table>
				<tr>
					<th width="250px">科目名</th>
					<th width="60px">曜日</th>
					<th width="150px">教師名</th>
				</tr>
				<c:forEach var="list" items="${lecture}" varStatus="status">
					<tr>
						<td class="cell">${list.seminar_Name}</td>
						<c:choose>
							<c:when test="${list.week == 1}">
								<td>火曜日</td>
							</c:when>
							<c:when test="${list.week == 2}">
								<td>木曜日</td>
							</c:when>
						</c:choose>
						<td>${list.teacher_Name}</td>
						<td><button type="submit" name="delete" onclick="window.location.href='Delete?number=${status.index}&seminarid=${list.seminar_Id}&week=${list.week}'">削除</button></td>
					</tr>
				</c:forEach>
			</table>

		<input type="submit" name="regist" class="button" value="受講科目申請" onclick="location.href='Offer'">
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>