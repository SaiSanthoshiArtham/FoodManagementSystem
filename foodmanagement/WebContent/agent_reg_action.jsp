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
	String aname=request.getParameter("an");
	String uname=request.getParameter("un");
	String pword=request.getParameter("pwd");
	String repword=request.getParameter("repwd");
	String gender=request.getParameter("gen");
	String num=request.getParameter("num");
	String area=request.getParameter("area");
	String add=request.getParameter("add");
	String veh=request.getParameter("vehiclenumber");
	String lic=request.getParameter("licensenumber");

	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
	
	Statement st=con.createStatement();

	ResultSet rs=st.executeQuery("select * from add_agent where username='"+uname+"' ");

	if(rs.next())
	{
		response.sendRedirect("agent_reg.jsp?id1="+aname);
		

	}
	else
	{
			PreparedStatement ps=con.prepareStatement("insert into add_agent values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,aname);
			ps.setString(2,uname);
			ps.setString(3,pword);
			ps.setString(4,repword);
			ps.setString(5,gender);
			ps.setString(6,num);
			ps.setString(7,area);
			ps.setString(8,add);
			ps.setString(9,veh);
			ps.setString(10,lic);
			
			ps.executeUpdate();

			response.sendRedirect("agent_reg.jsp?id2="+aname);

	
	}
	
		


%>

</body>
</html>