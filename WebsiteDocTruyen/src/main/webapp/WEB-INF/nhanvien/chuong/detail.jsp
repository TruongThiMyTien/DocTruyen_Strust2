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
        		<h2 class="text-center my-2">${chuong.sach.tensach }</h2>
        		<h6 class="text-center">Chương ${chuong.chuongso}: ${chuong.tenchuong}</h6>
        		<hr class="mx-auto" width="70%">
        		
				<div class="d-flex flex-row-reverse">					
				  <a class="btn btn-warning px-5 mx-3" href="editNVChuongAction?machuong=${chuong.machuong}">Sửa</a>
				</div>
        		
        		<div class="border my-3 p-3">${chuong.noidung }</div>
        		
        	</div>
        	<!-- End nội dung chính -->
        </div>
	</div>
</body>
</html>