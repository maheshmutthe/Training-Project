package com.morningstar.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.morningstar.model.AccountDetails;
import com.morningstar.model.AccountMaster;
import com.morningstar.model.BeneficiaryDetails;
import com.morningstar.model.InternetBanking;

@Repository
public class BankDaoImpl implements BankDao {

	@Autowired
	private JdbcTemplate template = null;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	public int addUser(AccountMaster accountMaster) {
		String query="Insert into ACCOUNTMASTER(Account_No, Title ,First_Name,Last_Name,Father_Name ,Mobile ,EMail ,Adhar ,Date_Of_Birth ,Address ,City ,State ,Pincode ,Account_Type ,Occupation ,Gross_Anual_Income, Netbanking) Values(ACCOUNT_NO_SEQ.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int result=template.update(query,accountMaster.getTitle(),accountMaster.getFirstName(),accountMaster.getLastName(),accountMaster.getFathersName(),accountMaster.getMobileNumber(),accountMaster.getEmailId(),accountMaster.getAadharCard(),accountMaster.getDateOfBirth(),accountMaster.getAddress(),accountMaster.getCity(),accountMaster.getState(),accountMaster.getPinCode(),accountMaster.getAccountType(),accountMaster.getOccupationType(),accountMaster.getGrossAnnualIncome(),accountMaster.getNetBanking());
		return result;
		
		
	}


	public int registerUser(InternetBanking internetBanking) {
		String query="Insert into InternetBanking(Account_No, Title ,First_Name,Last_Name,Father_Name ,Mobile ,EMail ,Adhar ,Date_Of_Birth ,Address ,City ,State ,Pincode ,Account_Type ,Occupation ,Gross_Anual_Income, Netbanking) Values(ACCOUNT_NO_SEQ.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int result=template.update(query);
		return result;
		
		
	}


	public int updatePassword(String email, String loginpass, String transpass) {
		String query = "update internetbanking set " + "LOGIN_PASSWORD = ?, TRANSACTION_PASSWORD = ?" + "where TRANSACTION_EMAIL =?";
		int result=template.update(query,loginpass, transpass,email);
		return result;
		
	}
	
	
	
	public int addInternetBankingAccount(InternetBanking internetBanking)  {
		String query="Insert into INTERNETBANKING(INTERNET_BANKING_ID, LOGIN_PASSWORD, TRANSACTION_PASSWORD, SECRET_QUESTION, SECRET_ANSWER, TRANSACTION_EMAIL, ACCOUNT_NO) values(Internet_Banking_Id_seq.nextval, ?, ?, ?, ?, ?, ?)";
		int result=template.update(query, internetBanking.getLoginPassword(), internetBanking.getTransactionPassword(), internetBanking.getSecretQuestion(), internetBanking.getSecretAnswer(), internetBanking.getTransactionEmail(), internetBanking.getAccountNo());
		return result;
	}



	
	public InternetBanking login(String transactionEmail, String password) {
		String query="Select * from INTERNETBANKING where TRANSACTION_EMAIL= '"+transactionEmail+"'";
	
		InternetBanking internetBanking=template.queryForObject(query, (ResultSet rs, int rowNum) ->{
			InternetBanking ib=new InternetBanking();
			ib.setInternetBankingId(rs.getInt("INTERNET_BANKING_ID"));
			ib.setLoginPassword(rs.getString("LOGIN_PASSWORD"));
			ib.setTransactionPassword(rs.getString("INTERNET_BANKING_ID"));
			ib.setSecretQuestion(rs.getString("INTERNET_BANKING_ID"));
			ib.setSecretAnswer(rs.getString("SECRET_ANSWER"));
			ib.setTransactionEmail(rs.getString("TRANSACTION_EMAIL"));
			ib.setAccountNo(rs.getLong("ACCOUNT_NO"));
			
			return ib;
			
		});
		return internetBanking;
		
		
	}
	
	
	
	@Override
	public AccountMaster getAccountNumberfromDb(String emailId) throws SQLException  {
		String query="Select * from ACCOUNTMASTER where EMAIL= '"+emailId+"'";
		
		AccountMaster accountmaster=template.queryForObject(query, (ResultSet rs, int rowNum) ->{
		
			AccountMaster acc=new AccountMaster();
			acc.setAccountNumber(rs.getLong("ACCOUNT_NO"));
			acc.setTitle(rs.getString("TITLE"));
			acc.setFirstName(rs.getString("FIRST_NAME"));
			acc.setLastName(rs.getString("LAST_NAME"));
			acc.setFathersName(rs.getString("FATHER_NAME"));
			acc.setMobileNumber(rs.getLong("MOBILE"));
			acc.setEmailId(rs.getString("EMAIL"));
			acc.setAadharCard(rs.getLong("ADHAR"));
			acc.setDateOfBirth(rs.getString("DATE_OF_BIRTH"));
			acc.setAddress(rs.getString("ADDRESS"));
			acc.setCity(rs.getString("CITY"));
			acc.setState(rs.getString("STATE"));
			acc.setPinCode(rs.getInt("PINCODE"));
			acc.setAccountType(rs.getString("ACCOUNT_TYPE"));
			acc.setOccupationType(rs.getString("OCCUPATION"));
			acc.setGrossAnnualIncome(rs.getLong("GROSS_ANUAL_INCOME"));
			acc.setNetBanking(rs.getString("NETBANKING"));
			return acc;
		});
		
		return accountmaster;
		
	}
	
