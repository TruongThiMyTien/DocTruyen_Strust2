package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import Model.Chuong;
import Model.Sach;
import Model.TacGia;
import Model.TheLoai;
import DAO.ChuongDAO;
import DAO.SachDAO;
import DAO.TacGiaDAO;
import DAO.TheLoaiDAO;

public class SachAction {
	
	List<Sach> lstSach;
	List<TacGia> lstTacGia;
	List<TheLoai> lstTheLoai;
	Sach sach;
	int masach;
	String tensach;
	File hinh;
	String hinhFileName;
	String hinhContextType;
	int full;
	int tacgia;
	String tomtat;
	int theloai;
	int kiemduyet;
	TacGia tacgia1;
	List<Chuong> lstChuong;
	int sochuong;
	Chuong chuong;	
	String searchkey;
	public String getSearchkey() {
		return searchkey;
	}

	public void setSearchkey(String searchkey) {
		this.searchkey = searchkey;
	}

	public Chuong getChuong() {
		return chuong;
	}

	public void setChuong(Chuong chuong) {
		this.chuong = chuong;
	}

	public int getSochuong() {
		return sochuong;
	}

	public void setSochuong(int sochuong) {
		this.sochuong = sochuong;
	}

	public List<Chuong> getLstChuong() {
		return lstChuong;
	}

	public void setLstChuong(List<Chuong> lstChuong) {
		this.lstChuong = lstChuong;
	}

	public TacGia getTacgia1() {
		return tacgia1;
	}

	public void setTacgia1(TacGia tacgia1) {
		this.tacgia1 = tacgia1;
	}

	public TheLoai getTheloai1() {
		return theloai1;
	}

	public void setTheloai1(TheLoai theloai1) {
		this.theloai1 = theloai1;
	}

	public String getTentacgia() {
		return tentacgia;
	}

	public void setTentacgia(String tentacgia) {
		this.tentacgia = tentacgia;
	}

	public String getTentheloai() {
		return tentheloai;
	}

	public void setTentheloai(String tentheloai) {
		this.tentheloai = tentheloai;
	}


	TheLoai theloai1;
	String tentacgia;
	String tentheloai;
		
	public Sach getSach() {
		return sach;
	}

	public void setSach(Sach sach) {
		this.sach = sach;
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

	public File getHinh() {
		return hinh;
	}

	public void setHinh(File hinh) {
		this.hinh = hinh;
	}

	
	public int getFull() {
		return full;
	}

	public void setFull(int full) {
		this.full = full;
	}

	public String getHinhFileName() {
		return hinhFileName;
	}

	public void setHinhFileName(String hinhFileName) {
		this.hinhFileName = hinhFileName;
	}

	public String getHinhContextType() {
		return hinhContextType;
	}

	public void setHinhContextType(String hinhContextType) {
		this.hinhContextType = hinhContextType;
	}

	public int getTacgia() {
		return tacgia;
	}

	public void setTacgia(int tacgia) {
		this.tacgia = tacgia;
	}

	public String getTomtat() {
		return tomtat;
	}

	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}

	public int getTheloai() {
		return theloai;
	}

	public void setTheloai(int theloai) {
		this.theloai = theloai;
	}

	public List<TheLoai> getLstTheLoai() {
		return lstTheLoai;
	}

	public void setLstTheLoai(List<TheLoai> lstTheLoai) {
		this.lstTheLoai = lstTheLoai;
	}

	public int getKiemduyet() {
		return kiemduyet;
	}

	public void setKiemduyet(int kiemduyet) {
		this.kiemduyet = kiemduyet;
	}

	public List<TacGia> getLstTacGia() {
		return lstTacGia;
	}

	public void setLstTacGia(List<TacGia> lstTacGia) {
		this.lstTacGia = lstTacGia;
	}

	public List<Sach> getLstSach() {
		return lstSach;
	}

	public void setLstSach(List<Sach> lstSach) {
		this.lstSach = lstSach;
	}

	public String list()
	 {
		lstSach = SachDAO.getList();
		return "success";
	 }
	
	public String create()
	 {				
		 lstTacGia = TacGiaDAO.getList();
		 lstTheLoai = TheLoaiDAO.getList();
		 return "success";
	 }
	
	public String edit()
	 {			
		lstTacGia = TacGiaDAO.getList();
		lstTheLoai = TheLoaiDAO.getList();
		sach = SachDAO.getSachById(masach);
		 return "success";
	 }
	
	public String delete()
	 {			
		// xóa sách
		SachDAO.delete(masach);
		 return "list";
	 }
	
	
	
	public String store()
	{
		String path = ServletActionContext.getServletContext().getRealPath("./images");
//		System.out.println("image location: " + path);
//		System.out.println("file name: " + hinhFileName);
		if(hinhFileName != null)
		{
			
			File file = new File(path, hinhFileName);
			try {
				FileUtils.copyFile(hinh, file);				
			}catch(IOException e)
			{
				e.printStackTrace();
			}
		}
		SachDAO.store(tensach, hinhFileName, tacgia, tomtat, theloai);
		return "list";
	}

	
	public String update()
	{
		String path = ServletActionContext.getServletContext().getRealPath("./images");
		
		if(hinhFileName != null)
		{
			
			File file = new File(path, hinhFileName);
			try {
				FileUtils.copyFile(hinh, file);				
			}catch(IOException e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			Sach s = SachDAO.getSachById(masach);
			hinhFileName = s.getAnhdaidien();
		}
		SachDAO.update(masach, tensach, hinhFileName, full, tacgia, tomtat, theloai, kiemduyet);
		return "list";
	}
	public String home()
	{
		lstTacGia = TacGiaDAO.getList();
		lstTheLoai = TheLoaiDAO.getList();
		lstSach = SachDAO.getList();
		return "success";
	}
	public String filterbyauthor()
	{
		lstTheLoai = TheLoaiDAO.getList();
		lstTacGia = TacGiaDAO.getList();
		lstSach =  SachDAO.getListByTacGia(tacgia);
		return "success";
	}
	public String filterbycategory()
	{
		lstTheLoai = TheLoaiDAO.getList();
		lstTacGia = TacGiaDAO.getList();
		lstSach =  SachDAO.getListByTheLoai(theloai);
		return "success";
	}
	
	public String bookdetail()
	{
		lstChuong = ChuongDAO.getListChuongByIdSach(masach);
		lstTacGia = TacGiaDAO.getList();
		lstTheLoai = TheLoaiDAO.getList();
		sach = SachDAO.getSachById(masach);
		sochuong = lstChuong.size();
		return "success";
	}
	
	public String search()
	{
		lstTacGia = TacGiaDAO.getList();
		lstTheLoai = TheLoaiDAO.getList();
		lstSach = SachDAO.searchByName(searchkey); 	
		return "home";
	}
	
	public String hot()
	{
		lstTacGia = TacGiaDAO.getList();
		lstTheLoai = TheLoaiDAO.getList();
		lstSach = SachDAO.getListSachNoiBat();
		return "success";
	}
	
	public String full()
	{
		lstTacGia = TacGiaDAO.getList();
		lstTheLoai = TheLoaiDAO.getList();
		lstSach = SachDAO.getListSachFull();
		return "success";
	}
	
	
}
