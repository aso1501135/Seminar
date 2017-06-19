<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="G304.css">
<link rel="stylesheet" type="text/css" href="seminar.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

<title>ゼミ科目一覧</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<center>
	<div class="main">
		<center>
		<h2>ゼミ科目一覧</h2>
		<table border="1">
			<tr>
				<th>科目名</th>
				<th>曜日</th>
				<th>教師名</th>
			</tr>

			<tr>
				<td>言葉のマナー</td>
				<td>木曜日</td>
				<td>神永</td>
			</tr>

			<tr>
				<td>言葉のマナー</td>
				<td>木曜日</td>
				<td>神永</td>
			</tr>

			<tr>
				<td>言葉のマナー</td>
				<td>木曜日</td>
				<td>神永</td>
			</tr>
		</table>

		<input type="button" value="登録" onclick="location.href=''">
	</center>
	
	<div class="side" border="1">
	<form method="GET" action="">
	<select name="sub" size="1">
	<option>IT</option></select><br/>
	<input type="submit" name="change" value="change">
	<input type="submit" name="list" value="list">
	
	</form>
	</div>
	
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>