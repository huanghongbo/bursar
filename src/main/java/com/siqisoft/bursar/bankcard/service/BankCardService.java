package com.siqisoft.bursar.bankcard.service;

import com.siqisoft.bursar.bankcard.mapper.BankCardMapper;
import com.siqisoft.bursar.bankcard.model.BankCard;
import org.siqisource.stone.orm.MybatisMapper;
import org.siqisource.stone.service.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankCardService extends AbstractService<BankCard>   {

	@Autowired
	BankCardMapper mapper;

	@Override
	protected MybatisMapper<BankCard> getMapper() {
		return this.mapper;
	}
}	
