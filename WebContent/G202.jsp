<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/jsp/common.jsp"%>
    <head>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="G202.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

<title>受講してる科目一覧</title>
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="main" align="center">
<table>
  <tr >
    <td>科目名</td>
    <td>曜日</td>
    <td>教師名</td>
  </tr>

  <tr>
    <td class="cell">言葉のマナー</td>
    <td class="cell">木曜日</td>
    <td class="cell">神永</td>
    <td>
	<input type="button" value="削除" onclick="location.href=''">
	</td>
  </tr>

  <tr>
    <td class="cell">方言</td>
    <td class="cell">火曜日</td>
    <td class="cell">神永</td>
    <td>
	<input type="button" value="削除" onclick="location.href=''">
	</td>
  </tr>
</table>
	<input type="button" class="button" value="科目の選択" onclick="location.href=''">
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>