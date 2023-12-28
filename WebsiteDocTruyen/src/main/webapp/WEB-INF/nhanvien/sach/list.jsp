<!-- nhận một danh sách sách lstSach từ SachAction -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
        	<div class="col-md">
        		<h1 class="text-center">Danh sách sách</h1>

				
				<p>
					<a class="btn btn-primary" href="createNVSachAction">Thêm mới</a>
				</p>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Mã sách</th>
							<th>Tên sách</th>
							<th>Hình ảnh</th>
							<th>Tình trạng full</th>
							<th>Tác giả</th>
							<th>Thể loại</th>
							<th>Lượt xem</th>
							<th>Hành động</th>
						</tr>
					</thead>
					
					<tbody>
					
					
					<c:forEach items="${lstSach}" var="sach">
						<c:choose>
							<c:when test="${sach.kiemduyet == 1}">
								<tr>
									<td>${sach.masach}</td>
									<td><a class="text-decoration-none" href="listNVChuongAction?masach=${sach.masach}">${sach.tensach}</a></td>
									<td><img width='150' src="./images/${sach.anhdaidien}" /></td>
									<c:choose>
										<c:when test="${sach.tinhtrang_full == 1}">
											<td>Full</td>
										</c:when>
										<c:otherwise>
											<td>Đang cập nhật</td>
										</c:otherwise>
									</c:choose>
									<td>${sach.tacgia.tentacgia}</td>
									<td>${sach.theloai.tentheloai}</td>
									<td>${sach.luotxem}</td>
									<td><a class="btn btn-warning" href="editNVSachAction?masach=${sach.masach }">Sửa</a></td>
								</tr>	
							</c:when>
						</c:choose>
						
					</c:forEach>
				</table>
        	</div>
        </div>
	</div>

	
</body>
</html>