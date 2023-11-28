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
    .table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  margin: auto;
  padding:5px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
 
.ath {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

.ath:first-child {
  border-top-left-radius:3px;
}
 
.ath:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
.atr {
  border-top: 1px solid #C1C3D1;
  border-bottom: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
.atr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
.atr:first-child {
  border-top:none;
}

.atr:last-child {
  border-bottom:none;
}
 
.atr:nth-child(odd) td {
  background:#EBEBEB;
}
 
.atr:nth-child(odd):hover td {
  background:#4E5066;
}

.atr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
.atr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
.atd {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

.atd:last-child {
  border-right: 0px;
}
.ath.text-left {
  text-align: left;
}

.ath.text-center {
  text-align: center;
}

.ath.text-right {
  text-align: right;
}

.atd.text-left {
  text-align: left;
}

.atd.text-center {
  text-align: center;
}

.atd.text-right {
  text-align: right;
}
</style>

<body>

    <table border='0' width='100%' height='280' align="center">
        <tr height='50'>
            <td width='11%' rowspan="2">
                <center>
                    주문내역
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
<% 
    Connection con = null;
    PreparedStatement pstmt = null;
    String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql30";
    String sql = "select * from buy inner join book_test2 on buy.book_code = book_test2.book_code inner join user_info on buy.ID = user_info.ID where buy.ID = "+ 20191152;
    int rowCount = 0;

    try{
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
        pstmt = con.prepareStatement(sql);
        ResultSet result = pstmt.executeQuery();
        %>
                    <%
                while (result.next()) {
            %>
    <table class="table-fill" border="1px" width="70%" heigth="635" align="center" style="border-inline: none;">
        <center>
            <thead>
                <tr height='70' class="cen">
                    <th width='10%' class=".ath">
                        <h1>책표지</h1>
                    </th>
                    <th width='10%' class=".ath">
                        <h1>수업</h1>
                    </th>
                    <th width='10%' class=".ath">
                        <h1>서적이름</h1>
                    </th>
                    <th width='10%' class=".ath">
                        <h1>출판사</h1>
                    </th>
                    <th width='10%' class=".ath">
                        <h1>가격</h1>
                    </th>
                    <th width='10%' class=".ath">
                        <h1>주문수량</h1>
                    </th>
                    <th width='10%' class=".ath">
                        <h1>주문</h1>
                    </th>
                </tr>
            </thead>

            <tbody>
            <form method="post" action="buy_delete.jsp?buy_code=<%= result.getString("buy_code") %>">
                <tr height='190' class="cen | atr">
                    <td align=center class=".atd"><img src="../contents/<%=result.getString("Book_image") %>" width="50%"></td>
				  <td align=center class=".atd"><h2><%= result.getString("Class_Name") %></h2></td>
				  <td align=center class=".atd"><h2><%= result.getString("Book_Name") %></h2></td>
				  <td align=center class=".atd"><h2><%= result.getString("Publish") %></h2></td>
				  <td align=center class=".atd"><h2><%= result.getString("Price") %></h2></td>
				  <td align=center class=".atd"><h2><%= result.getString("num") %></h2></td>
                  <input type="hidden" name="buy_code" value="<%= result.getString("buy_code") %>">
				  <td align=center class=".atd"><input type="submit" value="구매취소"> </td>                  
                </tr>
                </from>
            </tbody>
        </center>
    </table>
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