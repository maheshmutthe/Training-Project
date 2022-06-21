package com.morningstar.model;

public class BeneficiaryDetails {
	private long payeeAccNumber;
	private String name;
	private String nickName;
	
	private AccountMaster accountmaster;
	public AccountMaster getAccountmaster() {
		return accountmaster;
	}

	public void setAccountmaster(AccountMaster accountmaster) {
		this.accountmaster = accountmaster;
	}
	
	public BeneficiaryDetails()
	{
		
	}
	
	public BeneficiaryDetails(long payeeAccNumber, String name, String nickName) {
		super();
		this.payeeAccNumber = payeeAccNumber;
		this.name = name;
		this.nickName = nickName;
	}
	public long getPayeeAccNumber() {
		return payeeAccNumber;
	}
	public void setPayeeAccNumber(long payeeAccNumber) {
		this.payeeAccNumber = payeeAccNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	
	

}
