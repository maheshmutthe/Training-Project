package com.morningstar.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.morningstar.model.AccountMaster;
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
	
		
	}

