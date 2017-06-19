<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="G304.css">
<title>受講してる科目一覧</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="main" align="center">
<table border="1" >
  <tr >
    <td>科目名</td>
    <td>曜日</td>
    <td>教師名</td>
  </tr>

  <tr>
    <td>言葉のマナー</td>
    <td>木曜日</td>
    <td>神永</td>
    <td>
	<input type="button" value="削除" onclick="location.href=''">
	</td>
  </tr>

  <tr>
    <td>方言</td>
    <td>火曜日</td>
    <td>神永</td>
    <td>
	<input type="button" value="削除" onclick="location.href=''">
	</td>
  </tr>
</table>
	<p>
	<input type="button" value="科目の選択" onclick="location.href=''">
	</p>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>