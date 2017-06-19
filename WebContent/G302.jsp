<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="G304.css">
<title>ゼミ科目一覧</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr color=#000000>
	<div class="main" align="center">
		<h2>ゼミ科目一覧</h2>
		<table border="1">
			<tr>
				<td>科目名</td>
				<td>曜日</td>
				<td>教師名</td>
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

		<input type="button" value="登録" onclick="location.href=''"> <input
			type="button" value="変更" onclick="location.href=''">

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>