<%@page contentType="text/html;charset=UTF-8"%>
<%@ include file="/include/includeSegment.jsp"%>
<script type="text/javascript" src="${appPath}/bankcard/BankCardAdd.js"></script>
<div class="row">
	<div class="col-md-12">
		<form id="bankCardForm" class="form-horizontal" role="form" method="post"
			 action="${appPath}/bankcard/BankCardAdd.do">
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">编号</label>
				<div class="col-sm-10">
					 <input type="text" name="code" class="form-control" value="${bankCard.code}" 
					 data-bv-notempty />  
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">姓名</label>
				<div class="col-sm-10">
					<input type="text" name="name" class="form-control" value="${bankCard.name}" />    
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<input type="text" name="sex"  class="form-control" value="${bankCard.sex}" /> 
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">身份证号</label>
				<div class="col-sm-10">
					<input type="text" name="idCardNumber"  class="form-control" value="${bankCard.idCardNumber}" /> 
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">银行卡号</label>
				<div class="col-sm-10">
					<input type="text" name="bankCardNumber"  class="form-control" value="${bankCard.bankCardNumber}" />  
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">备注</label>
				<div class="col-sm-10">
					<textarea name="remark" class="form-control" rows="3"  style="height:98px;">${bankCard.remark}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button id="saveAddBtn" type="submit" class="btn btn-primary">保存</button>
					<button id="backToList" type="button" class="btn btn-default">取消</button>
				</div>
			</div>
		</form>
	</div>
</div>
