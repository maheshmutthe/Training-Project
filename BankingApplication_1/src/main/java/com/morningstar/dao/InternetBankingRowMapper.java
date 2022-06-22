package com.morningstar.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.morningstar.model.InternetBanking;

public class InternetBankingRowMapper implements RowMapper<InternetBanking> {

	@Override
	public InternetBanking mapRow(ResultSet rs, int rowNum) throws SQLException {
		InternetBanking ib =new InternetBanking();
		ib.setInternetBankingId(rs.getInt("Internet_Banking_Id"));
		ib.setLoginPassword(rs.getString("Login_Password"));
		ib.setTransactionPassword(rs.getString("Transaction_Password"));
		ib.setSecretQuestion(rs.getString("Secret_Question"));
		ib.setSecretAnswer(rs.getString("Secret_Answer"));
		ib.setTransactionEmail(rs.getString("Transaction_Email"));
		
		return ib ;
	}

}
