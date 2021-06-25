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
String dname=request.getParameter("dn");
String uname=request.getParameter("un");
String qual=request.getParameter("qual");
String quan=request.getParameter("quan");
String desc=request.getParameter("desc");

String num=request.getParameter("num");
String num1=request.getParameter("num1");
	
	String add=request.getParameter("add");
	String area=request.getParameter("area");
	
/*	out.println(num1);
if(request.getParameter("num1")== "")
{
out.println("null");	
}
else
{
	out.println(num1);	
}
*/
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
	
	Statement st=con.createStatement();

	ResultSet rs=st.executeQuery("select * from food_details where  food_quantity='"+quan+"' and food_decription='"+desc+"' and donar_mobile='"+num+"' and address='"+add+"' and area='"+area+"' ");
	if(rs.next())
	{
		
		response.sendRedirect("donar_home.jsp?id3="+dname);

	}
	else
	{
		if(request.getParameter("num1")== "")
		{
			PreparedStatement ps=con.prepareStatement("insert into food_details values(?,?,?,?,?,?,?,?,0,now(),'PENDING...','pending',0,'0')");
			ps.setString(1,dname);
			ps.setString(2,uname);
			ps.setString(3,qual);
			ps.setString(4,quan);
			ps.setString(5,desc);
		
			ps.setString(6,add);
			ps.setString(7,area);
			ps.setString(8,num);
		
			int i=ps.executeUpdate();	
			if(i==1)
			{
				response.sendRedirect("donar_home.jsp?id2="+dname);
			}
			else
			{
				response.sendRedirect("donar_home.jsp?id1="+dname);
			}
		}
		else
		{
			PreparedStatement ps=con.prepareStatement("insert into food_details values(?,?,?,?,?,?,?,?,?,now(),'PENDING...','pending',0,'0')");
			ps.setString(1,dname);
			ps.setString(2,uname);
			ps.setString(3,qual);
			ps.setString(4,quan);
			ps.setString(5,desc);
		
			ps.setString(6,add);
			ps.setString(7,area);
			ps.setString(8,num);
			ps.setString(9,num1);
		
			int i=ps.executeUpdate();	
			if(i==1)
			{
				response.sendRedirect("donar_home.jsp?id2="+dname);
			}
			else
			{
				response.sendRedirect("donar_home.jsp?id1="+dname);
			}
						
		}
	}
	
%>
</body>
</html>