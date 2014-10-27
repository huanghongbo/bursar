$(document).ready(function() {
	
	//初始化
	var barkCardTable = $("#bankCardTable");
	barkCardTable.bootstrapTable();
	
	
	//ajax化Form
	$("#bankCardQueryListForm").ajaxForm({
		target:'#workContainer'
	});
	
	
	// 查询全部
	$("#queryAllBtn").click(function() {
		$("#queryAll").attr('value','true');
		$("#bankCardQueryListForm").submit();
	});
	
	// 查询
	$("#queryBtn").click(function() {
		$("#queryAll").attr('value','false');
		$("#bankCardQueryListForm").submit();
	});
	
	// 导出
	$("#exportBtn").click(function() {
         $("#exportFrame").attr("src", appPath+"/bankcard/downloadBankCardQueryList.do");
	});
	
	
	
});