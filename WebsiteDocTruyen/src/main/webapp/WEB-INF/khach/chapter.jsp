<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trang chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</head>
<body>
<s:if test="hasActionMessage()">
		<p>
			<s:actionmessage />
		</p>
	</s:if>
	<!--Header-->
	<header class="bg-light mt-0">
		<div>
			<img src="./images/banner.jpg" alt="" class="d-block w-100" height="200">
		</div>
	  </header>

	<!--Navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
		  <a class="navbar-brand" href="homeAction"><img class="rounded-circle" src="./images/logo.png" alt="logo" width="75"></a>
		  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			  <li class="nav-item">
				<a class="nav-link active" aria-current="page" href="homeAction">Trang chủ</a>
			  </li>
			   <li class="nav-item">
				<a class="nav-link active" aria-current="page" href="bookhotAction">Sách hot</a>
			  </li>
			   <li class="nav-item">
				<a class="nav-link active" aria-current="page" href="bookfullAction">Sách full</a>
			  </li>
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				  Thể loại
				</a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
				  <c:forEach items="${lstTheLoai}" var="theloai1">
				  	<li><a class="dropdown-item" href="filterbycategoryAction?theloai=${theloai1.matheloai}">${theloai1.tentheloai}</a></li>
				  </c:forEach>
				</ul>
			  </li>
			</ul>
			<form class="d-flex">
			  <input class="form-control me-2" type="search" placeholder="Tìm kiếm" aria-label="Search">
			  <button class="btn btn-outline-success" type="submit">Tìm</button>
			</form>
		  </div>
		</div>
	</nav>
	
	<!--Section-->
	<section>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<h3>${sach.tensach }</h3>
				<hr>
			</div>
		</div>
		<div class="row my-4 d-flex justify-content-center align-items-center">
			<div class="card w-50">
				<div class="row my-2">
                    <h5 class="text-center">Chương ${chuong.chuongso}: ${chuong.tenchuong}</h5>
                </div>
                <div class="row justify-content-center">
                	<c:choose>
                		<c:when test="${chuong.chuongso == 1}">
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light disabled" href="#">Chương trước</a>
                    		</div>
                    		<div class="col-md-2">                    			
                        		<a class="btn btn-warning text-light" href="nextchapterAction?masach=${sach.masach}&chuongso=${chuonghientai + 1}">Chương sau</a>
                    		</div>
                    	</c:when>
                    	<c:when test="${chuong.chuongso == chuongcuoicung}">
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light" href="previouschapterAction?masach=${sach.masach}&chuongso=${chuonghientai - 1}">Chương trước</a>
                    		</div>
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light disabled" href="#">Chương sau</a>
                    		</div>
                    	</c:when>
                    	<c:otherwise>
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light" href="previouschapterAction?masach=${sach.masach}&chuongso=${chuonghientai - 1}">Chương trước</a>
                    		</div>
                    		<div class="col-md-2">                    			
                        		<a class="btn btn-warning text-light" href="nextchapterAction?masach=${sach.masach}&chuongso=${chuonghientai + 1}">Chương sau</a>
                    		</div>
                    	</c:otherwise>
                    </c:choose>
                </div>
                <hr>
                <div class="row my-2 justify-content-center">
                    <div class="col-10">
                        ${chuong.noidung}
                        <hr>
                    </div>
                    <div class="row mb-2 justify-content-center">
                        <c:choose>
                		<c:when test="${chuong.chuongso == 1}">
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light disabled" href="#">Chương trước</a>
                    		</div>
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light" href="nextchapterAction?masach=${chuong.sach.masach}&chuongso=${chuong.chuongso + 1}">Chương sau</a>
                    		</div>
                    	</c:when>
                    	<c:when test="${chuong.chuongso == chuongcuoicung}">
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light" href="previouschapterAction?masach=${chuong.sach.masach}&chuongso=${chuong.chuongso - 1}">Chương trước</a>
                    		</div>
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light disabled" href="#">Chương sau</a>
                    		</div>
                    	</c:when>
                    	<c:otherwise>
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light" href="previouschapterAction?masach=${chuong.sach.masach}&chuongso=${chuong.chuongso - 1}">Chương trước</a>
                    		</div>
                    		<div class="col-md-2">
                        		<a class="btn btn-warning text-light" href="nextchapterAction?masach=${chuong.sach.masach}&chuongso=${chuong.chuongso + 1}">Chương sau</a>
                    		</div>
                    	</c:otherwise>
                    </c:choose>
                    </div>
                </div>
			</div>
		</div>
	</section>


	<!--Footer-->
	<div class="container">
		<footer class="py-3 my-4">
		  <ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
		  </ul>
		  <p class="text-center text-muted">© 2021 Company, Inc</p>
		</footer>
	</div>
</body>
</html>