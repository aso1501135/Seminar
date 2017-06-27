<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ゼミ科目登録</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
		<h2>科目登録</h2>
		<form action="<%=request.getContextPath()%>/Register"
						method="post">
		<table border="1">
		
		
			<tr>
				<th class="sub">科目名</th>
				<td>
						<input type="text" class="text" size="16" name="subject" placeholder="科目名"></td>
			</tr>
			<tr>
				<th class="sub">分野</th>
				<td><select name="kamoku">
						<option value="1">IT</option>
						<option value="2">英語</option>
						<option value="3">コミュニケーション</option>
				</select></td>
			</tr>
		</table>
		<input type="button" class="button" value="戻る"> <input type="submit" class="button" value="登録">
		</form>

	</div>
		<%@ include file="footer.jsp"%>
	
</body>
</html>