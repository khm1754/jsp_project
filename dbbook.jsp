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
    body {
        height: 100%;
        width: 100%;
        background-color: #eef8fc;
        background-repeat: no-repeat;
        background-size: cover;
    }
    .atable{
        margin: auto;
        width: 70%;
    }
    .center {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
a span {
    padding: 15px;
    transition: .5s;
    position: relative;
}
a span:nth-child(1) {
    color: #fff;
    background: #262626;
}
a span:nth-child(2) {
    color: #fff;
    background: #48e4ff;
}
a span:nth-child(1):before {
    content: attr(data-attr);
    position: absolute;
    top: 0;
    left: 0;
    background: #48e4ff;
    padding: 15px;
    transition: 0.5S;
    transform-origin: top;
    transform: rotateX(90deg) translateY(-50%);
}
a:hover span:nth-child(1):before {
    transform: rotateX(0deg) translateY(0%);
} 
a span:nth-child(2):before {
    content: attr(data-attr);
    position: absolute;
    top: 0;
    left: 0;
    background: #2231ff;
    padding: 15px;
    transition: 0.5S;
    transform-origin: bottom;
    transform: rotateX(90deg) translateY(50%);
}
a:hover span:nth-child(2):before {
    transform: rotateX(0deg) translateY(0%);
} 
a  span:nth-child(1):after {
  content: attr(data-attr);
  padding: 15px;
  position: absolute;
  top: 0;
  left: 0;
  background: #262626;
  transform-origin: bottom;
  transform: rotateX(0deg) translateY(0%);
  transition: 0.5s;
}
a:hover span:nth-child(1):after {
  transform: rotateX(90deg) translateY(50%);
}
a span:nth-child(2):after {
    content: attr(data-attr);
    position: absolute;
    top: 0;
    left: 0;
    background: #48e4ff;
    padding: 15px;
    transition: 0.5S;
    transform-origin: top;
    transform: rotateX(0deg) translateY(0%);
}
a:hover span:nth-child(2):after {
    transform: rotateX(90deg) translateY(-50%);
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
<body>
        <% 
	String Book_Code = request.getParameter("Book_Code");
    Connection con = null;
    PreparedStatement pstmt = null;
    String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql30";
    String sql = "select * from book_test2 where Book_Code = "+ Book_Code;
    int rowCount = 0;

    try{
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
        pstmt = con.prepareStatement(sql);
        ResultSet result = pstmt.executeQuery();
        %>
    <table border='0' width='100%' height='230' align="center">
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
    </table>
    <div>
        <ul>
            <li><a class="active" href="#">홈</a></li>
            <li><a href="medical.html">사회복지학부</a></li>
            <li><a href="#">스포츠과학부</a></li>
            <li><a href="#">사범학부</a></li>
            <li><a href="#">경찰학부</a></li>
            <li><a href="#">첨단IT학부</a></li>
            <li><a href="#">보건학부</a></li>
            <li><a href="#">디자인학부</a></li>
          </ul>
    </div>
    <center>
        <%
        while (result.next()) {
        %>
        <form method="post" action="buyinsert.jsp?Book_Code=<%= result.getString("Book_Code") %>">
    <table border="0" width="70%" height="600px">
        <tr height="120px">
            <center>
            <td rowspan="3" colspan="2" align="center">
                <img src="../contents/<%=result.getString("Book_Image")%>" width=350 height=450>
            </td>
            <td colspan="3" rowspan="3">
                <b>도서명</b> : <%= result.getString("Book_Name") %><br>
                <b>저자</b> : <%= result.getString("Author") %> / 출판사 : <%= result.getString("Publish") %><br>
                <b>출판일</b> / 2012년 08월 29일<br>
                <b>수업명</b> : <%= result.getString("Class_Name") %><br><br>
                <b>책 소개</b> : <%= result.getString("Book_Info") %> 
            </td>
            <td colspan="2"align="center">
				  <input type="number" name="pop" value="0" style="text-align:center;" size="7" onKeyup="onlyNumber(this)" />
                    <input type="button" value="+" onclick="javascript:this.form.pop.value++;">
                    <input type="button" value="-" onclick="javascript:this.form.pop.value--;">
                    <input type="hidden" name="Book_Code" value="<%= result.getInt("Book_Code") %>" >

            </td>
        </tr>
        
        </center>
        <tr height="120px">
            <td colspan="2" align="center">
                <a href="buyinsert.jsp"><input type = "submit" value="구매"></a>
            </td>
        </tr>
        <tr height="120px">
            <td colspan="2"align="center">
                <a href="user.html"><span data-attr="장바구니">장바구니</span><span data-attr="담기">담기</span></a>
            </td>
        </tr>
        <tr height="120px">
            <td colspan="2"align="center"><b>가격 27,000원</b></td>
            <td></td>
            <td</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    </form>
</center>
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