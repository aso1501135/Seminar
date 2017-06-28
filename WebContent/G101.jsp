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
		<!-- 近いうちにWEB-INFにjspを入れて遷移先を変更する -->
		<input type="submit" class="btn" value="学生"onClick="location.href='G201.jsp'">
		<input type="submit"class="btn" value="教師" onClick="location.href='G301.jsp'">
	</div>
	<%@ include file="footer.jsp"%>

</body>
</html>