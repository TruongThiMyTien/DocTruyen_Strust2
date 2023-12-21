package Model;

public class NguoiDung {

	int manguoidung;
	String tennguoidung;
	String  tendangnhap;
	int quyen;
	
	
	public NguoiDung(int manguoidung, String tennguoidung, String tendangnhap, int quyen) {
		super();
		this.manguoidung = manguoidung;
		this.tennguoidung = tennguoidung;
		this.tendangnhap = tendangnhap;
		this.quyen = quyen;
	}	

	public int getManguoidung() {
		return manguoidung;
	}



	public void setManguoidung(int manguoidung) {
		this.manguoidung = manguoidung;
	}



	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getTennguoidung() {
		return tennguoidung;
	}

	public void setTennguoidung(String ten) {
		this.tennguoidung = ten;
	}

	public int getQuyen() {
		return quyen;
	}

	public void setQuyen(int quyen) {
		this.quyen = quyen;
	}

	
}
