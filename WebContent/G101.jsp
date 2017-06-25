<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="G101.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ゼミ受講システム</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="main" align="center">
	<h2>ホーム</h2>
	<form method="post" action="G101Login">
		<input type="button" class="btn" name="student" value="学生用ログイン">
		<input type="button" class="btn" name="student" value="教師用ログイン">
	</form>
	</div>
	<%@ include file="footer.jsp"%>
	
</body>
</html>