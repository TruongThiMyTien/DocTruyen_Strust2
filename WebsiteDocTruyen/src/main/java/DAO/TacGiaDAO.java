package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.TacGia;

public class TacGiaDAO {
	
	public static TacGia  getTacGiaById(int id) {
		TacGia tg = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from tacgia WHERE matacgia=?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					tg = new TacGia(rs.getInt("matacgia"), rs.getString("tentacgia"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tg;
	}

}
