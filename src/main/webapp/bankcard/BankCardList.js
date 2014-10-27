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
         $("#exportFrame").attr("src", appPath+"/bankcard/downloadBankCardList.do");
	});
	
	
	//查看详细
	$(".detail-link").click(function() {
		var id = $(this).attr("data-id");
        $("#workContainer").load(appPath+"/bankcard/BankCardRead.do?id="+id);
	});
	
	
	//新增
	$("#addBtn").click(function() {
        $("#workContainer").load(appPath+"/bankcard/BankCardAddInit.do");
	});
	
	
	//删除
	$("#deleteBtn").click(function() {
		//ajax化Form
		$("#bankCardListForm").ajaxForm({
			target:'#workContainer'
		});
		$("#bankCardListForm").submit();
	});
	
	
	
});