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
		

		String dname=request.getParameter("dname");
		String dt=request.getParameter("dt");
		String area=request.getParameter("area");
		String mob=request.getParameter("mob");
		String aname=request.getParameter("aname");

		session.setAttribute("area", area);
		session.setAttribute("mob", mob);
		session.setAttribute("aname", aname);

		
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
		
		Statement st=con.createStatement();

		int i=st.executeUpdate("update food_details set Status='ACCEPTED ',Agent_mobile='"+mob+"',agent_name='"+aname+"' where donar_name='"+dname+"' and status='SENT TO AGENT' and area='"+area+"' ");

		if(i==1)
		{
			response.sendRedirect("agent_home.jsp");	
		}
		else
		{
			response.sendRedirect("agent_home.jsp?id1="+dname+"&area="+area+"&mob="+mob+"&aname="+aname);	
		}
		
%>
</body>
</html>