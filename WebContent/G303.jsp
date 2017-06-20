<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ゼミ科目登録</title>
<link rel="stylesheet" type="text/css" href="G304.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
		<h2>科目登録</h2>
		<table border="1">
			<tr>
				<th>科目名</th>
				<td><form action="<%= request.getContextPath() %>/Register"
						method="post">
						<input type="text" size="16" placeholder="科目名"></td>
			</tr>
			<tr>
				<th>分野</th>
				<td><select name="kamoku">
						<option value="1">IT</option>
						<option value="2">英語</option>
						<option value="3">コミュニケーション</option>
				</select></td>
			</tr>
		</table>
		<input type="button" value="戻る">
		<input type="submit" value="登録">
		</form>

	</div>
</body>
</html>