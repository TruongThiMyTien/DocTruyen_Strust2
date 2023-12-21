package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.NguoiDung;

public class NguoiDungDAO {
	
	public static NguoiDung login(String tendangnhap, String matkhau)
	{
		NguoiDung nd = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from NGUOIDUNG WHERE tendangnhap = ? and matkhau = ?");
			statement.setString(1, tendangnhap);
			statement.setString(2, MD5.getMd5(matkhau));
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					nd = new NguoiDung(rs.getInt("manguoidung"), rs.getString("tennguoidung"), rs.getString("tendangnhap"), rs.getInt("quyen"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return nd;
	}

}
