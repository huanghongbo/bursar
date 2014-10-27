package com.siqisoft.bursar.bankcard.view;

import org.apache.commons.lang.StringUtils;
import org.siqisource.stone.orm.SqlKey;
import org.siqisource.stone.orm.condition.Condition;
import org.siqisource.stone.orm.condition.SimpleCondition;

public class BankCardConditionBuilder {

	public static Condition listCondition(BankCardQueryForm bankCardQueryForm) {

		SimpleCondition condition = new SimpleCondition();

		condition.andNotEqual(SqlKey.LOGIC_DELETED, true);

		condition.orderAsc("id");
		return condition;
	}

	public static Condition queryCondition(BankCardQueryForm bankCardQueryForm) {

		SimpleCondition condition = new SimpleCondition();

		if (bankCardQueryForm == null) {
			condition.andIsNull("id");
			return condition;
		}

		condition.andNotEqual(SqlKey.LOGIC_DELETED, true);

		if (bankCardQueryForm.getQueryAll()) {
			return condition;
		}

		String codeText = bankCardQueryForm.getCodeText();
		if (StringUtils.isNotBlank(codeText)) {
			String[] codes = codeText.split("\n");
			for (int i = 0; i < codes.length; i++) {
				codes[i] = StringUtils.trim(codes[i]);
			}
			condition.andIn("code", codes);
		} else {
			condition.andIsNull("id");
		}

		condition.orderAsc("id");
		return condition;
	}
}
