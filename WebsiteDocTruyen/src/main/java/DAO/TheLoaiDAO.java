package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.TacGia;
import Model.TheLoai;

public class TheLoaiDAO {
	public static TheLoai  getTheLoaiById(int id) {
		TheLoai tl = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from theloai WHERE matheloai=?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					tl = new TheLoai(rs.getInt("matheloai"), rs.getString("tentheloai"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tl;
	}

	public static List<TheLoai> getList()
	{
		List<TheLoai> lstTheLoai = new ArrayList<TheLoai>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("select * from theloai");
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstTheLoai.add(new TheLoai(rs.getInt("matheloai"), rs.getString("tentheloai")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstTheLoai;	
	
	}
	
}