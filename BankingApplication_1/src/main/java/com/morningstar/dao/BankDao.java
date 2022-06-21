package com.morningstar.dao;

import java.sql.SQLException;

import com.morningstar.model.AccountMaster;
import com.morningstar.model.InternetBanking;

public interface BankDao {
	
	public int addUser(AccountMaster accountMaster)throws SQLException;

	public int registerUser(InternetBanking internetBanking);


}
