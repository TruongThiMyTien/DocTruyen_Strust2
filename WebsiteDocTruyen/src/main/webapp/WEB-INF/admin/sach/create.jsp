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
        		<h1 class="text-center">Thêm sách</h1>
				<div class="row">
					<div class="col-md-10 offset-md-1">
					<form action="storeSachAction" method="post" enctype="multipart/form-data" validate="true">
						 <div class="form-group">
						 	<lable  class="control-label">Tên sách:</lable>
						 	<input name="tensach" class="form-control" >
						 </div>
						 <div class="form-group">
						 	<lable  class="control-label">Hình: </lable>
						 	<input type="file" name="hinh" class="form-control" >
						 </div>
						 <div class="form-group">
						 	<lable  class="control-label">Tác giả: </lable>
						 	<select name="tacgia" class="form-control">
					             <option value="">-- Chọn --</option>
					             <c:forEach items="${lstTacGia}" var="tg">
					             	<option value="${tg.matacgia }">${tg.tentacgia}</option>
					             </c:forEach>             
				         	</select>
						 </div>
						<div class="form-group">
						 	<lable  class="control-label">Tóm tắt:</lable>
						 	<textarea name="tomtat" cols="50" class="form-control"></textarea>
						 </div>
						 <div class="form-group">
						 	<lable  class="control-label">Thể loại: </lable>
						 	<select name="theloai" class="form-control">
					             <option value="">-- Chọn --</option>
					             <c:forEach items="${lstTheLoai}" var="tl">
					             	<option value=${tl.matheloai }>${tl.tentheloai}</option>
					             </c:forEach>             
				         	</select>
						 </div>
						<div class="form-group">
				           <input type="submit" value="Thêm" class="btn btn-primary my-2 px-5" />
				         </div>
					</form>
					</div>
				</div>
        	</div>
        </div>
	</div>

	

</body>
</html>