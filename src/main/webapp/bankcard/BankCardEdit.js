$(document).ready(function() {

	//校验
	$('#bankCardForm').bootstrapValidator();
	
	//ajax化Form
	$("#bankCardForm").ajaxForm({
		target:'#workContainer'
	});
	
	// 回到只读页
	$("#backToRead").click(function() {
		var idValue = $("#id").attr("value");
		$("#workContainer").load(appPath+"/bankcard/BankCardRead.do?id="+idValue);
	});
	
});