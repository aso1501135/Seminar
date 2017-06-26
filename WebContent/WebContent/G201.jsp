<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ include file="/WEB-INF/jsp/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>ログイン(学生)</title>
<link rel="stylesheet" type="text/css" href="/seminar/css/G304.css">
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="main" align="center">
<h2>ログイン</h2>
	<p>学生IDとパスワードを入力してください<br>
	<div id="target" style="color: red;">
		<c:out value="${errorMessage}" />
	</div>

	<form method="post" action="/seminar/Login">
		<table>
			<tr>
				<td style="font-size : 25px">学生ID</td>
				<td style="font-size : 25px"><input type="text" name="userid" size="10"></td>
			</tr>
			<tr>
				<td style="font-size : 25px">パスワード</td>
				<td style="font-size : 25px"><input type="password" name="pass" size="10"></td>
			</tr>
		</table><br>
		<input type="submit" value="ログイン">
	</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>