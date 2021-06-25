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
String pwd=request.getParameter("pwd1");
String un=session.getAttribute("un").toString();
String mail=session.getAttribute("mail").toString();

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");

Statement st=con.createStatement();

int i=st.executeUpdate("update donar_register set password='"+pwd+"' where username='"+un+"' and mobile='"+mail+"' ");

if(i==1)
{
	response.sendRedirect("donar_login.jsp?id3="+un);	
}
else
{
out.println("pwd not changed");
}

%>
</body>
</html>