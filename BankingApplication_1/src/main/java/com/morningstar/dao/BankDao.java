package com.morningstar.dao;

import java.sql.SQLException;

import com.morningstar.model.AccountDetails;
import com.morningstar.model.AccountMaster;
import com.morningstar.model.BeneficiaryDetails;
import com.morningstar.model.InternetBanking;

public interface BankDao {
	
	public int addUser(AccountMaster accountMaster)throws SQLException;

	public int registerUser(InternetBanking internetBanking);

	public int updatePassword(String email, String loginpass, String transpass);

	public InternetBanking login(String transactionEmail, String password);

	public int addInternetBankingAccount(InternetBanking internetBanking);

	int addBeneficiary(BeneficiaryDetails beneficiaryDetails) throws SQLException;

	public AccountMaster getAccountNumberfromDb(String emailId) throws SQLException;
	
	public int addCredit(AccountDetails accountDetails);

	public int addDebit(AccountDetails accountDetails);


}
