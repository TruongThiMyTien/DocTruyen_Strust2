package Action;

import java.util.List;

import DAO.ChuongDAO;
import DAO.SachDAO;
import Model.Chuong;
import Model.Sach;

public class NVChuongAction {
	Sach sach;
	List<Chuong> lstChuong;
	int masach;
	int chuongso;
	String tenchuong;
	String noidung;
	Chuong chuong;
	int machuong;
	
		
	public int getMachuong() {
		return machuong;
	}

	public void setMachuong(int machuong) {
		this.machuong = machuong;
	}

	public Chuong getChuong() {
		return chuong;
	}

	public void setChuong(Chuong chuong) {
		this.chuong = chuong;
	}

	public String getTenchuong() {
		return tenchuong;
	}

	public void setTenchuong(String tenchuong) {
		this.tenchuong = tenchuong;
	}

	public String getNoidung() {
		return noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

	public int getChuongso() {
		return chuongso;
	}

	public void setChuongso(int chuongso) {
		this.chuongso = chuongso;
	}

	public int getMasach() {
		return masach;
	}

	public void setMasach(int masach) {
		this.masach = masach;
	}

	public Sach getSach() {
		return sach;
	}

	public void setSach(Sach sach) {
		this.sach = sach;
	}
	
	public List<Chuong> getLstChuong() {
		return lstChuong;
	}
	
	public void setLstChuong(List<Chuong> lstChuong) {
		this.lstChuong = lstChuong;
	}
	
	public String list()
	{		
		sach = SachDAO.getSachById(masach);
		lstChuong = ChuongDAO.getListChuongByIdSach(masach);
		return "success";	
	}
	
	public String create()
	{
		chuongso = ChuongDAO.ChuongSoMax(masach) + 1;
		return "success";
	}
	
	public String store()
	{
		ChuongDAO.store(masach, chuongso, tenchuong, noidung);
		sach = SachDAO.getSachById(masach);
		lstChuong = ChuongDAO.getListChuongByIdSach(masach);
		return "list";
	}

	public String detail()
	{
		chuong = ChuongDAO.getChuongById(machuong);
		return "success";
	}
	
	public String edit()
	{
		chuong = ChuongDAO.getChuongById(machuong);
		return "success";
	}
	
	public String update()
	{
		ChuongDAO.update(machuong, chuongso, tenchuong, noidung);
		sach = SachDAO.getSachById(masach);
		lstChuong = ChuongDAO.getListChuongByIdSach(masach);
		return "list";
	}
}
