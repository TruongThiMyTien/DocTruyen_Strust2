package Action;

import java.util.List;

import DAO.TheLoaiDAO;
import Model.TheLoai;

public class TheLoaiAction {

	List<TheLoai> lstTheLoai;
	String tentheloai;
	TheLoai theloai;
	int matheloai;
	

	public int getMatheloai() {
		return matheloai;
	}

	public void setMatheloai(int matheloai) {
		this.matheloai = matheloai;
	}

	public TheLoai getTheloai() {
		return theloai;
	}

	public void setTheloai(TheLoai theloai) {
		this.theloai = theloai;
	}

	public String getTentheloai() {
		return tentheloai;
	}

	public void setTentheloai(String tentheloai) {
		this.tentheloai = tentheloai;
	}

	public List<TheLoai> getLstTheLoai() {
		return lstTheLoai;
	}

	public void setLstTheLoai(List<TheLoai> lstTheLoai) {
		this.lstTheLoai = lstTheLoai;
	}
	
	public String list()
	{
		lstTheLoai = TheLoaiDAO.getList();
		return "success";
	}
	
	public String create()
	{
		return "success";
	}
	
	public String store()
	{
		TheLoaiDAO.store(tentheloai);
		lstTheLoai = TheLoaiDAO.getList();
		return "list";
	}
	
	public String edit()
	{
		theloai = TheLoaiDAO.getTheLoaiById(matheloai);
		return "success";
	}
	
	public String update()
	{
		TheLoaiDAO.update(matheloai, tentheloai);
		lstTheLoai = TheLoaiDAO.getList();
		return "list";
	}
}
