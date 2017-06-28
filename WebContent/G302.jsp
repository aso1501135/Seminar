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
<link rel="stylesheet" type="text/css" href="seminar.css">
<link rel="stylesheet" type="text/css" href="G302.css">


<title>ゼミ科目一覧</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="main" align="center">
		<h2>ゼミ科目一覧</h2>
		<div class="side" border="1">
			<table border="1">
				<tr>
					<td>
						<form method="GET"
							action="<%=request.getContextPath()%>/SubjectEdit">
							<select name="seminar" size="1">
								<c:forEach var="list" items="${List}">
									<option value="${list.index}">
										${list.index}${list.seminar_Name}
										<c:choose>
											<c:when test="${list.week == 1}">
								火曜日
							</c:when>
											<c:when test="${list.week == 2}">
								木曜日
							</c:when>

										</c:choose>

									</option>
								</c:forEach>
							</select> <br /> <input type="submit" name="change" value="変更"> <input
								type="submit" name="student" value="学生一覧">

						</form>
					</td>
				</tr>
			</table>
		</div>
		<div class="center">
			<table border="1">
				<tr>
					<th>科目名</th>
					<th>曜日</th>
					<th>教師名</th>
				</tr>
				<c:forEach var="list" items="${List}">
					<tr>
						<td>${list.seminar_Name}</td>
						<c:choose>
							<c:when test="${list.week == 1}">
								<td>火曜日</td>
							</c:when>
							<c:when test="${list.week == 2}">
								<td>木曜日</td>
							</c:when>
						</c:choose>
						<td>${list.teacher_Name}</td>
					</tr>
				</c:forEach>

			</table>

			<input type="button" class="button" value="登録" onclick="location.href='Register'">
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>