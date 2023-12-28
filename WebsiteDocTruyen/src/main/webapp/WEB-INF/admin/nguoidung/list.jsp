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
        		<h1 class="text-center">Danh sách người dùng</h1>			
				<p>
					<a class="btn btn-primary" href="createNguoiDungAction">Thêm mới</a>
				</p>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Mã người dùng</th>
							<th>Tên người dùng</th>
							<th>Tên đăng nhập</th>
							<th>Quyền</th>
							<th colspan="3">Hành động</th>
						</tr>
					</thead>
					
					<tbody>
					
					
					<c:forEach items="${lstNguoiDung}" var="nd">
						<tr>
							<td>${nd.manguoidung}</td>							
							<td>${nd.tennguoidung}</td>					
							<td>${nd.tendangnhap}</td>
							<c:choose>
								<c:when test="${nd.quyen == 1}">
									<td>Admin</td>
								</c:when>
								<c:otherwise>
									<td>Nhân viên</td>
								</c:otherwise>
							</c:choose>
							<td><a class="btn btn-warning" href="doiquyenNguoiDungAction?manguoidung=${nd.manguoidung}&quyen=${nd.quyen}" onclick="return confirm('Bạn chắc chắn muốn đổi quyền?')">Đổi quyền</a></td>
							<td><a class="btn btn-warning" href="matkhaumoiNguoiDungAction?manguoidung=${nd.manguoidung}">Cấp lại mật khẩu</a></td>
							<td><a class="btn btn-danger" href="deleteNguoiDungAction?manguoidung=${nd.manguoidung}" onclick="return confirm('Bạn chắc chắn xóa?')">Xóa</a></td>
						</tr>	
					</c:forEach>
				</table>
        	</div>
        	<!-- End nội dung chính -->
        </div>
	</div>
</body>
</html>