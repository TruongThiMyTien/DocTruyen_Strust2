package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import Model.Sach;
import Model.TacGia;
import Model.TheLoai;
import DAO.SachDAO;
import DAO.TacGiaDAO;
import DAO.TheLoaiDAO;

public class SachAction extends ActionSupport{
	
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
		//Vị trí lưu ảnh: C:\Users\t0195\Desktop\Java  Project\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\foody\img
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
		else
		{
			Sach s = SachDAO.getSachById(masach);
			hinhFileName = s.getAnhdaidien();
		}
		SachDAO.update(masach, tensach, hinhFileName, full, tacgia, tomtat, theloai, kiemduyet);
		return "list";
	}
}
