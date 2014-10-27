<%@page contentType="text/html;charset=UTF-8"%>
<%@ include file="/include/includeSegment.jsp"%>
<script type="text/javascript"
	src="${appPath}/bankcard/BankCardList.js"></script>
	
<div class="row">
	<div class="col-md-12">
		<form id="bankCardQueryListForm" method="post"
			action="${appPath}/bankcard/BankCardList.do" role="form">
			<input type="hidden" id="queryAll" name="queryAll" value="${bankCardQueryForm.queryAll}" />
			<div class="form-group">
				<label class="sr-only" for="codeText">code texts </label>
				<textarea id="codeText" name="codeText" class="form-control"
					rows="3" placeholder="请输入编号，每行一个">${bankCardQueryForm.codeText}</textarea>
			</div>	
			<button type="button" class="btn btn-default" id="queryBtn">
				查询</button>
			<button type="button"  class="btn btn-default" id="queryAllBtn">查询全部</button>
			<button type="button" class="btn btn-default" id="exportBtn">
				导出Excel</button>
			<button type="button" class="btn btn-default" id="addBtn">
				新增</button>
			<button type="button" class="btn btn-default" id="deleteBtn">
				删除</button>
		</form>
		<iframe id="exportFrame" style="display: none"></iframe>
	</div>
	<form id="bankCardListForm" method="post"
			action="${appPath}/bankcard/bankCardDelete.do" role="form">
	<div class="col-md-12" style="margin-top: 15px">
		<table id="bankCardTable" data-select-item-name="id" data-id-field="id"
		    class="table  table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th data-checkbox="true"  data-field="id" ></th>
					<th>序号</th>
					<th>编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>身份证号</th>
					<th>卡号</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bankCard" items="${bankCardList}" varStatus="status">
					<tr>
						<td>${bankCard.id} </td>
						<td>${status.count}</td>
						<td><a href="#" class="detail-link" data-id="${bankCard.id}">${bankCard.code}</a></td>
						<td>${bankCard.name}</td>
						<td>${bankCard.sex}</td>
						<td>${bankCard.idCardNumber}</td>
						<td>${bankCard.bankCardNumber}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</form>
</div>
