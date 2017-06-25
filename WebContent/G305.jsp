<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>学生一覧</title>
  <link rel="stylesheet" href="style.css"/>
  <link rel="stylesheet" href="G305.css"/>
  
  </head>
  <body>
  	<%@ include file="header.jsp"%>
  <div class="main" align="center">
    <h2>学生一覧</h2>
    <ul class="table">
		<li>曜日:火</li>
		<li>科目名</li>
		<li>受講者:1</li>
		</ul>
		<table border="1">
    <tr>
      <th>クラス</th>
      <th>氏名</th>

    </tr>
    
    <tr>
      <td class="class">1</td>
      <td class="name">田中太郎</td>

    </tr>
    <tr>
      <td class="class">2</td>
      <td class="name">田中次郎</td>

    </tr>
    <tr>
      <td class="class">3</td>
      <td class="name">田中小次郎</td>

    </tr>
</table>
<input type="button" name="back" value="戻る">
<input type="button" name="print" value="印刷">

</div>
	<%@ include file="footer.jsp"%>

</body>

</html>