package com.morningstar.model;

import java.util.Date;

import org.springframework.stereotype.Component;


@Component
public class AccountMaster {

	private long accountNumber;
	private String title;
	private String firstName;
	private String lastName;
	private String fathersName;
	private long mobileNumber;
	private String emailId;
	private long aadharCard;
	private String dateOfBirth;
	private String address;
	private String city;
	private String state;
	private int pinCode;
	private String accountType;
	private String occupationType;
	private long grossAnnualIncome;
	private String netBanking;

	public AccountMaster() {

	}

	

	public AccountMaster(long accountNumber, String title, String firstName, String lastName, String fathersName,
			long mobileNumber, String emailId, long aadharCard, String dateOfBirth, String address, String city,
			String state, int pinCode, String accountType, String occupationType, long grossAnnualIncome,
			String netBanking) {
		super();
		this.accountNumber = accountNumber;
		this.title = title;
		this.firstName = firstName;
		this.lastName = lastName;
		this.fathersName = fathersName;
		this.mobileNumber = mobileNumber;
		this.emailId = emailId;
		this.aadharCard = aadharCard;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.accountType = accountType;
		this.occupationType = occupationType;
		this.grossAnnualIncome = grossAnnualIncome;
		this.netBanking = netBanking;
	}



	public String getOccupationType() {
		return occupationType;
	}



	public void setOccupationType(String occupationType) {
		this.occupationType = occupationType;
	}



	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFathersName() {
		return fathersName;
	}

	public void setFathersName(String fathersName) {
		this.fathersName = fathersName;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public long getAadharCard() {
		return aadharCard;
	}

	public void setAadharCard(long aadharCard) {
		this.aadharCard = aadharCard;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public long getGrossAnnualIncome() {
		return grossAnnualIncome;
	}

	public void setGrossAnnualIncome(long grossAnnualIncome) {
		this.grossAnnualIncome = grossAnnualIncome;
	}

	public String getNetBanking() {
		return netBanking;
	}

	public void setNetBanking(String netBanking) {
		this.netBanking = netBanking;
	}



	@Override
	public String toString() {
		return "Account_Master [accountNumber=" + accountNumber + ", title=" + title + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", fathersName=" + fathersName + ", mobileNumber=" + mobileNumber
				+ ", emailId=" + emailId + ", aadharCard=" + aadharCard + ", dateOfBirth=" + dateOfBirth + ", address="
				+ address + ", city=" + city + ", state=" + state + ", pinCode=" + pinCode + ", accountType="
				+ accountType + ", OccupationType=" + occupationType + ", grossAnnualIncome=" + grossAnnualIncome
				+ ", netBanking=" + netBanking + "]";
	}

	

}
