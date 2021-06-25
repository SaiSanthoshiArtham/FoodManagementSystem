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
		String area=request.getParameter("area");
		String desc=request.getParameter("desc");
		String dt=request.getParameter("dt");
	//	System.out.println(area);

		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
				
		
		Statement st=con.createStatement();
		
		
		ResultSet rs=st.executeQuery("select * from add_agent where work_area='"+area+"'");
		
		if(rs.next())
		{
			
				String aname=rs.getString(2);
				String mob=rs.getString(5);
				int i=st.executeUpdate("update food_details set status='SENT TO AGENT',agent_name='pending....',Agent_mobile=0 where donar_name='"+dname+"' and food_decription='"+desc+"' and  area='"+area+"' and date_of_request='"+dt+"' ");
				if(i==1)	
				{
					response.sendRedirect("view_donar_request.jsp");
		
				}
				else
				{
					out.println("Oops ! Try Again..");
				}
		}
		else
		{
			out.println("Agent NOT AVAILABLE AT THIS AREA");
		}
%>
</body>
</html>