
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/jsp/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>ログイン(教師)</title>
</head>
<body>
	<jsp:include page="header.jsp" />
<div class="main" align="center">
		<h2>ログイン</h2>

		<div class="login">
			<p>教師IDとパスワードを入力してください</p>

			<p color="red"><c:out value="${errorMessage}" /></p>

			<form method="post" action="<%=request.getContextPath()%>/LoginT">
				<table>
					<tr>
						<td><input type="text" name="userid" size="40" placeholder="教師ID"></td>
					</tr>
					<tr>
						<td><input type="password" name="pass" size="40" placeholder="パスワード"></td>
					</tr>
				</table>
				<br> <input type="submit" name="login" class ="button" value="ログイン">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>