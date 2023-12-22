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
	
}
