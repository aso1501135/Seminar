<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common.jsp"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="G203.css">
<%--tableの中身は<c:forEach>で増やす予定
エラーメッセージは<c:outで増やす予定 --%>
<title>ゼミ科目登録</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main" align="center">
		<h2>ゼミ科目登録</h2>
		<form action="<%=request.getContextPath()%>/Offer" method="post" name="regist">
			<div class="1">

				<h3>英語</h3>
				<ul>
					<li>火曜日</li>
					<li>木曜日</li>
				</ul>
				<div class="eng">
					<c:forEach var="english" items="${EngList}"><c:choose><c:when test="${english.week == 1}">
								<p><input type="checkbox" name="tuesday" value="${english.seminar_Id}" />${english.seminar_Name}</p>
							</c:when></c:choose></c:forEach>
				</div>
				<div class="eng">
					<c:forEach var="english" items="${EngList}"><c:choose><c:when test="${english.week == 2}">
								<p><input type="checkbox" name="thursday" value="${english.seminar_Id}" />${english.seminar_Name}</p>
							</c:when></c:choose></c:forEach>
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
					<c:forEach var="it" items="${ItList}"><c:choose><c:when test="${it.week == 1}">
								<p><input type="checkbox" name="tuesday" value="${it.seminar_Id}" />${it.seminar_Name}${it.week}</p>
							</c:when></c:choose></c:forEach>
				</div>
				<div class="it">
					<c:forEach var="it" items="${ItList}"><c:choose><c:when test="${it.week == 2}">
								<p><input type="checkbox" name="thursday" value="${it.seminar_Id}" />${it.seminar_Name}${it.week}</p>
							</c:when></c:choose></c:forEach>
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
					<c:forEach var="commun" items="${CommunList}"><c:choose><c:when test="${commun.week == 1}">
								<p><input type="checkbox" name="tuesday" value="${commun.seminar_Id}" />${commun.seminar_Name}${commun.week}</p>
							</c:when></c:choose></c:forEach>
				</div>
				<div class="com">
					<c:forEach var="commun" items="${CommunList}"><c:choose><c:when test="${commun.week == 2}">
								<p><input type="checkbox" name="thursday" value="${commun.seminar_Id}" />${commun.seminar_Name}${commun.week}</p>
							</c:when></c:choose></c:forEach>
				</div>
			</div>

			<hr class="hr" color="#FFFFFF">
			<input type="submit" class="button" value="戻る"/>

			<input type="submit" class="button" value="登録" />
		</form>

	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>