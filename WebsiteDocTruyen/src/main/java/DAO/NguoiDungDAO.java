package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.NguoiDung;
import Model.Sach;

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
	
	public static List<NguoiDung> getList()
	{
		List<NguoiDung> lstNguoiDung = new ArrayList<NguoiDung>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("select * from nguoidung");
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstNguoiDung.add(new NguoiDung(rs.getInt("manguoidung"), rs.getString("tennguoidung"), rs.getString("tendangnhap"), rs.getInt("quyen")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstNguoiDung;	
	
	}
	
	public static void store(String tennguoidung, String tendangnhap, String matkhau, int quyen) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO nguoidung(tennguoidung, tendangnhap, matkhau, quyen) values(?,?,?,?)");
			statement.setString(1, tennguoidung);
			statement.setString(2, tendangnhap);
			statement.setString(3, MD5.getMd5(matkhau));
			statement.setInt(4, quyen);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void doiquyen(int manguoidung, int quyen) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("update nguoidung set quyen=? where manguoidung=?");		
			statement.setInt(1, quyen);
			statement.setInt(2, manguoidung);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void updatematkhau(int manguoidung, String matkhau) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("update nguoidung set matkhau=? where manguoidung=?");		
			statement.setString(1, MD5.getMd5(matkhau));
			statement.setInt(2, manguoidung);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void delete(int manguoidung) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("delete from nguoidung where manguoidung=?");		
			statement.setInt(1, manguoidung);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static NguoiDung  getNguoiDunghById(int id) {
		NguoiDung nd = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from nguoidung WHERE manguoidung=?");
			statement.setInt(1, id);
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
	
	public static void update(int manguoidung, String tennguoidung, String tendangnhap, String matkhau) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			if(matkhau == "")
			{
				statement = db.getConn().prepareStatement("update nguoidung set tennguoidung=?, tendangnhap=? where manguoidung=?");		
				statement.setString(1, tennguoidung);	
				statement.setString(2, tendangnhap);
				statement.setInt(3, manguoidung);
			}else
			{
				statement = db.getConn().prepareStatement("update nguoidung set tennguoidung=?, tendangnhap=?, matkhau=? where manguoidung=?");		
				statement.setString(1, tennguoidung);	
				statement.setString(2, tendangnhap);
				statement.setString(3, MD5.getMd5(matkhau));
				statement.setInt(4, manguoidung);
			}
			
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
