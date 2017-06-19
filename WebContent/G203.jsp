<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="G304.css">
<%--tableの中身は<c:forEach>で増やす予定
エラーメッセージは<c:outで増やす予定 --%>
<title>ゼミ科目登録</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
	<header> </header>
	<h2>ゼミ科目登録</h2>
	<p>
		<c:out value=${errorMsg }/>
		エラーが出る予定
	<p>
	<form action="" method="post" name="regist">
		<h3>英語</h3>
		<table border="1">
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>文法</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>異文化調査</td>
			</tr>
		</table>
		<h3>IT</h3>
		<table border="1">
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>JAVA</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>SNS講座()</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>情報リテラシー</td>
			</tr>
		</table>
		<h3>コミュニケーション</h3>
		<table border="1">
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>方言</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>言葉のマナー</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>コミュニケ―ション</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="subject"></td>
				<td>ビジネスマナー</td>
			</tr>
		</table>
		<input type="submit" value="登録" />
	</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>