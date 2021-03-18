package com.hs.s1.bankbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.hs.s1.member.MemberDTO;
import com.hs.s1.util.DBConnector;

@Repository
public class BankbookDAO {

	DBConnector dbConnector;

	public BankbookDAO() {
		// TODO Auto-generated constructor stub
		dbConnector = new DBConnector();
	}

	// BANKBOOK 전체 조회
	public void getList() throws Exception {
		Connection con = dbConnector.getConnection();
		String sql = "select * from BANKBOOK";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			BankbookDTO bankbookDTO = new BankbookDTO();
			bankbookDTO.setBookNumber(rs.getLong("BOOKNUMBER"));
			bankbookDTO.setBookName(rs.getString("BOOKNAME"));
			bankbookDTO.setBookRate(rs.getDouble("BOOKRATE"));
		}
	}

}
