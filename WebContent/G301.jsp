<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン(教師)</title>
<link rel="stylesheet" type="text/css" href="/seminar/css/G301.css">
</head>
<body>
<div align="center">
<table id="header">
	<tr>
		<td style="font-size : 30px">ログイン(教師)
		<td><a href="G101.jsp">ホームに戻る</a>
	</tr>
</table>
<hr>
	<p>教師IDとパスワードを入力してください<br>
	<div id="target" style="color: red;">
		<c:forEach var="error" items="${errorMessageList}" varStatus="status">
			<p>
				<c:out value="${error}" />
			</p>
		</c:forEach>
		<c:out value="${errorMessage}" />
	</div>

	<form method="post" action="/seminar/Login">
		<table>
			<tr>
				<td style="font-size : 25px">教師ID</td>
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
</body>
</html>