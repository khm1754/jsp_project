<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html dir="ltr" lang="ko">
  <head>
    <meta charset="utf-8">
    <title>서점 조회 및 관리 시스템 _메인</title>
    <style>
      body {
        background: #ffffff;
        margin: 0;
      }
      /* #backgroundImage {
        border: none;
        height: 100%;
        pointer-events: none;
        position: fixed;
        top: 0;
        visibility: hidden;
        width: 100%;
      }

      [show-background-image] #backgroundImage {
        visibility: visible;
      } */
    </style>
  </head>
  <body>
    <!-- <div style="width:400px; height:80px; border:3px solid black; position: absolute; right:50px; top: 30px;"> -->
    <div style="text-align: center; position: absolute; right:20px; top: 10px; ">   <!--  border:3px solid black; -->
      <a href="https://www.aladin.co.kr/home/welcome.aspx" target="_blank"><img src="img\main.html\알라딘.png" style="width:70px; height:70px;"></a>
      <a href="https://www.kyobobook.co.kr/?NaPm=ct%3Dl9utwiu2%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3D911f54a908f4a01609cb63cdc0aa7f1b90bc4c51" target="_blank"><img src="img\main.html\교보문고.png" style="width:80px; height:80px;"></a>
      <a href="http://www.ypbooks.co.kr/kor_index.yp" target="_blank"><img src="img\main.html\영풍문고.png" style="width:80px; height:80px;"></a>
    </div>
   
    <br><br><br><br><br>
    <center><img src="img\main.html\백석대_로고2.jpg" ></center><br>

    <center><h1>백석 서점 조회 및 관리 시스템</h1></center>

     <div style="width:800px; height:300px; position: relative; left:550px; top:20px;">  <!--border:3px solid black; -->
      <center><a href="administrator.html"><img src="img\main.html\오겜_프론트맨.jpg" style="width:200px; height:200px;"></a>
      <a href="user.html"><img src="img\main.html\오겜_참가자.jpeg" style="width:200px; height:200px;"></a></center>
      <br><center>관리자&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;사용자</center>
      <!-- &nbsp; -->
    </div>
  
    <ntp-app></ntp-app>
    </body>
</html>
