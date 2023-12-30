<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div class="container">
	
		<div id="phandau">
        </div>
        
        <!-- Phần giữa -->
        <div class="row">
        	<div id="bentrai" class="col-md-3">
        		<h3>Quản lý</h3>
        		<ul>
        			<li><a href="listNVSachAction" >Danh sách sách</a><br/></li>
        		</ul>
        		<h3>Tài khoản</h3>
        		<ul>
        			<li><a href="profileNVLoginAction" >Thông tin tài khoản</a><br/></li>        			
        			<li><a href="logoutNVLoginAction" >Đăng xuất</a><br/></li>
        		</ul>
        		
        	</div>
        	<!-- Nội dung chính -->
        	<div class="col-md">
        		<h3 class="text-center">Sửa thông tin tài khoản</h3>
        		<div class="row">
					<div class="col-md-10 offset-md-1">
						<s:form action="updateNVLoginAction" method="post" validate="true">							
						 	<input name="manguoidung" type="hidden" value="${nguoidung.manguoidung }" >
							<div class="form-group">
						 		<s:textfield label="Tên người dùng" name="tennguoidung" cssClass="form-control" value="%{nguoidung.tennguoidung}" />
							 </div>	
							 <div class="form-group">
						 		<s:textfield label="Tên đăng nhập" name="tendangnhap" cssClass="form-control" value="%{nguoidung.tendangnhap}" />
							 </div>	
							 <div class="form-group">
						 		<s:password label="Mật khẩu" name="matkhau" cssClass="form-control" />
							 </div>							
							 <div class="form-group">
							 	<s:submit value="Sửa" cssClass="btn btn-primary px-5 my-3" />
							 </div>
						</s:form>
					</div>
				</div>
        	</div>
        	<!-- End nội dung chính -->
        </div>
	</div>
	
</body>
</html>