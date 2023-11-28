<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>데이터베이스 예제 : 테이블 Book_test2으로 조회</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>테이블 Book_test2 조회하는 프로그램 </h2>
<hr><center>
<h2>학생정보</h2>

<%
    
	Connection con = null;
    PreparedStatement pstmt = null;
    String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql30";
	String sql = "select * from Book_test2";
    
    int rowCount = 0;

    try {
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
        pstmt = con.prepareStatement(sql);
        ResultSet result = pstmt.executeQuery();
%>
  <table border=1 cellpadding=1>
  <tr>
	<th width=80>책 이름</th>
	<th width=50>수업명</th>
    <th width=80>출판사</th>
    <th width=80>저자</th>
    <th width=80>가격</th>
    <th width=80>학부</th>
    <th width=80>책정보</th>
    <th width=80>책표지</th>
  </tr>
<%
  while (result.next()) {
%>
  <tr>   
    <td align=center><%= result.getString("Book_Name") %></td>
    <td align=center><%= result.getString("Class_Name") %></td>
	<td align=center><%= result.getString("Publish") %></td>
	<td align=center><%= result.getString("Author") %></td>
    <td align=center><%= result.getString("Price") %></td>
    <td align=center><%= result.getString("Dept") %></td>
    <td align=center><%= result.getString("Book_Info") %></td>
    <td align=center><%= result.getString("Book_Image") %></td>
  </tr>
<%
	rowCount++;
    }
    result.close();        
    }
    catch(Exception e) {
    	out.println("MySql 데이터베이스 univdb의 Book_test2 조회에 문제가 있습니다. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
%>
</table>
</center>

<p><hr><font color=blue>
<%
	if (rowCount == 0) 
		out.println("조회된 결과가 없습니다.");
	else 
		out.println("조회된 결과가 " + rowCount + "건 입니다.");    
%>
</font>
<br>
<a href="input.html">신규등록</a>

</body>
</html>