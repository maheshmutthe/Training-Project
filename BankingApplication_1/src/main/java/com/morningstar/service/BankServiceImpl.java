package com.morningstar.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.morningstar.dao.BankDao;
import com.morningstar.model.AccountMaster;
import com.morningstar.model.InternetBanking;

@Service
public class BankServiceImpl implements BankService{

	@Autowired
	private BankDao dao;
	public BankDao getDao() {
		return dao;
	}
	public void setDao(BankDao dao) {
		this.dao = dao;
	}

	
	public int addUser(AccountMaster accountMaster) {
		
		int result;
		try {
			result = dao.addUser(accountMaster);
			if(result>=1)
			{
				return result;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	public int registerUser(InternetBanking internetBanking) {
		return dao.registerUser(internetBanking);
		
	}


}
