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

	public InternetBanking getUserDetails(String email);

	public AccountMaster getUser(long accountNo);

	public boolean checkLogin(String adminId, String password);

	public AccountDetails getAccountDetails(long accountNo);


	public InternetBanking forgotUsername(int accountNumber)throws SQLException;
	public InternetBanking forgotPassword(int internetBankingId)throws SQLException;
	public int setNewPassword(int internetBankingId,String loginPassword)throws SQLException;
	
	public int impsTransaction(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails);


	public int impsTransaction1(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails);



}
