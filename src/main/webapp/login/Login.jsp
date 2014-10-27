<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/include/include.jsp"%>
<title></title>
<style>
	body {
	  padding-top: 40px;
	  padding-bottom: 40px;
	  background-color: #eee;
	}
</style>
</head>
<body>
	<div class="container">
		<form role="form" action="" method="post">
			<h2 align="center" class="form-signin-heading"> 白沙学校财务助手系统</h2>
			<input name="username" class="form-control" placeholder="用户名"
				required autofocus /> 
			<input type="password" name="password" class="form-control"
				placeholder="密码" required /><br />
			<button  class="btn btn-lg btn-primary btn-block"  type="submit">登录</button>
		</form>
	</div>
	<!-- /container -->
</body>
</html>
