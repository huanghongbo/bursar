$(document).ready(function() {
	
	// 回到列表页
	$("#backToList").click(function() {
		 $("#workContainer").load(appPath+"/bankcard/BankCardList.do?rememberQueryForm=true");
	});
	
	// 进入更新页面
	$("#editInitBtn").click(function() {
		var idValue = $("#id").attr("value");
		 $("#workContainer").load(appPath+"/bankcard/BankCardEditInit.do?id="+idValue);
	});
	
});