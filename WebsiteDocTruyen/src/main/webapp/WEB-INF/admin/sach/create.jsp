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

</head>
<body>
	<h1 class="text-center">Thêm sách</h1>
	<div class="row">
	<div class="col-md-6 offset-md-3">
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
           <input type="submit" value="Thêm" class="btn btn-primary my-2" />
         </div>
	</form>
	</div>
	</div>

</body>
</html>