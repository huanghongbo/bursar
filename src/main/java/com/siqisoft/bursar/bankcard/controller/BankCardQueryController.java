package com.siqisoft.bursar.bankcard.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.siqisource.stone.file.FileUtils;
import org.siqisource.stone.orm.condition.Condition;
import org.siqisource.stone.web.Path;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.siqisoft.bursar.bankcard.model.BankCard;
import com.siqisoft.bursar.bankcard.service.BankCardService;
import com.siqisoft.bursar.bankcard.view.BankCardConditionBuilder;
import com.siqisoft.bursar.bankcard.view.BankCardQueryForm;
import com.siqisoft.bursar.bankcard.view.CardCodeSort;

@Controller
public class BankCardQueryController {

	@Autowired
	BankCardService service;

	@Autowired
	Path path;

	@RequestMapping("/bankcard/BankCardQueryList.do")
	public String list(BankCardQueryForm bankCardQueryForm, Model model) {
		// 把查询条件放入到 session 中，便于取得最近一次的查询条件
		Session session = SecurityUtils.getSubject().getSession();
		// 使用一个标志位，判断从哪里取查询条件表单
		if (bankCardQueryForm.getRememberQueryForm()) {
			bankCardQueryForm = (BankCardQueryForm) session
					.getAttribute("bankCardQueryForm");
		} else {
			session.setAttribute("bankCardQueryForm", bankCardQueryForm);
		}

		Condition condition = BankCardConditionBuilder
				.queryCondition(bankCardQueryForm);
		List<BankCard> bankCardList = service.list(condition);
		Collections.sort(bankCardList, new CardCodeSort(bankCardQueryForm));
		model.addAttribute("bankCardList", bankCardList);
		model.addAttribute("bankCardQueryForm", bankCardQueryForm);

		return "bankcard/BankCardQueryList";
	}

	@RequestMapping("/bankcard/downloadBankCardQueryList.do")
	public void download(HttpServletResponse response) {
		Session session = SecurityUtils.getSubject().getSession();
		BankCardQueryForm bankCardQueryForm = (BankCardQueryForm) session
				.getAttribute("bankCardQueryForm");
		Condition condition = BankCardConditionBuilder
				.queryCondition(bankCardQueryForm);
		List<BankCard> bankCardList = service.list(condition);
		Collections.sort(bankCardList, new CardCodeSort(bankCardQueryForm));
		Map<String, Object> beans = new HashMap<String, Object>();
		beans.put("bankCardList", bankCardList);
		String templateFile = path.getPhysicalPath()
				+ "/bankcard/BankCardList.xls";
		String fileName = "银行卡清单";
		FileUtils.exportXls(response, beans, templateFile, fileName, true);
	}

}
