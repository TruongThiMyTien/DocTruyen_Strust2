<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        	<!-- Nội dung chính -->
        	<div class="col-md">
        		<h3 class="text-center">Thêm người dùng</h3>
        		<div class="row">
					<div class="col-md-10 offset-md-1">
						<form action="storeNguoiDungAction" method="post">							
							 <div class="form-group">
						 		<lable  class="control-label">Tên người dùng: </lable>
						 		<input name="tennguoidung" class="form-control" >
							 </div>
							 <div class="form-group">
						 		<lable  class="control-label">Tên đăng nhập: </lable>
						 		<input name="tendangnhap" class="form-control" >
							 </div>
							 <div class="form-group">
						 		<lable  class="control-label">Mật khẩu: </lable>
						 		<input name="matkhau" class="form-control" >
							 </div>
							 <div class="form-group">
						 		<lable  class="control-label">Quyền: </lable><br />
				                <input type="radio"  name="quyen" value="2" checked="true"> Nhân viên
				                <input type="radio"  name="quyen" value="1"> Admin
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