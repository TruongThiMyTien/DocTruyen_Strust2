<!-- nhận một danh sách sách lstSach từ SachAction -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		table, td, tr, th
		{
			border: 1px solid;
		}
		table
		{
			width: 100%;
		}
	</style>
</head>
<body>
	<h1>Danh sách sách</h1>
	
	<s:if test="hasActionMessage()">
		<p>
			<s:actionmessage/>
		</p>
	</s:if>
	<p>
		<a href="createSachAction">Thêm mới</a>
		<a href="homeAdminAction">Trang chủ</a>
	</p>
	<table>
		<tr>
			<th>Mã sách</th>
			<th>Tên sách</th>
			<th>Hình ảnh</th>
			<th>Tình trạng full</th>
			<th>Mã tác giả</th>
			<th>Tóm tắt</th>
			<th>Mã thể loại</th>
			<th>Kiểm duyệt</th>
			<th>Lượt xem</th>
			<th></th>
			<th></th>
		</tr>
		<s:iterator var="sach" value="lstSach">
			<tr>
				<td><s:property value="masach"/></td>
				<td><s:property value="tensach"/></td>				
				<td ><img width='150' src="./<s:property value="anhdaidien"/>"/></td>
				<td><s:property value="tinhtrang_full"/></td>
				<td><s:property value="tacgia"/></td>
				<td width="20%"><s:property value="tomtat"/></td>
				<td><s:property value="theloai"/></td>
				<td><s:property value="kiemduyet"/></td>
				<td><s:property value="luotxem"/></td>
				<td>Sửa</td>
				<td>Xóa</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>