<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="config.jsp" %>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원가입</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>

<%
    String ID = request.getParameter("ID");
    Connection con = null;
    PreparedStatement pstmt = null;
    StringBuffer sql = new StringBuffer(); 
    sql.append(" SELECT count(ID) as cnt ");
    sql.append(" FROM user_info ");
    sql.append(" WHERE ID = ? ");

    int cnt = 0;

    try {
	    Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, dbID, dbPW);

        pstmt = con.prepareStatement(sql.toString());
        pstmt.setString(1, ID);
     
        ResultSet result = pstmt.executeQuery();
        if (result.next()) {
            cnt = result.getInt("cnt");
 %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="euc-kr" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ID Check Result</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>

<body class="bg-white">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container-xl px-4">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header justify-content-center text-center text-black fw-600">아이디 중복 확인 결과</div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        입력 ID : <span class="fw-700 text-lg" name="ID"><% out.println(ID);%></span>
                                    </div>
                                    <%
                                        if (cnt == 0) {
                                        out.println("사용 가능한 아이디입니다.");
                                        out.println("<span><a href='javascript:apply(\"" + ID + "\")'><button class='btn btn-primary' style='float: right'>적용</button></a></span>");
                                    %> 
                                    <%
                                        } else {
                                        out.println("<p style='color: red'>해당 아이디는 사용하실 수 없습니다.</p>");
                                        }
                                    %>
                                </div>
                                <div class="card-footer text-center">
                                    <button class="btn btn-dark" onclick="window.close()">창 닫기</button>
                                    <span><button class="btn btn-dark" onclick="history.back()">다시 시도</button><span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>

    </div>

	<script>
    	function apply(id){
            opener.document.joinForm.ID.value = id;
            window.close();
        }
    </script>

    <%
        }
            result.close();
        }
            catch(Exception e) {
            out.println("[author] 테이블 조회에 문제가 있습니다. <hr>");
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