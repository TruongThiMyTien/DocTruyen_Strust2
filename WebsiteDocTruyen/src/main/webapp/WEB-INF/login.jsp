<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
<head>	
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
</head>
<body>
	<h2>LOGIN</h2>
	<form action="LoginUser" method="post">
		User Name: <input type="text" name="tendangnhap"/><br/>
		Password: <input type="password" name="matkhau"/><br/>
		<input type="submit" value="Login"/><br/>
	</form>
	<s:if test="hasActionMessages()">
		<div class="welcom">
			<s:actionmessage/>
		</div>
	</s:if>
</body>
</html>
