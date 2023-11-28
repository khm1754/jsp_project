<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.oreilly.servlet.MultipartRequest" %> //cos
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터베이스 예제</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<h2>테이블 student에 데이터를 삽입하는 프로그램 </h2>
<hr><center>
<h2>학생정보 등록</h2>

<%
    Connection con = null;
    PreparedStatement pstmt = null;
   Statement stmt = null;
    StringBuffer SQL = new StringBuffer("insert into Book_test2(Class_Name, Book_Name, Publish, Author, Price, Dept, Book_Info, Book_Num, Book_Image) "); 
    SQL.append("values (?, ?, ?, ?, ?, ?, ?, ?, ?)");

   String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql30";

    try {
      String encoding    = "UTF-8";
      int sizeLimit = 10 * 1024 * 1024; //파일 10메가로 제한
      String relativeDirectory = "contents";
      ServletContext context = getServletContext();
      String realDirectory = context.getRealPath(relativeDirectory);
      MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding, 
      new DefaultFileRenamePolicy()); //
	  String Class_Name = multi.getParameter("fClass_Name");
      String Book_Image = multi.getFilesystemName("Book_Image");


      Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
 //       pstmt = con.prepareStatement(sql);
 //       pstmt.executeUpdate();

        pstmt = con.prepareStatement(SQL.toString());
        //삽입할 학생 레코드 데이터 입력
        pstmt.setString(1, Class_Name);
        pstmt.setString(2, multi.getParameter("fBook_Name"));
        pstmt.setString(3, multi.getParameter("fPublish"));
        pstmt.setString(4, multi.getParameter("fAuthor"));
        pstmt.setString(5, multi.getParameter("fPrice"));
        pstmt.setString(6, multi.getParameter("fDept"));
        pstmt.setString(7, multi.getParameter("fBook_Info"));
        pstmt.setString(8, multi.getParameter("fBook_Num"));
		pstmt.setString(9, Book_Image);
        //pstmt.setString(9, multi.getFilesystemName("Book_Image"));

        int rowCount = pstmt.executeUpdate();        
        if (rowCount == 1) out.println("<hr>학생 [" + Class_Name+ "] 레코드 하나가 성공적으로 삽입 되었습니다.<hr>");
        else out.println("학생 레코드 삽입에 문제가 있습니다.");
        
        //다시 학생 조회
        //stmt = con.createStatement();
    }
    catch(Exception e) {
       out.println("MySql 데이터베이스 univdb의 Book 조회에 문제가 있습니다. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
   out.println("<meta http-equiv='Refresh' content='1;URL=Book_list.jsp'>");
%>

<p><hr>

</body>
</html>