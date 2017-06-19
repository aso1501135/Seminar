<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ゼミ科目登録</title>
</head>
<body>
	<h2>科目登録</h2>
    <input type="button" value="戻る">
    <h3>科目名</h3>
    <form action="<%= request.getContextPath() %>/Register" method="post">
    <input type="text" placeholder="科目名を打ち込んでください">
    <h3>分野</h3>
    <select name="kamoku">
    	<option>IT</option>
        <option>英語</option>
        <option>コミュニケーション</option>
    </select>
    <h3>曜日</h3>
    <select name="week">
    	<option>火曜</option>
        <option>木曜</option>
    </select>
    <input type="submit" value="登録">
    </form>

</body>
</html>