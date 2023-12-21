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

}
