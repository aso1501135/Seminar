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

<title>ゼミ科目編集</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
			<h2>ゼミ科目 編集</h2>
			<form method="GET"
				action="<%=request.getContextPath()%>/SubjectMake">

				<table border="1">
					<tr>
						<th class="sub">科目ID</th>
						<td>${seminarid}<input type="hidden" name="subject" value="${seminarid}"/></td>
					</tr>
					<tr>
						<th>科目名</th>
						<td><input type="text" class="text" name="seminarName"
							placeholder="科目名"></input></td>
					</tr>
					<tr>
						<th class="sub">分野ID</th>
						<td>分野ID取得</td>
					</tr>
					<tr>
						<th class="sub">分野名</th>
						<td><select name="category" size=1>
								<option value="1">IT</option>
								<option value="2">英語</option>
								<option value="3">コミュニケーション</option>
						</select></td>
					</tr>
				</table>

				<input type="button" class="button" name="back" value="戻る">
				<input type="button" class="button" name="delete" value="削除">
				<input type="submit" class="button" name="save" value="保存">
			</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>