<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css"/>

<title>週刊スケジュール</title>
</head>
<body>
<div class="container">
<h1>週刊スケジュール</h1>

<div id="target" style="color:red;">
<c:forEach var="error" items="${errorMassageList}" varStatus="status">
<p>
<c:out value="${error}"/>
</p>
</c:forEach>
<c:out value="${errorMessage}"/>
</div>

<form method="post" action="/WeekSchedule/LoginServlet" class="form-horizotal">
	<!--ユーザID-->
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputID">ユーザID</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="InputID" name="id" placeholder="ユーザID"/>
		</div>
	</div>
	<!--password-->
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputPassword">パスワード</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" id="InputPassword" name="pass" placeholder="Password"/>
		</div>
	</div>
	<!--ログインボタン-->
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn-primary">ログイン</button>
			</a>
		</div>
	</div>
</form>
</body>
</html>