<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="G304.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

<title>ゼミ科目一覧</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="main" align="center">
		<h2>ゼミ科目一覧</h2>

			<div class="side" border="1">
	<table border="1">
	<tr><td>
	<form method="POST" action="<%=request.getContextPath()%>/studentList?Seminar_Id = 1 & Week = 1">
	<select name="sub" size="1">
	<option>IT　プログラミング　火曜</option></select><br/>
	<input type="submit" name="change" value="変更">
	<input type="submit" name="list" value="学生一覧">

	</form>
	</td></tr>
	</table>
	</div>

		<div class="center">
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
	</div>


	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>