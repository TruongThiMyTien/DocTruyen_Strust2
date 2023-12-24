package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Chuong;

public class ChuongDAO {
	
	public static List<Chuong> getListChuongByIdSach(int id)
	{
		List<Chuong> lstChuong = new ArrayList<Chuong>();
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("select * from chuong where sach = ?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					lstChuong.add(new Chuong(rs.getInt("machuong"), rs.getInt("sach"), rs.getInt("chuongso"), rs.getString("tenchuong"), rs.getString("noidung")));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return lstChuong;	
	
	}
	
	public static Chuong getChuongById(int id)
	{
		Chuong chuong = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("select * from chuong where machuong = ?");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{
				while(rs.next())
				{
					chuong =  new Chuong(rs.getInt("machuong"), rs.getInt("sach"), rs.getInt("chuongso"), rs.getString("tenchuong"), rs.getString("noidung"));
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return chuong;	
	
	}
	
	public static int ChuongSoMax(int masach)
	{
		List<Chuong> lstChuong = new ArrayList<Chuong>();
		int max = 0;
		DBService db = new DBService();
		PreparedStatement statement;
		try
		{
			statement = db.getConn().prepareStatement("select chuongso from chuong where sach = ?");
			statement.setInt(1, masach);
			ResultSet rs = db.executeQuery(statement);
			if(rs != null)
			{				
				while(rs.next())
				{
					if(rs.getInt("chuongso") > max)
					{
						max = rs.getInt("chuongso");
					}					
				}
			}
		}catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 }
			 return max;	
	}
	
	public static void store(int masach, int chuongso, String tenchuong, String noidung) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO chuong(sach, chuongso, tenchuong, noidung) values(?,?,?,?)");
			statement.setInt(1, masach);
			statement.setInt(2, chuongso);
			statement.setString(3, tenchuong);
			statement.setString(4, noidung);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void update(int machuong, int chuongso, String tenchuong, String noidung) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("update chuong set chuongso=?, tenchuong=?, noidung=? where machuong=?");			
			statement.setInt(1, chuongso);
			statement.setString(2, tenchuong);
			statement.setString(3, noidung);
			statement.setInt(4, machuong);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void delete(int machuong) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("delete from chuong where machuong=?");			
			statement.setInt(1, machuong);	
			db.executeUpdate(statement);		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
