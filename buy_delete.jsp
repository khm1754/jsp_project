<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>게시글 삭제</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>

<body class="text-center">
<%
    Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("delete from buy "); 
    SQL.append("where buy_code = ?");
    
	String book_code = request.getParameter("book_code");

    try {
		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, dbID, dbPW);

        pstmt = con.prepareStatement(SQL.toString());
        pstmt.setString(1, book_code);

        int rowCount = pstmt.executeUpdate();        
        
        stmt = con.createStatement();
    }
    catch (Exception e) {
    	out.println("업체 정보 삭제에 문제가 있습니다.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if (pstmt != null) pstmt.close();
        if (con != null) con.close();
    }
	out.println("<meta http-equiv='Refresh' content='1;URL=atcopy.jsp'>");
%>

</body>
</html>