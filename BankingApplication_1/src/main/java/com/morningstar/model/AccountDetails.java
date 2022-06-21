package com.morningstar.model;

import java.util.Date;

public class AccountDetails {
	private double balance;
	private Date openingDate;
	private long accountNumber;
	
	private AccountMaster accountmaster;
	public AccountMaster getAccountmaster() {
		return accountmaster;
	}

	public void setAccountmaster(AccountMaster accountmaster) {
		this.accountmaster = accountmaster;
	}
	
	
	public AccountDetails()
	{
		
	}
	
	public AccountDetails(double balance, Date openingDate, long accountNumber) {
		super();
		this.balance = balance;
		this.openingDate = openingDate;
		this.accountNumber = accountNumber;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Date getOpeningDate() {
		return openingDate;
	}
	public void setOpeningDate(Date openingDate) {
		this.openingDate = openingDate;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	@Override
	public String toString() {
		return "Account_Details [balance=" + balance + ", openingDate=" + openingDate + ", accountNumber="
				+ accountNumber + "]";
	}
	
	
	
	
	
}
