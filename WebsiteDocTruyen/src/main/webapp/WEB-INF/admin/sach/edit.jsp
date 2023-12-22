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
	<h1 class="text-center">Sửa sách</h1>
	<div class="row">
	<div class="col-md-6 offset-md-3">
	<form action="updateSachAction" method="post" enctype="multipart/form-data" validate="true">
		<input type="hidden" name="masach" value="${sach.masach}">
		 <div class="form-group">
		 	<lable  class="control-label">Tên sách:</lable>
		 	<input name="tensach" class="form-control" value="${sach.tensach}">
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
	             	<c:choose>
						<c:when test="${tg.matacgia == sach.tacgia.matacgia}">
							<option value="${tg.matacgia }" selected='selected'>${tg.tentacgia}</option>
						</c:when>
						<c:otherwise>
							<option value="${tg.matacgia }">${tg.tentacgia}</option>
						</c:otherwise>
					</c:choose>	
	             </c:forEach>             
         	</select>
		 </div>
		 <div class="form-group">
		 	<lable  class="control-label">Tình trạng full: </lable>
		 	<div class="form-control">
		 		<c:choose>
				<c:when test="${sach.tinhtrang_full == 1}">					
                    <input type="radio" id="0" name="full" value="0"> <label for="0">Đang cập nhật</label>
                    <input type="radio" id="1" name="full" value="1" checked="true"> <label for="1">Full</label>
				</c:when>
				<c:otherwise>
					<input type="radio" id="0" name="full" value="0" checked="true"> <label for="0">Đang cập nhật</label>
                    <input type="radio" id="1" name="full" value="1" > <label for="1">Full</label>
				</c:otherwise>
			</c:choose>	
		 	</div>
		 	
		 </div>
		<div class="form-group">
		 	<lable  class="control-label">Tóm tắt:</lable>
		 	<textarea name="tomtat" cols="50" class="form-control">${sach.tomtat}</textarea>
		 </div>
		 <div class="form-group">
		 	<lable  class="control-label">Thể loại: </lable>
		 	<select name="theloai" class="form-control">
	             <option value="">-- Chọn --</option>
	             <c:forEach items="${lstTheLoai}" var="tl">
	             	<c:choose>
						<c:when test="${tl.matheloai == sach.theloai.matheloai}">
							<option value=${tl.matheloai } selected='selected'>${tl.tentheloai}</option>
						</c:when>
						<c:otherwise>
							<option value=${tl.matheloai }>${tl.tentheloai}</option>
						</c:otherwise>
					</c:choose>	
	             	
	             </c:forEach>             
         	</select>
		 </div>
		 <div class="form-group">
		 	<lable  class="control-label">Kiểm duyệt: </lable>
		 	<div class="form-control">
		 		<c:choose>
				<c:when test="${sach.kiemduyet == 1}">					
                    <input type="radio" id="0" name="kiemduyet" value="0"> <label for="0">Không duyệt</label>
                    <input type="radio" id="1" name="kiemduyet" value="1" checked="true"> <label for="1">Duyệt</label>
				</c:when>
				<c:otherwise>
					<input type="radio" id="0" name="kiemduyet" value="0" checked="true"> <label for="0">Không duyệt</label>
                    <input type="radio" id="1" name="kiemduyet" value="1" > <label for="1">Duyệt</label>
				</c:otherwise>
			</c:choose>	
		 	</div>
		<div class="form-group">
           <input type="submit" value="Sửa" class="btn btn-primary my-2" />
         </div>
	</form>
	</div>
	</div>

</body>
</html>