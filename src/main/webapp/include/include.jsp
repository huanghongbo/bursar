<%@page import="org.siqisource.stone.web.Path"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	response.setHeader("Pragma", "No-cache");//HTTP     1.1
	response.setHeader("Cache-Control", "no-cache");//HTTP     1.0
	response.setHeader("Expires", "0");//防止被proxy!
%>
<%
	Path path = (Path) application.getAttribute("path");
	request.setAttribute("appPath", path.getContextPath());
%>
<title>学校财务助手</title>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${appPath}/include/jquery-1.11.1.min.js"></script>

<!-- 字体css -->
<link rel="stylesheet"
	href="${appPath}/include/font-awesome-4.1.0/css/font-awesome.min.css">

<!-- Bootstrap -->
<link rel="stylesheet"
	href="${appPath}/include/bootstrap-3.2.0/css/bootstrap.min.css">
<script src="${appPath}/include/bootstrap-3.2.0/js/bootstrap.min.js"></script>

<!-- 表格 -->
<link rel="stylesheet"
	href="${appPath}/include/bootstrap-table-1.3.0/bootstrap-table.min.css">
<script type="text/javascript"
	src="${appPath}/include/bootstrap-table-1.3.0/bootstrap-table.min.js"></script>
<script type="text/javascript"
	src="${appPath}/include/bootstrap-table-1.3.0/locale/bootstrap-table-zh-CN.min.js"></script>

<!-- 表单插件 -->
<script src="${appPath}/include/jquery.form.js"></script>

<!-- 表单校验插件 -->
<link rel="stylesheet"
	href="${appPath}/include/bootstrapvalidator-0.5.0/css/bootstrapValidator.min.css" />
<script type="text/javascript"
	src="${appPath}/include/bootstrapvalidator-0.5.0/js/bootstrapValidator.min.js"></script>
<script type="text/javascript"
	src="${appPath}/include/bootstrapvalidator-0.5.0/js/language/zh_CN.js"></script>

<style type="text/css">
body {
	padding-top: 70px;
}

.margin-top-10 {
	margin-top: 10px;
}
</style>

<script type="text/javascript">
	var appPath = "${appPath}";
</script>
<div id="ALERT_DIALOG">
</div>