<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="G304.css">
<title>ゼミ科目編集</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<hr color="#000000">
	<div class="main">
		<center>
			<h2>ゼミ科目 編集</h2>
			<form method="GET"
				action="<%=request.getContextPath()%>/SubjectEdit">

				<table border="1">
					<tr>
						<td width="70px">科目ID</td>
						<td width="70px">科目ID取得</td>
					</tr>
					<tr>
						<td width="70px">科目名</td>
						<td width="70px"><input type="text" name="seminarName"
							placeholder="科目名取得"></input></td>
					</tr>
					<tr>
						<td width="70px">分野ID</td>
						<td width="70px">分野ID取得</td>
					</tr>
					<tr>
						<td width="70px">分野名</td>
						<td width="70px"><select name="fieldid" size=1>
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

		</center>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>