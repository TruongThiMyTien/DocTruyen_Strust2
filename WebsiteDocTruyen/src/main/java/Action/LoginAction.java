package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import Model.NguoiDung;
import DAO.NguoiDungDAO;

public class LoginAction extends ActionSupport implements SessionAware {

	String tendangnhap,matkhau;
	Map<String, Object> session;

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
			System.out.println("Login success");
			if(nd.getQuyen() == 1)
				return "admin";
			else
				return "nhanvien";
		}else
		{
			addActionMessage("Bạn nhập sai tên đăng nhập hoặc mật khẩu!");
			System.out.println("Login fail");
			return "loginFail";
		}
	}	
	
}
