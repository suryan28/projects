<%-- 
    Document   : Product_Detail1
    Created on : 10 Jun, 2021, 12:01:26 PM
    Author     : sraja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="obj" class="com.bean.ProductBean"/>
<jsp:setProperty property="*" name="obj"/>
<%
	ProductData.setProductDetails1(obj);
%>
    </head>
    <body>
        <div class="container">
	<div class="row"></div>
	<div class="row">
		<div class="col-md-3">
		
		</div>
		<div class="col-md-6">
			<fieldset> 
			<legend>Upload Product Image</legend>
			<form action="UploadServlet" method="post" enctype="multipart/form-data">
				<input type="file" name="photo" class="form-control"/><br/>
				<input type="submit" value="Upload Image" class="btn btn-block btn-warning"/>
			</form>
			</fieldset>
		</div>
		<div class="col-md-3">
		
		</div>
	
	</div>

</div>
    </body>
</html>
