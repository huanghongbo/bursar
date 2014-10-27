package com.siqisoft.bursar.bankcard.view;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.siqisoft.bursar.bankcard.model.BankCard;

public class CardCodeSort implements Comparator<BankCard> {
	
	private Map<String,Integer> cardCodes = new HashMap<String,Integer>();
	
	public CardCodeSort(BankCardQueryForm bankCardQueryForm){
		String codeText = bankCardQueryForm.getCodeText();
		if (StringUtils.isNotBlank(codeText)) {
			String[] codes = codeText.split("\n");
			for (int i = 0; i < codes.length; i++) {
				cardCodes.put(StringUtils.trim(codes[i]), i) ;
			}
		} 
	}

	@Override
	public int compare(BankCard o1, BankCard o2) {
		Integer i1 = cardCodes.get(o1.getCode());
		Integer i2 = cardCodes.get(o2.getCode());
		if(i1 !=null && i2 != null){
			return i1 >= i2? 1:0;
		}
		return 0;
	}

}
