<%@page contentType="text/html;charset=UTF-8"%>
<%@ include file="/include/includeSegment.jsp"%>
<script type="text/javascript"
	src="${appPath}/bankcard/BankCardRead.js"></script>
<div class="row">
	<div class="col-md-12">
		<c:if test="${ not empty successMsg }">
		<div class="alert alert-success" role="alert">${successMsg }</div>
		</c:if>
		<form class="form-horizontal" role="form">
			<input type="hidden" id="id" name="id" value="${bankCard.id}"/>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">编号</label>
				<div class="col-sm-10">
					 <span  class="form-control" >${bankCard.code}</span> 
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">姓名</label>
				<div class="col-sm-10">
					<span  class="form-control" >${bankCard.name}</span>  
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<span  class="form-control" >${bankCard.sex}</span> 
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">身份证号</label>
				<div class="col-sm-10">
					<span  class="form-control" >${bankCard.idCardNumber}</span> 
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">银行卡号</label>
				<div class="col-sm-10">
					<span  class="form-control" >${bankCard.bankCardNumber}</span> 
				</div>
			</div>
			<div class="form-group  form-group-lg">
				<label class="col-sm-2 control-label">备注</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3"  style="height:98px;" readonly >${bankCard.remark}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button id="backToList" type="button"  class="btn btn-default">返回</button>
					<button id="editInitBtn" type="button"  class="btn btn-primary">更改</button>
				</div>
			</div>
		</form>
	</div>
</div>
