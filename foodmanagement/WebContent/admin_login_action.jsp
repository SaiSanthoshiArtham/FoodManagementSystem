<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String uname=request.getParameter("un");
	String pass=request.getParameter("pwd");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
	
	Statement st=con.createStatement();

	ResultSet rs=st.executeQuery("select * from admin_login where id='"+uname+"' and password='"+pass+"'");
	
	
	if(rs.next())
	{
		
		response.sendRedirect("admin_home.jsp");

	}
	else
	{		
		response.sendRedirect("admin_login.jsp?id1="+uname);
	}
%>
</body>
</html>