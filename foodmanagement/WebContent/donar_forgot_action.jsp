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
String un=request.getParameter("un");
String mail=request.getParameter("mail");

session.setAttribute("un", un);
session.setAttribute("mail", mail);


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from donar_register where username='"+un+"' and mobile='"+mail+"'");


if(rs.next())
{
	response.sendRedirect("donar_change_password.jsp");

}
else
{		
	response.sendRedirect("donar_forgot.jsp?id1="+un);
}
%>
</body>
</html>