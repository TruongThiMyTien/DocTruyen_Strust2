package Model;

import DAO.SachDAO;

public class Chuong {
	
	int machuong;
	Sach sach;
	int chuongso;
	String tenchuong;
	String noidung;
	
		
	public Chuong(int machuong, int sach, int chuongso, String tenchuong, String noidung) {
		super();
		this.machuong = machuong;
		this.sach = SachDAO.getSachById(sach);
		this.chuongso = chuongso;
		this.tenchuong = tenchuong;
		this.noidung = noidung;
	}
	
	public int getMachuong() {
		return machuong;
	}
	public void setMachuong(int machuong) {
		this.machuong = machuong;
	}
	public Sach getSach() {
		return sach;
	}
	public void setSach(Sach sach) {
		this.sach = sach;
	}
	public int getChuongso() {
		return chuongso;
	}
	public void setChuongso(int chuongso) {
		this.chuongso = chuongso;
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

}
