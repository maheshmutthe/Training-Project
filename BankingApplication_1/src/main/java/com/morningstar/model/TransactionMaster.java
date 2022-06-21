package com.morningstar.model;

import java.util.Date;

public class TransactionMaster {

	private long referenceId;
	private long payeeAccNumber;
	private Date dateOfTransfer;
	private long transferAmount;
	private String transferMode;
	private String remarks;
	
	private InternetBanking internetBanking;
	public InternetBanking getInternetBanking() {
		return internetBanking;
	}

	public void setInternetBanking(InternetBanking internetBanking) {
		this.internetBanking = internetBanking;
	}
	
	private BeneficiaryDetails beneficiary;
	public BeneficiaryDetails getBeneficiary() {
		return beneficiary;
	}

	public void setBeneficiary(BeneficiaryDetails beneficiary) {
		this.beneficiary = beneficiary;
	}

	public TransactionMaster()
	{
		
	}
	
	public TransactionMaster(long referenceId, long payeeAccNumber, Date dateOfTransfer, long transferAmount,
			String transferMode, String remarks) {
		super();
		this.referenceId = referenceId;
		this.payeeAccNumber = payeeAccNumber;
		this.dateOfTransfer = dateOfTransfer;
		this.transferAmount = transferAmount;
		this.transferMode = transferMode;
		this.remarks = remarks;
	}
	public long getReferenceId() {
		return referenceId;
	}
	public void setReferenceId(long referenceId) {
		this.referenceId = referenceId;
	}
	public long getPayeeAccNumber() {
		return payeeAccNumber;
	}
	public void setPayeeAccNumber(long payeeAccNumber) {
		this.payeeAccNumber = payeeAccNumber;
	}
	public Date getDateOfTransfer() {
		return dateOfTransfer;
	}
	public void setDateOfTransfer(Date dateOfTransfer) {
		this.dateOfTransfer = dateOfTransfer;
	}
	public long getTransferAmount() {
		return transferAmount;
	}
	public void setTransferAmount(long transferAmount) {
		this.transferAmount = transferAmount;
	}
	public String getTransferMode() {
		return transferMode;
	}
	public void setTransferMode(String transferMode) {
		this.transferMode = transferMode;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "Transaction_Master [referenceId=" + referenceId + ", payeeAccNumber=" + payeeAccNumber
				+ ", dateOfTransfer=" + dateOfTransfer + ", transferAmount=" + transferAmount + ", transferMode="
				+ transferMode + ", remarks=" + remarks + "]";
	}
	
	
	

}
