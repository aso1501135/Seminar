<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="G203.css">
<link rel="stylesheet" type="text/css" href="seminar.css">

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
	<p>

	<form action="" method="post" name="regist">
	<div class="1">
	
		<h3>英語</h3>
	<ul>
	<li>火曜日</li>
	<li>木曜日</li>
	</ul>
		<div class="eng">
				<p><input type="checkbox" name="subject" value="">文法</p>

				<p><input type="checkbox" name="subject">異文化調査</p>
		</div>
		<div class="eng">
				<p><input type="checkbox" name="subject" value="">文法</p>

				<p><input type="checkbox" name="subject">異文化調査</p>
		</div>
		</div>
	
			<hr class="hr" color="#FFFFFF">
	
		
		<div class="2">
		
		<h3>IT</h3>
	<ul>
	<li>火曜日</li>
	<li>木曜日</li>
	</ul>
		<div class="it">
				<p><input type="checkbox" name="subject" value="">JAVA</p>
				
				<p><input type="checkbox" name="subject">SNS講座</p>
				
				<p><input type="checkbox" name="subject">情報リテラシー</p>

		</div>
		<div class="it">
				<p><input type="checkbox" name="subject" value="">JAVA</p>
				
				<p><input type="checkbox" name="subject">SNS講座</p>
				
				<p><input type="checkbox" name="subject">情報リテラシー</p>
		
		</div>
		</div>
		
			<hr class="hr" color="#FFFFFF">
		
		<div class="3">
		
		<h3>コミュニケーション</h3>
	<ul>
	<li>火曜日</li>
	<li>木曜日</li>
	</ul>
		<div class="com">
				<p><input type="checkbox" name="subject" value="">方言</p>
				
				<p><input type="checkbox" name="subject">言葉のマナー</p>

				<p><input type="checkbox" name="subject">コミュニケ―ション</p>

				<p><input type="checkbox" name="subject">ビジネスマナー</p>
		</div>
		<div class="com">
				<p><input type="checkbox" name="subject" value="">方言</p>
				
				<p><input type="checkbox" name="subject">言葉のマナー</p>

				<p><input type="checkbox" name="subject">コミュニケ―ション</p>

				<p><input type="checkbox" name="subject">ビジネスマナー</p>
		</div>
		</div>
		
			<hr class="hr" color="#FFFFFF">
		
		<input type="submit" value="登録" />
	</form>
	
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>