$(document).ready(function() {
	
	//校验
	$('#bankCardForm').bootstrapValidator();
	
	//ajax化Form
	$("#bankCardForm").ajaxForm({
		target:'#workContainer'
	});
	
	// 回到列表页
	$("#backToList").click(function() {
		 $("#workContainer").load(appPath+"/bankcard/BankCardList.do?rememberQueryForm=true");
	});
 
});