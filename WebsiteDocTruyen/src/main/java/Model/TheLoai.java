package Model;

public class TheLoai {

	int matheloai;
	String tentheloai;	
	
	public TheLoai(int matheloai, String tentheloai) {
		super();
		this.matheloai = matheloai;
		this.tentheloai = tentheloai;
	}
	
	public int getMatheloai() {
		return matheloai;
	}
	public void setMatheloai(int matheloai) {
		this.matheloai = matheloai;
	}
	public String getTentheloai() {
		return tentheloai;
	}
	public void setTentheloai(String tentheloai) {
		this.tentheloai = tentheloai;
	}
	
	
}
