package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import Model.NguoiDung;
import DAO.NguoiDungDAO;

public class LoginAction extends ActionSupport implements SessionAware {

	String tendangnhap,matkhau;
	String tennguoidung;
	Map<String, Object> session;
	NguoiDung nguoidung;
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

	public NguoiDung getNguoidung() {
		return nguoidung;
	}

	public void setNguoidung(NguoiDung nguoidung) {
		this.nguoidung = nguoidung;
	}

	public Map<String, Object> getSession() {
		return session;
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

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
	

	public String login() {
		NguoiDung nd = new NguoiDungDAO().login(tendangnhap, matkhau);
		if(nd != null)
		{
			session.put("nguoidung", nd);
			if(nd.getQuyen() == 1)
				return "admin";
			else
				return "nhanvien";
		}else
		{
			addActionMessage("Bạn nhập sai tên đăng nhập hoặc mật khẩu!");
			return "loginFail";
		}
	}	
	
	public String profile()
	{
		nguoidung = (NguoiDung) session.get("nguoidung");
		return "success";
	}
	
	public String editprofile()
	{
		nguoidung = (NguoiDung)session.get("nguoidung");
		return "success";
	}
	
	public String update()
	{
		NguoiDungDAO.update(manguoidung, tennguoidung, tendangnhap, matkhau);
		nguoidung = NguoiDungDAO.getNguoiDunghById(manguoidung);
		session.put("nguoidung", nguoidung);
		return "profile";
	}
	
	public String logout()
	{
		session.put("nguoidung", null);
		return "login";
	}
	
}
