package Interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import Model.NguoiDung;

//chuyển người dùng về trang chủ theo quyền nêu đã đăng nhập rồi
public class AuthenticatedInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        Map<String, Object> session = invocation.getInvocationContext().getSession();

        NguoiDung nd = (NguoiDung) session.get("nguoidung");

        if (nd == null) {
            //Neu null session thi khong cho vao home.jsp
            return Action.LOGIN;
        } else {
            //Neu co session thi cho vao home.jsp
        	
        	if(nd.getQuyen() == 1)
			{
    			return "admin";
			}
    		else
    			return "nhanvien"; 
        	
            //return invocation.invoke();
        	//return "";
        }
    }

}
