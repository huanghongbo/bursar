package com.siqisoft.bursar.bankcard.view;

import com.siqisoft.bursar.bankcard.model.BankCard;

public class BankCardQueryForm extends BankCard {
	
	private Boolean rememberQueryForm = false;
	
	private String codeText;
	
	private Boolean queryAll=false;

	public String getCodeText() {
		return codeText;
	}

	public void setCodeText(String codeText) {
		this.codeText = codeText;
	}

	public Boolean getQueryAll() {
		return queryAll;
	}

	public void setQueryAll(Boolean queryAll) {
		this.queryAll = queryAll;
	}

	public Boolean getRememberQueryForm() {
		return rememberQueryForm;
	}

	public void setRememberQueryForm(Boolean rememberQueryForm) {
		this.rememberQueryForm = rememberQueryForm;
	}
	
}
