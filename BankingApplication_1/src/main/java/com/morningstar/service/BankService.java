package com.morningstar.service;

import com.morningstar.model.AccountDetails;
import com.morningstar.model.AccountMaster;
import com.morningstar.model.BeneficiaryDetails;
import com.morningstar.model.InternetBanking;

public interface BankService {

	public int addUser(AccountMaster accountMaster);

	public int registerUser(InternetBanking internetBanking);

	public int updatePassword(String email, String loginpass, String transpass);

	boolean login(String transactionEmail, String password);

	int addInternetBankingAccount(InternetBanking internetBanking);

	public int addBeneficiary(BeneficiaryDetails beneficiaryDetails);

	AccountMaster getAccountNumberfromDb(String emailId);

	public int addCredit(AccountDetails accountDetails);

	public int addDebit(AccountDetails accountDetails);

	public InternetBanking getUserDetails(String email);

	public AccountMaster getUser(long accountNo);

	public boolean checkLogin(String adminId, String password);

	public AccountDetails getAccountDetails(long accountNo);
	

	public int forgotUsername(int accountNumber,String secretQuestion,String secretAnswer);
	public int forgotPassword(int internetBankingId,String secretQuestion,String secretAnswer);
	public int setNewPassword(int internetBankingId,String loginPassword,String confirmLoginPassword);
	
	public int impsTransaction(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails);


	public int impsTransaction1(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails);

}
