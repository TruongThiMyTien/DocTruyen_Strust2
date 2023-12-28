package Action;

import java.util.List;

import DAO.NguoiDungDAO;
import Model.NguoiDung;

public class NguoiDungAction {
	
	List<NguoiDung> lstNguoiDung;
	String tennguoidung;
	String tendangnhap;
	String matkhau;
	int quyen;
	int manguoidung;
		

	public int getManguoidung() {
		return manguoidung;
	}

	public void setManguoidung(int manguoidung) {
		this.manguoidung = manguoidung;
	}

	public String getTennguoidung() {
		return tennguoidung;
	}

	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public int getQuyen() {
		return quyen;
	}

	public void setQuyen(int quyen) {
		this.quyen = quyen;
	}

	public List<NguoiDung> getLstNguoiDung() {
		return lstNguoiDung;
	}

	public void setLstNguoiDung(List<NguoiDung> lstNguoiDung) {
		this.lstNguoiDung = lstNguoiDung;
	}
	
	public String list()
	{
		lstNguoiDung = NguoiDungDAO.getList();
		return "success";
	}
	
	public String create()
	{
		return "success";
	}
	
	public String store()
	{
		NguoiDungDAO.store(tennguoidung, tendangnhap, matkhau, quyen);
		lstNguoiDung = NguoiDungDAO.getList();
		return "list";
	}
	
	public String doiquyen()
	{
		if(quyen == 1)
		{
			NguoiDungDAO.doiquyen(manguoidung, 2);
		}else
		{
			NguoiDungDAO.doiquyen(manguoidung, 1);
		}
		
		lstNguoiDung = NguoiDungDAO.getList();
		return "list";
	}
	
	public String matkhaumoi()
	{
		manguoidung = manguoidung;
		return "success";
	}
	
	public String updatematkhau()
	{
		NguoiDungDAO.updatematkhau(manguoidung, matkhau);
		lstNguoiDung = NguoiDungDAO.getList();
		return "list";
	}
	
	public String delete()
	{
		NguoiDungDAO.delete(manguoidung);
		lstNguoiDung = NguoiDungDAO.getList();
		return "list";
	}
	

}
