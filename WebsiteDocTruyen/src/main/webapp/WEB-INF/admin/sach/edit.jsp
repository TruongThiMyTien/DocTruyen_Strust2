<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        			<li><a href="listSachAction" >Danh sách sách</a><br/></li>
        			<li><a href="listTacGiaAction" >Danh sách tác giả</a><br/></li>
        			<li><a href="listTheLoaiAction" >Danh sách thể loại</a><br/></li>
        			<li><a href="listNguoiDungAction" >Danh sách người dùng</a></li>
        		</ul>
        		<h3>Tài khoản</h3>
        		<ul>
        			<li><a href="profileADLoginAction" >Thông tin tài khoản</a><br/></li>        			
        			<li><a href="logoutADLoginAction" >Đăng xuất</a><br/></li>
        		</ul>
        	</div>
        	<div class="col-md">
        		<h1 class="text-center">Sửa sách</h1>
				<div class="row">
				<div class="col-md-10 offset-md-1">
				<s:form action="updateSachAction" method="post" enctype="multipart/form-data" validate="true">
						    	<s:hidden name="masach" value="%{sach.masach}" />						    
						    <div class="form-group">
						   		<s:textfield label="Tên sách" name="tensach"  cssClass="form-control" value="%{sach.tensach}" />				
						    </div>	
						    <div class="form-group">
						    <s:hidden name="sach" value="%{sach.anhdaidien}" />						        
						        <s:file label="Hình" name="hinh" cssClass="form-control" />
						    </div>	
						    <div class="form-group">					       
						        <s:select label="Tác giả" name="tacgia" list="lstTacGia" listKey="matacgia" listValue="tentacgia" headerKey="" headerValue="-- Chọn --" cssClass="form-control" value="%{sach.tacgia.matacgia}" />
						    </div>		
						    <div class="form-group">
						        <div>
						            <s:radio label="Tình trạng" name="full" list="#{'0':'Đang cập nhật', '1':'Full'}" value="%{sach.tinhtrang_full}" />
						        </div>
						    </div>		 
    						<div class="form-group">
    						 		
						   			<s:textarea label="Tóm tắt" name="tomtat" cssClass="form-control" rows="5" cols="100" value="%{sach.tomtat}"></s:textarea>				
						    </div>
						     <div class="form-group">						       
						        <s:select label="Thể loại" name="theloai" list="lstTheLoai" listKey="matheloai" listValue="tentheloai" headerKey="" headerValue="-- Chọn --" cssClass="form-control" value="%{sach.theloai.matheloai}" />
						    </div>
						    <div class="form-group">						       
						        <div>
						            <s:radio label="Kiểm duyệt" name="kiemduyet" list="#{'0':'Không duyệt', '1':'Duyệt'}" value="%{sach.kiemduyet}" />
						        </div>
						    </div>
						   
						    <div class="form-group">
						        <s:submit type="submit" value="Sửa" class="btn btn-primary my-2 px-5" />
						    </div>
						</s:form>
				</div>
				</div>
        	</div>
        </div>
	</div>

	

</body>
</html>