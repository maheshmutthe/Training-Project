package com.morningstar.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.morningstar.dao.BankDao;
import com.morningstar.model.AccountDetails;
import com.morningstar.model.AccountMaster;
import com.morningstar.model.BeneficiaryDetails;
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
	public int updatePassword(String email, String loginpass, String transpass) {
		
		return dao.updatePassword(email,loginpass,transpass);
	}
	
	
	public boolean login(String transactionEmail, String password) {
		InternetBanking internetBanking= dao.login(transactionEmail, password);
		if(internetBanking.getLoginPassword().equals(password)) {
			return true;
		}
		return false;
	}
	
	
	
	public int addInternetBankingAccount(InternetBanking internetBanking) {
		int result;
		result = dao.addInternetBankingAccount(internetBanking);
		if(result>=1)
		{
			return result;
		}
		return 0;
	
	}
	
	@Override
	public int addBeneficiary(BeneficiaryDetails beneficiaryDetails) {
		// TODO Auto-generated method stub
		int result;
		try {
			result = dao.addBeneficiary(beneficiaryDetails);
			if(result>=1)
			{
				return result;
			}
			
			} 	catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public AccountMaster getAccountNumberfromDb(String emailId) {
		
		
		try {
			return dao.getAccountNumberfromDb(emailId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

	@Override
	public int addCredit(AccountDetails accountDetails) {
		// TODO Auto-generated method stub
		return dao.addCredit(accountDetails);
	}
	@Override
	public int addDebit(AccountDetails accountDetails) {
		// TODO Auto-generated method stub
		return dao.addDebit(accountDetails);
	}
	@Override
	public InternetBanking getUserDetails(String email) {
		return dao.getUserDetails(email);
	}
	@Override
	public AccountMaster getUser(long accountNo) {
		return dao.getUser(accountNo);
	}
	@Override
	public boolean checkLogin(String adminId, String password) {
		
		return dao.checkLogin(adminId,password);
	}
	@Override
	public AccountDetails getAccountDetails(long accountNo) {
		
		return dao.getAccountDetails(accountNo);
	}
	
	

	@Override
	public int forgotUsername(int accountNumber, String secretQuestion, String secretAnswer) {
		try {
			InternetBanking ib=dao.forgotUsername(accountNumber);
			if(ib.getSecretQuestion()==secretQuestion && ib.getSecretAnswer()==secretAnswer)
			{
				return ib.getInternetBankingId();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	@Override
	public int forgotPassword(int internetBankingId, String secretQuestion, String secretAnswer) {
		try {
			InternetBanking ib=dao.forgotPassword(internetBankingId);
			if(ib.getSecretQuestion()==secretQuestion && ib.getSecretAnswer()==secretAnswer)
			{
				return 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public int setNewPassword(int internetBankingId, String loginPassword, String confirmLoginPassword) {
		if(loginPassword==confirmLoginPassword)
		{
			int result;
			try {
				result = dao.setNewPassword(internetBankingId, loginPassword);
				return result;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return 0;
	}
	

	@Override
	public int impsTransaction(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails) {
		// TODO Auto-generated method stub
		return dao.impsTransaction(accountDetails, beneficiaryDetails);
	}

	@Override
	public int impsTransaction1(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails) {
		// TODO Auto-generated method stub
		return dao.impsTransaction1(accountDetails, beneficiaryDetails);

		
	}


}
