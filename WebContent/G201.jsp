<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>ログイン(学生)</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="main" align="center">
<h2>ログイン</h2>
	<div id="target" style="color: red;">
			<p>
				<c:out value="${error}" />
			</p>
		<c:out value="${errorMessage}" />
	</div>

	<form method="post" action="/seminar/Login">
		<table>
			<tr>
				<td><input type="text" name="userid" placeholder="学生ID" size="40"></td>
			</tr>
			<tr>
				<td><input type="password" name="pass" placeholder="パスワード" size="40"></td>
			</tr>
		</table><br>
		<input type="submit" class="button" value="ログイン">
	</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>