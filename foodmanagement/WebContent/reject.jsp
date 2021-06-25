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
		String dname=request.getParameter("id");
		
	
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
		
		Statement st=con.createStatement();
		int i=st.executeUpdate("delete from food_details where donar_name='"+dname+"' ");
		if(i==1)	
		{
			response.sendRedirect("view_donar_request.jsp");
		//	out.println("rejected");

		}
		else
		{
			out.println("not rejected");
		}

%>
</body>
</html>