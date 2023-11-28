<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
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
    StringBuffer SQL = new StringBuffer("insert into user_info(ID, User_Password, Dept, UserName, Adress, Phone, Mail, Account) "); 
    SQL.append("values (?, ?, ?, ?, ?, ?, ?, ?)");

    try {
		String encoding    = "UTF-8";
		String UserName    = request.getParameter("UserName");

		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, dbID, dbPW);

        pstmt = con.prepareStatement(SQL.toString());
        //삽입할 레코드 데이터 입력
		int id = Integer.parseInt(request.getParameter("ID"));
		pstmt.setInt(1, id);
        pstmt.setString(2, request.getParameter("User_Password"));
        pstmt.setString(3, request.getParameter("Dept"));
        pstmt.setString(4, request.getParameter("UserName"));
		pstmt.setString(5, request.getParameter("Adress"));
		pstmt.setString(6, request.getParameter("Phone"));
		pstmt.setString(7, request.getParameter("Mail"));
		pstmt.setString(8, request.getParameter("Account"));
	
		//out.println(pstmt.toString());
        int rowCount = pstmt.executeUpdate();        
        if (rowCount == 1) out.println("회원가입이 완료 되었습니다.");
        else out.println("레코드 삽입에 문제가 있습니다.");
        
        //다시 조회
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
	out.println("<meta http-equiv='Refresh' content='1;URL=index.jsp'>");
%>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
</body>
</html>
