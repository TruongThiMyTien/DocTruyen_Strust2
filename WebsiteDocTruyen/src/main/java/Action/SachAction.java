package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Model.Sach;
import DAO.SachDAO;

public class SachAction {
	
	List<Sach> lstSach;
		
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

}
