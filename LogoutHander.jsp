<%-- 
    Document   : LogoutHander
    Created on : 10 Jun, 2021, 12:02:40 PM
    Author     : sraja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>