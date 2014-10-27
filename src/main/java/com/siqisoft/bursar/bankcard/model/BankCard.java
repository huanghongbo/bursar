package com.siqisoft.bursar.bankcard.model;

public class BankCard {

	/* null */
	private int id;

	/* 编号 */
	private String code;

	/* 姓名 */
	private String name;

	/* 性别 */
	private String sex;

	/* 身份证号 */
	private String idCardNumber;

	/* 银行卡号 */
	private String bankCardNumber;
	
	/* 备注 */
	private String remark;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getIdCardNumber() {
		return this.idCardNumber;
	}

	public void setIdCardNumber(String idCardNumber) {
		this.idCardNumber = idCardNumber;
	}

	public String getBankCardNumber() {
		return this.bankCardNumber;
	}

	public void setBankCardNumber(String bankCardNumber) {
		this.bankCardNumber = bankCardNumber;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
