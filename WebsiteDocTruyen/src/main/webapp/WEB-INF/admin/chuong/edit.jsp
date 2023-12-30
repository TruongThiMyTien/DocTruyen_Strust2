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
			<br><br><br><br>
			<a href="btn btn-outline-danger">Đăng xuất</a>
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
        	<!-- Nội dung chính -->
        	<div class="col-md">
        		<h3 class="text-center">Sửa thông tin chương</h3>
        		<div class="row">
					<div class="col-md-10 offset-md-1">
						<s:form action="updateChuongAction" method="post" validate="true">
						    <s:hidden name="masach" value="%{chuong.sach.masach}" />
						    <s:hidden name="machuong" value="%{chuong.machuong}" />
						    <div class="form-group">
                            <s:textfield label="Chương số" name="chuongso"  cssClass="form-control" value="%{chuong.chuongso}"/>
						    </div>
						    
						    <div class="form-group">
						        <s:textfield label="Tên chương" name="tenchuong" cssClass="form-control" value="%{chuong.tenchuong}" />
						    </div>
						    
						    <div class="form-group">
					        <s:textarea label="Nội dung" name="noidung" cssClass="form-control" rows="15" cols="100" value="%{chuong.noidung}"></s:textarea>
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