<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .search {
        position: relative;
        text-align: center;
        width: 100%;
        margin: 0 auto;
    }

    .ainput {
        width: 90%;
        border-radius: 20px;
        border: 1px solid rgb(3, 3, 3);
        margin: 10px 0;
        padding: 10px 12px;
    }

    .fa-search {
        position: absolute;
        left: 15px;
        top: 20px;
        margin: 0;
    }

    .fa-keyboard {
        position: absolute;
        right: 35px;
        top: 20px;
    }

    .fa-microphone {
        position: absolute;
        right: 15px;
        top: 20px;
        color: blue;
    }

    .search {
        color: #808080;
    }

    .cen {
        text-align: center;
    }

    .buttonsize {
        width: 7;
    }

    .centerbg {
        text-align: center;
        background-color: #a0daee;
    }

    .d {
        box-shadow: 5px 5px 5px 5px gray;
    }

    .atable {
        /* 둥글게 만들기 */
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
    }

    body {
        height: 100%;
        width: 100%;
        background-color: #eef8fc;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .c {
        border-right: none;

        border-left: none;

        border-top: none;

        border-bottom: none;
    }

    .product-title {
        text-align: center;
        display: table;
        border: 1px solid #cecece;
        width: 280px;
        height: 250px;
        float: left;
    }

    .product-img {
        max-width: 180px;
        max-height: 180px;
    }

    .product-img-div {
        display: table-cell;
        vertical-align: middle;
    }

    .shadow {
        width: 300px;
        height: 400px;
        margin: 10px auto;
        overflow: hidden;
    }

    .shadow img:hover {
        cursor: pointer;
        -webkit-transform: scale(0.9);
        /*  크롬 */
        -moz-transform: scale(0.9);
        /* FireFox */
        -o-transform: scale(0.9);
        /* Opera */
        transform: scale(0.9);
        transition: transform .35s;
        -o-transition: transform .35s;
        -moz-transition: transform .35s;
        -webkit-transition: transform .35s;
    }
    ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 16%;
  background-color: #ffffff;
  position: fixed;
  height: 296px;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #a0daee;
  color: white;
}

li a:hover:not(.active) {
  background-color: #a0daee;
  color: white;
}
</style>
<script>
    function fnCalCount(type, ths) {
        var $input = $(ths).parents("td").find("input[name='pop_out']");
        var tCount = Number($input.val());
        var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html());

        if (type == 'p') {
            if (tCount < tEqCount) $input.val(Number(tCount) + 1);

        } else {
            if (tCount > 0) $input.val(Number(tCount) - 1);
        }
    }
</script>

<body>
    <% 
    Connection con = null;
    PreparedStatement pstmt = null;
    String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql30";
    String sql = "select * from book_test2";
    int rowCount=0;

    try{
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
        pstmt = con.prepareStatement(sql);
        ResultSet result = pstmt.executeQuery();
    %>
    
    <table border='0' width='100%' height='280' align="center">
        <tr height='50'>
            <td width='11%' rowspan="2">
                <center>
                    <img src="com.png" width="50%" height="110">
                </center>
            </td>
            <td width='11%'></td>
            <td width='11%'></td>
            <td width='11%'></td>
            <td width='11%'>
                <center>
                    <img src="logo.jpg" width="80%" height="40">
                </center>
            </td>
            <td width='11%'></td>
            <td width="11%"></td>
            <td width="11%"></td>
            <td width="11%" class="cen">
                <button>로그아웃</button>
            </td>
        </tr>
        <tr height='70'>
            <td></td>
            <td colspan='5' rowspan="2">
                <center>
                    <font size="100%">
                        백석 서점 조회 및 관리 시스템
                    </font>
                </center>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr height='70'>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr height='40'>
            <td></td>
            <td></td>
            <td></td>
            <td colspan="3">
                <div class="search">
                    <i class="fas fa-search"></i>
                    <input type="text" class="ainput">
                    <img src="search.png" width="3%">
                    <i class="fas fa-keyboard"></i>
                    <i class="fas fa-microphone"></i>
                </div>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr height='50' border="1">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <div>
        <ul>
            <li><a class="active" href="#">홈</a></li>
            <li><a href="medical.html">사회복지학부</a></li>
            <li><a href="useredit.html">스포츠과학부</a></li>
            <li><a href="#">사범학부</a></li>
            <li><a href="#">경찰학부</a></li>
            <li><a href="#">첨단IT학부</a></li>
            <li><a href="#">보건학부</a></li>
            <li><a href="#">디자인학부</a></li>
          </ul>
    </div>
<%
  while (result.next()) {
%>
    <a href = "dbbook.jsp?Book_Code=<%= result.getString("Book_Code") %>">
    <center>
        <div class="product-title || shadow" style="margin-left: 15%;" width="70%">
        
            <div class="product-img-div">
                <img src="../contents/<%=result.getString("Book_Image")%>" width=200 height=300><br>
                책 제목 : <%= result.getString("Book_Name")%><br>수업명 : <%= result.getString("Class_Name")%><br>가격 : <%= result.getString("Price")%>
            </div>
            
        </div>
        </center>
    </a>
    </a>
    <%
	rowCount++;
    }
    result.close();        
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
%>
</body>

</html>