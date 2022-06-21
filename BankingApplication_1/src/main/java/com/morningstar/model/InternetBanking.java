package com.morningstar.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class InternetBanking {

	private int internetBankingId;
	private String loginPassword;
	private String transactionPassword;
	private String secretQuestion;
	private String secretAnswer;
	private String transactionEmail;
	private long accountNo;

	@Autowired
	private AccountMaster accountmaster;

	public AccountMaster getAccountmaster() {
		return accountmaster;
	}

	public void setAccountmaster(AccountMaster accountmaster) {
		this.accountmaster = accountmaster;
	}

	public InternetBanking() {

	}

	public InternetBanking(int internetBankingId, String loginPassword, String transactionPassword,
			String secretQuestion, String secretAnswer, String transactionEmail) {
		super();
		this.internetBankingId = internetBankingId;
		this.loginPassword = loginPassword;
		this.transactionPassword = transactionPassword;
		this.secretQuestion = secretQuestion;
		this.secretAnswer = secretAnswer;
		this.transactionEmail = transactionEmail;
	}

	public int getInternetBankingId() {
		return internetBankingId;
	}

	public void setInternetBankingId(int internetBankingId) {
		this.internetBankingId = internetBankingId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getTransactionPassword() {
		return transactionPassword;
	}

	public void setTransactionPassword(String transactionPassword) {
		this.transactionPassword = transactionPassword;
	}

	public String getSecretQuestion() {
		return secretQuestion;
	}

	public void setSecretQuestion(String secretQuestion) {
		this.secretQuestion = secretQuestion;
	}

	public String getSecretAnswer() {
		return secretAnswer;
	}

	public void setSecretAnswer(String secretAnswer) {
		this.secretAnswer = secretAnswer;
	}

	public String getTransactionEmail() {
		return transactionEmail;
	}

	public void setTransactionEmail(String transactionEmail) {
		this.transactionEmail = transactionEmail;
	}

	@Override
	public String toString() {
		return "Internet_Banking [internetBankingId=" + internetBankingId + ", loginPassword=" + loginPassword
				+ ", transactionPassword=" + transactionPassword + ", secretQuestion=" + secretQuestion
				+ ", secretAnswer=" + secretAnswer + ", transactionEmail=" + transactionEmail + "]";
	}

	public long getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}

}
