<%@page contentType="text/html;charset=UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container">
	<div class="navbar-header">
		<a class="navbar-brand"><b>白沙学校财务助手</b></a>
	</div>
	<div class="collapse navbar-collapse" id="navbar-main">	
      <ul id="indexNavBar" class="nav navbar-nav">
      	<li data-url="${appPath}/bankcard/BankCardQueryList.do">
        	<a href="#">银行卡号查询</a>
        </li>
        <shiro:hasPermission name="bankCard:list" >
      	<li data-url="${appPath}/bankcard/BankCardList.do">
        	<a href="#">银行卡号管理</a>
        </li>
        </shiro:hasPermission>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a><shiro:principal/></a></li>
      	<li><a id="logout" href="${appPath}/logout/logout">退出</a></li>
      </ul>
    </div>
</div>
</nav>
 
