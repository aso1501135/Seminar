<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="G304.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ゼミ受講システム</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="main" align="center">
	<h2>ホーム</h2>
	<form class="form-horizontal" method="post" action="G101Login">
		<input type="submit" class="btn btn-primary" value="学生用ログイン">
		<input type="submit" class="btn btn-primary" value="教師用ログイン">
	</form>
	</div>
	<%@ include file="footer.jsp"%>
	
</body>
</html>