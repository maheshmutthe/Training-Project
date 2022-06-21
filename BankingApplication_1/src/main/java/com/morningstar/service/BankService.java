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
}
