<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        		<h2 class="text-center">Thông tin tài khoản</h2>
        		<dl class="row">
					<dt class = "col-sm-2">
						Tên người dùng: 
			        </dt>
			        <dd class = "col-sm-10">
			            ${nguoidung.tennguoidung}
			        </dd>
			        <dt class = "col-sm-2">
						Tên đăng nhập: 
			        </dt>
			        <dd class = "col-sm-10">
			            ${nguoidung.tendangnhap}
			        </dd>
			        <dt class = "col-sm-2">
						Quyền: 
			        </dt>
			        <c:choose>
			        	<c:when test="${nguoidung.quyen == 1}">
			        		 <dd class = "col-sm-10">Admin</dd>
			        	</c:when>
			        	<c:otherwise>
			        		<dd class = "col-sm-10">Nhân viên</dd>
			        	</c:otherwise>
			        </c:choose>			       
		        </dl>	
		        <a class="btn btn-primary" href="editprofileNVLoginAction">Sửa thông tin</a>
        	</div>
        	<!-- End nội dung chính -->
        </div>
	</div>
	

</body>
</html>