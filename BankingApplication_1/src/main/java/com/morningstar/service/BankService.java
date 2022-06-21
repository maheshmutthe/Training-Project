package com.morningstar.service;

import com.morningstar.model.AccountMaster;
import com.morningstar.model.InternetBanking;


public interface BankService {

	public int addUser(AccountMaster accountMaster);

	public int registerUser(InternetBanking internetBanking);
}
