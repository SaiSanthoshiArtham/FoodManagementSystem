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
	String aname=request.getParameter("fn");
	String uname=request.getParameter("un");
	String pword=request.getParameter("pwd");
	String gender=request.getParameter("gen");
	String num=request.getParameter("num");
	String add=request.getParameter("add");


	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
	
	Statement st=con.createStatement();

	ResultSet rs=st.executeQuery("select * from donar_register where username='"+uname+"' ");
	
	
	if(rs.next())
	{
		
		response.sendRedirect("donar_reg.jsp?id1="+aname);

	}
	else
	{
		PreparedStatement ps=con.prepareStatement("insert into donar_register values(?,?,?,?,?,?)");
		ps.setString(1,aname);
		ps.setString(2,uname);
		ps.setString(3,pword);
		ps.setString(4,gender);
		ps.setString(5,num);
		ps.setString(6,add);	
		
		ps.executeUpdate();

		response.sendRedirect("donar_login.jsp?id2="+aname);
		
	}

%>
</body>
</html>