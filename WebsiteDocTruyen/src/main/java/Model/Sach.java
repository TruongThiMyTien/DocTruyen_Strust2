package Model;

import DAO.TacGiaDAO;
import DAO.TheLoaiDAO;

public class Sach {
	
	int masach;
	String tensach;
	String anhdaidien;
	int tinhtrang_full;
	TacGia tacgia;
	String tomtat;
	TheLoai theloai;
	int kiemduyet;
	int luotxem;
	
	
	public Sach(int masach, String tensach, String anhdaidien, int tinhtrang_full, int tacgia, String tomtat, int theloai, int kiemduyet, int luotxem) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.anhdaidien = anhdaidien;
		this.tinhtrang_full = tinhtrang_full;
		this.tacgia = TacGiaDAO.getTacGiaById(tacgia);
		this.tomtat = tomtat;
		this.theloai = TheLoaiDAO.getTheLoaiById(theloai);
		this.kiemduyet = kiemduyet;
		this.luotxem = luotxem;
	}
	
	public int getMasach() {
		return masach;
	}
	public void setMasach(int masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getAnhdaidien() {
		return anhdaidien;
	}
	public void setAnhdaidien(String anhdaidien) {
		this.anhdaidien = anhdaidien;
	}
	public int getTinhtrang_full() {
		return tinhtrang_full;
	}
	public void setTinhtrang_full(int tinhtrang_full) {
		this.tinhtrang_full = tinhtrang_full;
	}
		
	public TacGia getTacgia() {
		return tacgia;
	}

	public void setTacgia(TacGia tacgia) {
		this.tacgia = tacgia;
	}

	public String getTomtat() {
		return tomtat;
	}
	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}
	
	public TheLoai getTheloai() {
		return theloai;
	}

	public void setTheloai(TheLoai theloai) {
		this.theloai = theloai;
	}

	public int getKiemduyet() {
		return kiemduyet;
	}
	public void setKiemduyet(int kiemduyet) {
		this.kiemduyet = kiemduyet;
	}
	public int getLuotxem() {
		return luotxem;
	}
	public void setLuotxem(int luotxem) {
		this.luotxem = luotxem;
	}
	
	

}
