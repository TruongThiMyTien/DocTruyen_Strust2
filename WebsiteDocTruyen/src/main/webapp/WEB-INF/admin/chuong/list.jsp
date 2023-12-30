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
        		<div class="container">
					<div class="row">
						<div class="col-md-3 p-3"><img width="100%" src="./images/${sach.anhdaidien}"/></div>
						<div class="col-md">
							<h2 class="text-center">${sach.tensach}</h2>
							<hr>
							<dl class="row">
								<dt class = "col-sm-2">
									Tác giả: 
						        </dt>
						        <dd class = "col-sm-10">
						            ${sach.tacgia.tentacgia}
						        </dd>
						        <dt class = "col-sm-2">
									Thể loại: 
						        </dt>
						        <dd class = "col-sm-10">
						            ${sach.theloai.tentheloai}
						        </dd>
						        <dt class = "col-sm-2">
									Tình trạng:
						        </dt>
						        <dd class = "col-sm-10">
						            <c:choose>
						            	<c:when test="${sach.tinhtrang_full == 1}">
						            		Full
						            	</c:when>
						            	<c:otherwise>
						            		Đang cập nhật
						            	</c:otherwise>
						            </c:choose>
						        </dd>
						        <dt class = "col-sm-2">
									Tóm tắt:
						        </dt>
						        <dd class = "col-sm-10">
						            ${sach.tomtat}
						        </dd>
							</dl>
						</div>
					</div>
				</div>
				<span>
					<a class="btn btn-primary" href="createChuongAction?masach=${sach.masach}">Thêm chương</a>
					<h3 class="my-2">Danh sách chương</h3>
					<ul>
						<c:forEach items="${lstChuong}" var="chuong">
							<li><a class="text-decoration-none" href="detailChuongAction?machuong=${chuong.machuong}">Chương ${chuong.chuongso}: ${chuong.tenchuong}</a></li>
						</c:forEach>
					</ul>
				</span>
				
        	</div>
        	<!-- End nội dung chính -->
        </div>
	</div>

	
</body>
</html>