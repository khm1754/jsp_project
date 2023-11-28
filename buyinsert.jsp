<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원가입</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body class="text-center">
<%
    Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("insert into buy(ID, book_code, num, datetime) "); 
    SQL.append("values (?, ?, ?, now() )");

    try {
		String encoding    = "utf-8";
		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, dbID, dbPW);

        pstmt = con.prepareStatement(SQL.toString());
        int ID = (Integer)session.getAttribute("ID");
        pstmt.setInt(1, (ID));
        pstmt.setString(2, request.getParameter("Book_Code"));
        int pop = Integer.parseInt(request.getParameter("pop"));
        pstmt.setInt(3, pop);

        int rowCount = pstmt.executeUpdate();        
        if (rowCount == 1){
            out.println("구매가 완료 되었습니다.");
        } 
        else out.println("레코드 삽입에 문제가 있습니다.");
        stmt = con.createStatement();
    }
    catch (Exception e) {
    	out.println("데이터베이스 조회에 문제가 있습니다.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if (pstmt != null) pstmt.close();
        if (con != null) con.close();
    }


	out.println("<meta http-equiv='Refresh' content='1;URL=user1.jsp'>");
%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
</body>
</html>
