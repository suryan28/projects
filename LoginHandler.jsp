<%-- 
    Document   : LoginHandler
    Created on : 10 Jun, 2021, 12:03:26 PM
    Author     : sraja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="com.storage.DBData" %>
<jsp:useBean id="obj" class="com.bean.SignupBean" scope="session" />
<jsp:setProperty property="*" name="obj"/>

<%
	String status = DBData.checkLogin(obj);
if(status.equals("true"))
{
	session.setAttribute("email", obj.getEmail());
	response.sendRedirect("home.jsp"); 
}
if(status.equals("false"))
{
	response.sendRedirect("index.jsp?status=false");
}
if(status.equals("error"))
{
	response.sendRedirect("index.jsp?status=error");
}
%>