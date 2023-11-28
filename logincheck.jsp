<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
    Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("SELECT * FROM user_info WHERE ID = ? and User_Password = ?");

	int ID = 0;
	String User_Password = null;

	String driverName = "org.gjt.mm.mysql.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/mysql30";

	try {
		String encoding    = "EUC-KR";
		String username    = request.getParameter("username");

		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");

		pstmt = con.prepareStatement(SQL.toString());
		Int ID = Integer.parseInt(request.getParameter("ID"));
		pstmt.setInt(1, ID);
		String User_Password = request.getParameter("User_Password")
		pstmt.setString(2, User_Password);
		pstmt.setString(3, username);


		out.println(pstmt.toString());
		ResultSet result = pstmt.executeQuery();       

		if (result.next())
		{
			ID = result.getInt("ID");
			User_Password = result.getString("User_Password");
			username = result.getString("username");
			
			session.setAttribute("member", "ok");

			session.setAttribute("ID", ID);
			session.setAttribute("User_Password", User_Password);
			session.setAttribute("username", username);


%>
            <script>
				location.href="HtmlPage1.jsp";
			</script>
<%            			
		}
		else
		{
%>
			<script>
				alert("Login failed");
				location.href="index.jsp";
			</script>
<%
		}			
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
	}
	finally {
		if (pstmt != null) pstmt.close();
		if (con != null) con.close();
	}
%> 