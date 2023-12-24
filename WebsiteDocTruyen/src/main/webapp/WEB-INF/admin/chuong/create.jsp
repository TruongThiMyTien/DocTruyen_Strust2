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
			<br><br><br><br>
			<a href="btn btn-outline-danger">Đăng xuất</a>
        </div>
        
        <!-- Phần giữa -->
        <div class="row">
        	<div id="bentrai" class="col-md-3">
        		<h3>Quản lý</h3>
        		<ul>
        			<li><a href="listSachAction" >Danh sách sách</a></li>
        			<li><a href="" >Danh sách tác giả</a></li>
        			<li><a href="" >Danh sách thể loại</a></li>
        			<li><a href="" >Danh sách người dùng</a></li>
        		</ul>
        	</div>
        	<!-- Nội dung chính -->
        	<div class="col-md">
        		<h3 class="text-center">Thêm chương mới</h3>
        		<div class="row">
					<div class="col-md-10 offset-md-1">
						<form action="storeChuongAction" method="post">
							<input name="masach" type="hidden" value="${masach}">
							<div class="form-group">
						 		<lable  class="control-label">Chương số: </lable>
						 		<input name="chuongso" class="form-control" value="${chuongso }" >
							 </div>
							 <div class="form-group">
						 		<lable  class="control-label">Tên chương: </lable>
						 		<input name="tenchuong" class="form-control" >
							 </div>
							 <div class="form-group">
						 		<lable  class="control-label">Nội dung </lable>
						 		<textarea name="noidung" class="form-control" rows="15"></textarea>
							 </div>
							 <div class="form-group">
							 	<input type="submit" value="Thêm" class="btn btn-primary px-5 my-3">
							 </div>
						</form>
					</div>
				</div>
        	</div>
        	<!-- End nội dung chính -->
        </div>
	</div>
</body>
</html>