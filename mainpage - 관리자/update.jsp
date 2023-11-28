<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>데이터베이스 예제</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h2>테이블 student에 데이터를 삽입하는 프로그램 </h2>
<hr><center>
<h2>학생정보 등록</h2>

<%
    //out.println(request.getParameter("Book_Code"));
    //out.println(request.getParameter("pop_out"));

    Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("update Book_test2 "); 
    SQL.append("set Book_num=? where Book_Code=?");
    
	String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql30";

    try {
		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
        //pstmt = con.prepareStatement(sql);
        //pstmt.executeUpdate();
        
        pstmt = con.prepareStatement(SQL.toString());
        //삽입할 학생 레코드 데이터 입력
        int bnum = Integer.parseInt(request.getParameter("Book_num"));
        int pnum = Integer.parseInt(request.getParameter("pop_out"));
        int sumnum = bnum + pnum;
		pstmt.setInt(1, sumnum);
		int Book_Code = Integer.parseInt(request.getParameter("Book_Code"));
		pstmt.setInt(2, Book_Code);

        int rowCount = pstmt.executeUpdate();        
        if (rowCount == 1) out.println("<hr>학생 레코드 하나가 성공적으로 삽입 되었습니다.<hr>");
        else out.println("학생 레코드 삽입에 문제가 있습니다.");
        
        //다시 학생 조회
        stmt = con.createStatement();

    }
    catch(Exception e) {
    	out.println("MySql 데이터베이스 univdb의 student 조회에 문제가 있습니다. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
	out.println("<meta http-equiv='Refresh' content='1;URL=computer.jsp'>");
%>

<p><hr>

</body>
</html>