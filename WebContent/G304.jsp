<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="G304.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

<title>ゼミ科目編集</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
			<h2>ゼミ科目 編集</h2>
			<form method="GET"
				action="<%=request.getContextPath()%>/SubjectEdit">

				<table border="1">
					<tr>
						<th>科目ID</td>
						<td>科目ID取得</td>
					</tr>
					<tr>
						<th>科目名</td>
						<td><input type="text" name="seminarName"
							placeholder="科目名取得"></input></td>
					</tr>
					<tr>
						<th>分野ID</td>
						<td>分野ID取得</td>
					</tr>
					<tr>
						<th>分野名</td>
						<td><select name="fieldid" size=1>
								<option value="IT">IT</option>
								<option value="English">英語</option>
								<option value="communication">コミュニケーション</option>
						</select></td>
					</tr>
				</table>

				<input type="button" name="back" value="戻る"> <input
					type="button" name="delete" value="削除"> <input
					type="submit" name="save" value="保存">
			</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>