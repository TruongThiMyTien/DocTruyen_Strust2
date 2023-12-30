<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

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

	
	<!--Section-->
	<section>	
	<div class="row">
    	<div class="col-md-4"></div>
		    <div class="col-md-4 my-5">
		        <div class="p-3 shadow">
		            <h3 class="text-center text-warning fw-bold">LOGIN</h3>
		            <form action="LoginUser" method="post">
		                <div class="my-3">
		                    <label class="text-warning fw-bold">Username:</label>
		                    <input class="form-control" type="text" name="tendangnhap" />
		                </div>
		                <div class="my-3">
		                    <label class="text-warning fw-bold">Password:</label>
		                    <input class="form-control" type="password" name="matkhau" />
		                </div>
		                <div class="d-grid">
		                    <input class="btn btn-warning btn-block text-light fw-bold" type="submit" value="Login" />
		                </div>
		            </form>
		            <s:if test="hasActionMessages()">
						<div class="welcom">
							<s:actionmessage/>
						</div>
					</s:if>
		        </div>
		    </div>
		    <div class="col-md-4"></div>
		</div>
	</section>

</body>
</html>
