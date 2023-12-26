package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Sach;

public class SachDAO {
	
	
	public static List<Sach> getList()
	{
		List<Sach> lstSach = new ArrayList<Sach>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("select * from sach");
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstSach.add(new Sach(rs.getInt("masach"), rs.getString("tensach"), rs.getString("anhdaidien"), rs.getInt("tinhtrang_full"), rs.getInt("tacgia"), rs.getString("tomtat"), rs.getInt("theloai"), rs.getInt("kiemduyet"), rs.getInt("luotxem")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstSach;	
	
	}
	public static List<Sach> getListByTacGia(int id)
	{
		List<Sach> lstSach = new ArrayList<Sach>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("SELECT * FROM sach INNER JOIN tacgia ON sach.tacgia = tacgia.matacgia WHERE sach.tacgia = ?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstSach.add(new Sach(rs.getInt("masach"), rs.getString("tensach"), rs.getString("anhdaidien"), rs.getInt("tinhtrang_full"), rs.getInt("tacgia"), rs.getString("tomtat"), rs.getInt("theloai"), rs.getInt("kiemduyet"), rs.getInt("luotxem")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstSach;	
	
	}
	public static List<Sach> getListByTheLoai(int id)
	{
		List<Sach> lstSach = new ArrayList<Sach>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("SELECT * FROM sach INNER JOIN theloai ON sach.theloai = theloai.matheloai WHERE sach.theloai = ?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstSach.add(new Sach(rs.getInt("masach"), rs.getString("tensach"), rs.getString("anhdaidien"), rs.getInt("tinhtrang_full"), rs.getInt("tacgia"), rs.getString("tomtat"), rs.getInt("theloai"), rs.getInt("kiemduyet"), rs.getInt("luotxem")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstSach;	
	
	}
	
	public static Sach  getSachById(int id) {
		Sach sach = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from sach WHERE masach=?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					sach = new Sach(rs.getInt("masach"), rs.getString("tensach"), rs.getString("anhdaidien"), rs.getInt("tinhtrang_full"), rs.getInt("tacgia"), rs.getString("tomtat"), rs.getInt("theloai"), rs.getInt("kiemduyet"), rs.getInt("luotxem"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sach;
	}
	
	
	public static void store(String tensach, String hinh, int tacgia, String tomtat, int theloai) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO sach(tensach, anhdaidien, tinhtrang_full, tacgia, tomtat, theloai, kiemduyet, luotxem) values(?,?,0,?,?,?,1,0)");
			statement.setString(1, tensach);
			statement.setString(2, hinh);
			statement.setInt(3, tacgia);
			statement.setString(4, tomtat);
			statement.setInt(5, theloai);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	public static void update(int masach, String tensach, String hinh, int tinhtrang_full, int tacgia, String tomtat, int theloai, int kiemduyet) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("update sach set tensach=?, anhdaidien=?, tinhtrang_full=?, tacgia=?, tomtat=?, theloai=?, kiemduyet=? where masach=?");
			statement.setString(1, tensach);
			statement.setString(2, hinh);
			statement.setInt(3, tinhtrang_full);
			statement.setInt(4, tacgia);
			statement.setString(5, tomtat);
			statement.setInt(6, theloai);
			statement.setInt(7, kiemduyet);
			statement.setInt(8, masach);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void delete(int masach) {
		DBService db = new DBService();
		
		PreparedStatement statement1;
		try {
			statement1 = db.getConn().prepareStatement("delete from chuong where sach = ?");			
			statement1.setInt(1, masach);
			db.executeUpdate(statement1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block	
			e.printStackTrace();
		}
		
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("delete from sach where masach = ?");			
			statement.setInt(1, masach);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static List<Sach> searchByName(String tensach)
	{
		List<Sach> lstSach = new ArrayList<Sach>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("SELECT * FROM sach where tensach like ?");
			statement.setString(1,"%" + tensach + "%");
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstSach.add(new Sach(rs.getInt("masach"), rs.getString("tensach"), rs.getString("anhdaidien"), rs.getInt("tinhtrang_full"), rs.getInt("tacgia"), rs.getString("tomtat"), rs.getInt("theloai"), rs.getInt("kiemduyet"), rs.getInt("luotxem")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstSach;	
	
	}

}
