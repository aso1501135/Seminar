<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ include file="/WEB-INF/jsp/common.jsp"%>
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
	<p>学生IDとパスワードを入力してください<br>
	<div id="target" style="color: red;">
		<c:out value="${errorMessage}" />
	</div>

	<form method="post" action="<%=request.getContextPath()%>/LoginS">
		<table>
			<tr>
				<td><input type="text" name="userid" size="40" placeholder="学生ID"></td>
			</tr>
			<tr>
				<td><input type="password" name="pass" size="40" placeholder="パスワード"></td>
			</tr>
		</table>
		<input type="submit" class="button" value="ログイン">
	</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>