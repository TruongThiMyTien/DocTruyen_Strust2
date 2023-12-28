package Action;

import java.util.List;

import DAO.TacGiaDAO;
import Model.TacGia;

public class TacGiaAction {
	
	List<TacGia> lstTacGia;	
	int matacgia;
	String tentacgia;
	TacGia tacgia;
	
	
	public int getMatacgia() {
		return matacgia;
	}

	public void setMatacgia(int matacgia) {
		this.matacgia = matacgia;
	}

	public TacGia getTacgia() {
		return tacgia;
	}

	public void setTacgia(TacGia tacgia) {
		this.tacgia = tacgia;
	}

	public String getTentacgia() {
		return tentacgia;
	}

	public void setTentacgia(String tentacgia) {
		this.tentacgia = tentacgia;
	}

	public List<TacGia> getLstTacGia() {
		return lstTacGia;
	}

	public void setLstTacGia(List<TacGia> lstTacGia) {
		this.lstTacGia = lstTacGia;
	}
	
	public String list()
	{
		lstTacGia = TacGiaDAO.getList();
		return "success";
	}
	
	public String create()
	{
		return "success";
	}
	
	public String store()
	{
		TacGiaDAO.store(tentacgia);
		lstTacGia = TacGiaDAO.getList();
		return "list";
	}
	
	public String edit()
	{
		tacgia = TacGiaDAO.getTacGiaById(matacgia);
		return "success";
	}
	
	public String update()
	{
		TacGiaDAO.update(matacgia, tentacgia);
		lstTacGia = TacGiaDAO.getList();
		return "list";
	}

}