	//---------------Beneficiary details----------
	
	@Override
	public int addBeneficiary(BeneficiaryDetails beneficiaryDetails) throws SQLException {
		String query="Insert into BENEFICIARYDETAILS(Payee_Account_No, Name, Nick_Name) Values(?,?,?)";
		int result=template.update(query, beneficiaryDetails.getPayeeAccNumber(), beneficiaryDetails.getName(), beneficiaryDetails.getNickName());
		return result;
	}

	
	
	@Override
	public int addCredit(AccountDetails accountDetails) {
		// TODO Auto-generated method stub
		String query = "select * from accountdetails where account_no="+accountDetails.getAccountNumber();
		AccountDetails details = template.queryForObject(query,(ResultSet rs, int rowNum) -> {
			AccountDetails details1 = new AccountDetails();
			details1.setBalance(rs.getDouble("balance"));
			return details1;
		});
		
		double result = accountDetails.getBalance() + details.getBalance();
		
		String query2 = "update accountdetails set " + "balance = ?" + "where account_no =?";
		int result2=template.update(query2, result, accountDetails.getAccountNumber());
		
		return result2;

	}


	@Override
	public int addDebit(AccountDetails accountDetails) {
		// TODO Auto-generated method stub
		String query = "select * from accountdetails where account_no="+accountDetails.getAccountNumber();
		AccountDetails details = template.queryForObject(query,(ResultSet rs, int rowNum) -> {
			AccountDetails details1 = new AccountDetails();
			details1.setBalance(rs.getDouble("balance"));
			return details1;
		});
		
		if(accountDetails.getBalance() > details.getBalance()) {
			return -1;
		}
			double result =  details.getBalance() - accountDetails.getBalance();
		
					
		String query2 = "update accountdetails set " + "balance = ?" + "where account_no =?";
		int result2=template.update(query2, result, accountDetails.getAccountNumber());
		
		
		return result2;
		
	}


	@Override
	public InternetBanking getUserDetails(String email) {
		String query="Select * from INTERNETBANKING where TRANSACTION_EMAIL= '"+email+"'";
		
		InternetBanking internetBanking=template.queryForObject(query, (ResultSet rs, int rowNum) ->{
			InternetBanking ib=new InternetBanking();
			ib.setInternetBankingId(rs.getInt("INTERNET_BANKING_ID"));
			ib.setLoginPassword(rs.getString("LOGIN_PASSWORD"));
			ib.setTransactionPassword(rs.getString("INTERNET_BANKING_ID"));
			ib.setSecretQuestion(rs.getString("INTERNET_BANKING_ID"));
			ib.setSecretAnswer(rs.getString("SECRET_ANSWER"));
			ib.setTransactionEmail(rs.getString("TRANSACTION_EMAIL"));
			ib.setAccountNo(rs.getLong("ACCOUNT_NO"));
			return ib;
			
		});
		return internetBanking;
	}


	@Override
	public AccountMaster getUser(long accountNo) {
String query="Select * from ACCOUNTMASTER where ACCOUNT_NO="+accountNo;
		
		AccountMaster accountmaster=template.queryForObject(query, (ResultSet rs, int rowNum) ->{
		
			AccountMaster acc=new AccountMaster();
			acc.setAccountNumber(rs.getLong("ACCOUNT_NO"));
			acc.setTitle(rs.getString("TITLE"));
			acc.setFirstName(rs.getString("FIRST_NAME"));
			acc.setLastName(rs.getString("LAST_NAME"));
			acc.setFathersName(rs.getString("FATHER_NAME"));
			acc.setMobileNumber(rs.getLong("MOBILE"));
			acc.setEmailId(rs.getString("EMAIL"));
			acc.setAadharCard(rs.getLong("ADHAR"));
			acc.setDateOfBirth(rs.getString("DATE_OF_BIRTH"));
			acc.setAddress(rs.getString("ADDRESS"));
			acc.setCity(rs.getString("CITY"));
			acc.setState(rs.getString("STATE"));
			acc.setPinCode(rs.getInt("PINCODE"));
			acc.setAccountType(rs.getString("ACCOUNT_TYPE"));
			acc.setOccupationType(rs.getString("OCCUPATION"));
			acc.setGrossAnnualIncome(rs.getLong("GROSS_ANUAL_INCOME"));
			acc.setNetBanking(rs.getString("NETBANKING"));
			return acc;
		});
		
		return accountmaster;
		
	}


