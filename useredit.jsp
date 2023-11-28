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
    body {
        height: 100%;
        width: 100%;
        background-color: #eef8fc;
        background-repeat: no-repeat;
        background-size: cover;
    }

</style>
<body>
    <table border='0' width='100%' height='280' align="center">
        <tr height='50'>
            <td width='11%' rowspan="2">
                <center>
                    <img src="컴퓨터.png" width="50%" height="110">
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
                <div>
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
    <table width="600px" name="frm" align="center">
        <tr>
            <td align="center">
                
                <table width="100%" class="table">
                    <tr align="center">
                        <td><b>회원정보 수정</b></td>
                    </tr>
                </table>
                    
                <table class="table2" width="100%">
                    <form action="memberUpdate.do" method="post" name="frm">
                        <tr>
                            <td width="35%">아이디</td>
                            <td width="65%">khm1754</td>
                        </tr>			
                        <tr>
                            <td>비밀번호</td>
                            <td><input type="password" name="co_pwd" size="40" required /></td>
                        </tr>			
                        <tr>
                            <td>비밀번호 확인</td>
                            <td><input type="password" name="co_repwd" size="40" required /></td>
                        </tr>
                    
            <!-- 		-----로그인정보-----		 -->
            
                        <tr>
                            <td width="35%">이름</td>
                            <td width="65%"><input type="text" name="co_name" size="40" required /></td>
                        </tr>
                        <tr>
                            <td>학부</td>
                            <td><input type="text" name="co_num" size="40" required /></td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td><input type="text" name="co_ceo" size="40"  required /></td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td><input type="text" name="co_add" size="40"/></td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td><input type="tel" name="co_tel" size="40"/></td>
                        </tr>	
                        <tr>
                            <td>계좌번호</td>
                            <td><input type="tel" name="co_tel" size="40"/></td>
                        </tr>	
                        
                        </table>				
                        <table>
                        <tr>
                            <td colspan="2" align="center">
                                <input class="button" type="submit" value="회원정보 수정" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input class="button" type="reset" value="다시쓰기" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
                            </td>
                        </tr>	
                        </table>
            <!-- 		-----회사정보-----		 -->
                        
                        <input type="hidden" value="${GETMEMBER.getCo_id()}" name="co_id">															
                    </form>
                </table>
                
            </td>
        </tr>
    </table>	
    
</body>
</html>