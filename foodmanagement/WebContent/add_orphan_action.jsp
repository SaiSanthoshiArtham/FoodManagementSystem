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
	String hname=request.getParameter("hname");
	String oname=request.getParameter("on");
	String regid=request.getParameter("regid");
	String count=request.getParameter("count");
	String num=request.getParameter("num");
	String area=request.getParameter("area");
	String add=request.getParameter("add");

	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
	
	Statement st=con.createStatement();

	ResultSet rs=st.executeQuery("select * from add_orphan where reg_id='"+regid+"' ");

	if(rs.next())
	{
		response.sendRedirect("add_orphan.jsp?id1="+hname);		

	}
	else
	{
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into add_orphan values(?,?,?,?,?,?,?)");
			ps.setString(1,hname);
			ps.setString(2,oname);
			ps.setString(3,regid);
			ps.setString(4,count);
			ps.setString(5,num);
			ps.setString(6,area);
			ps.setString(7,add);
			
			ps.executeUpdate();
	
			response.sendRedirect("add_orphan.jsp?id2="+hname);
	}
%>
</body>
</html>