	@Override
	public boolean checkLogin(String adminId, String password) {
		if(adminId.equalsIgnoreCase("admin") && password.equals("admin"))
		{
			return true;
		}
		return false;
	}


	@Override
	public AccountDetails getAccountDetails(long accountNo) {
String query="Select * from AccountDetails where account_no="+accountNo;
		
AccountDetails accountDetails=template.queryForObject(query, (ResultSet rs, int rowNum) ->{
	AccountDetails ad=new AccountDetails();
			ad.setBalance(rs.getDouble("balance"));
			ad.setOpeningDate(rs.getString("opening_date"));
			ad.setAccountNumber(rs.getLong("account_no"));
			return ad;
			
		});
		return accountDetails;
	}
	
	

	@Override
	public InternetBanking forgotUsername(int accountNumber) throws SQLException {
		String query="Select * From InternetBanking Where Account_No = ? "+accountNumber;
		InternetBanking ib=template.queryForObject(query,new InternetBankingRowMapper());
		return ib;
		
	}



	@Override
	public InternetBanking forgotPassword(int internetBankingId) throws SQLException {
		String query="Select * From InternetBanking Where Internet_Banking_Id = ? "+internetBankingId;
		InternetBanking ib=template.queryForObject(query,new InternetBankingRowMapper());
		return ib;
	}



	@Override
	public int setNewPassword(int internetBankingId,String loginPassword) {
		String query="Update InternetBanking Set Login_Password = ? where Internet_Banking_Id= ? ";
		int result=template.update(query,internetBankingId,loginPassword);
		return result;
	}

	
	@Override
	public int impsTransaction(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails) {
		String query = "select * from accountdetails where account_no="+accountDetails.getAccountNumber();
		AccountDetails details = template.queryForObject(query,(ResultSet rs, int rowNum) -> {
			AccountDetails details1 = new AccountDetails();
			details1.setBalance(rs.getDouble("balance"));
			return details1;
		});
		
		
		String query3 = "select * from accountdetails where account_no="+beneficiaryDetails.getPayeeAccNumber();
		AccountDetails details4 = template.queryForObject(query3,(ResultSet rs, int rowNum) -> {
			AccountDetails details5 = new AccountDetails();
			details5.setBalance(rs.getDouble("balance"));
			return details5;
		});

		
	//		if(accountDetails.getAccountNumber() == beneficiaryDetails.getPayeeAccNumber()) {
				if(accountDetails.getBalance() > details.getBalance()) {
					return -1;
				}
		//		if (details4 != null) {
//				double result3 = details4.getBalance() + accountDetails.getBalance();
//				String query4 = "update accountdetails set " + "balance = ?" + "where account_no =?";
//				int result1=template.update(query4, result3, details4.getAccountNumber());
		//		return result1;
		//		}
			
			
		
			double result =  details.getBalance() - accountDetails.getBalance();	
			String query2 = "update accountdetails set " + "balance = ?" + "where account_no =?";
			int result2=template.update(query2, result, accountDetails.getAccountNumber());
		
			return result2 ;
			
	}
	//--------------------------------------------------------
	public int impsTransaction1(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails) {
		String query = "select * from accountdetails where account_no="+accountDetails.getAccountNumber();
		AccountDetails details = template.queryForObject(query,(ResultSet rs, int rowNum) -> {
			AccountDetails details1 = new AccountDetails();
			details1.setBalance(rs.getDouble("balance"));
			return details1;
		});
//		
//		String query3 = "select * from beneficiarydetails where Payee_Account_No="+accountDetails.getAccountNumber();
//
//		
////			if(accountDetails.getAccountNumber() == beneficiaryDetails.getPayeeAccNumber()) {
//
//					
//				double result3 = accountDetails.getBalance() + details.getBalance();
//				String query2 = "update accountdetails set " + "balance = ?" + "where account_no =?";
//			
//			
//			int result1=template.update(query2, result3, accountDetails.getAccountNumber());
//			return result1;
//	}
		String query3 = "select * from accountdetails where account_no="+beneficiaryDetails.getPayeeAccNumber();
		AccountDetails details4 = template.queryForObject(query3,(ResultSet rs, int rowNum) -> {
			AccountDetails details5 = new AccountDetails();
			details5.setBalance(rs.getDouble("balance"));
			return details5;
		});

		double result3 = details4.getBalance() + accountDetails.getBalance();
		String query4 = "update accountdetails set " + "balance = ?" + "where account_no = ?";//+beneficiaryDetails.getPayeeAccNumber();
		int result1=template.update(query4, result3, details4.getAccountNumber());
		return result1;
		
	}



}
	
		

