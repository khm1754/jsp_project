<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />

    <style>
        body {
            
    width: 100%;
    height: 2000px;
    display: block;
    padding-top: 50px;
    background-image: linear-gradient(to top,#4f5e8e,white);

        }

        h1 {
            color: #000000;
            padding: 50px 0;
            font-weight: 400;
            text-align: center;
        }

        .search {
            text-align: center;
            input [type="text"]

        {
            display: flex;
        }

        }

        p {
            color: #000000;
            margin: 0 0 20px;
            line-height: 1.5;
            border: black solid 1px;
            padding: 10px 20px;
            background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );
        }

        .main {
            min-width: 320px;
            max-width: 900px;
            padding: 50px;
            margin: 0 auto;
            background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );
        }

        section {
            display: none;
            padding: 20px 0 0;
            border-top: 1px solid #ddd;
        }

        /*라디오버튼 숨김*/
        input[type="radio"] {
            display: none;
        }

        label {
            display: inline-block;
            margin: 0 0 -1px;
            padding: 15px 25px;
            font-weight: 600;
            text-align: center;
            color: #bbb;
            border: 1px solid transparent;
        }

            label:hover {
                color: #2e9cdf;
                cursor: pointer;
            }

        /*input 클릭시, label 스타일*/
        input:checked + label {
            color: #555;
            border: 1px solid #ddd;
            border-top: 2px solid #0da44e;
            border-bottom: 1px solid #ffffff;
        }

        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2,
        #tab3:checked ~ #content3,
        #tab4:checked ~ #content4 {
            display: block;
        }

        .grid {
            display: grid;
            grid-template-columns: auto auto auto auto auto;
            padding: 0px;
        }

        a {
            text-decoration-line: none;
            color: black;
        }

        .img2 {
            margin: 30px 50px 0px 50px;
            text-align: center;
        }
    </style>


    <title>test</title>

</head>






<body>
    <div>
        <a href="index.jsp">
            <button style="float: right; margin-left: 30px; margin-right: 3%;">로그아웃</button>
        </a>
        <a href="book_buy.jsp">
            <button style="float: right; margin-left: 30px;">발주 내역</button>
        </a>
        <a href="atcopy.html">
            <button style="float: right; margin-left: 30px;">회원관리</button>
        </a>
        <a href="atcopy.html">
            <button style="float: right; margin-left: 30px;">판매내역</button>
        </a>
        <a href="atcopy.html">
            <button style="float: right">책 정보 입력</button>
        </a>
    </div>

    <h1>백석대학교 서적구매</h1>

    <div class="search">
        <input type="text" style="width: 795px; height: 30px; font-size: 30px;">&nbsp;&nbsp;
        <button style="width: 80px; height: 40px; font-size: 20px;">검색</button>
    </div>

    <div class="main">
        <input id="tab1" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
        <label for="tab1">학과별 서적</label>

        <input id="tab2" type="radio" name="tabs">
        <label for="tab2">이달의 베스트셀러</label>

        <input id="tab3" type="radio" name="tabs">
        <label for="tab3">이용안내</label>

        <input id="tab4" type="radio" name="tabs">
        <label for="tab4">오시는 길</label>




        <section id="content1">
            <div class="img2">
                <div class="grid">
                    <a href="at.html">
                        <img src="main_img/컴공.png" style="width: 100px; height: 100px;" alt="컴퓨터공학부"><br />컴퓨터공학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/첨단.png" style="width: 100px; height: 100px;" alt="첨단IT학부"><br />첨단IT학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/경상.png" style="width: 100px; height: 100px;" alt="경상학부"><br />경상학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/경찰.png" style="width: 100px; height: 100px;" alt="경찰학부"><br />경찰학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/관광.png" style="width: 100px; height: 100px;" alt="관광학부"><br />관광학부
                    </a>
                </div>
                <br />
                <div class="grid">
                    <a href="paper.html">
                        <img src="main_img/간호.png" style="width: 100px; height: 100px;" alt="간호학부"><br />간호학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/보건.png" style="width: 100px; height: 100px;" alt="보건학부"><br />보건학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/사범.png" style="width: 100px; height: 100px;" alt="사범학부"><br />사범학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/사회복지.png" style="width: 100px; height: 100px;" alt="사회복지학부"><br />사회복지학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/어문.png" style="width: 100px; height: 100px;" alt="어문학부"><br />어문학부
                    </a>
                    <br />
                </div>
                <div class="grid">
                    <a href="paper.html">
                        <img src="main_img/문화예술.png" style="width: 100px; height: 100px;" alt="문화예술학부"><br />문화예술학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/디자인.png" style="width: 100px; height: 100px;" alt="디자인영상학부"><br />디자인영상학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/혁신융합.png" style="width: 100px; height: 100px;" alt="혁신융합학부"><br />혁신융합학부
                    </a>
                    <a href="paper.html">
                        <img src="main_img/기독교.png" style="width: 100px; height: 100px;" alt="기독교학부"><br />기독교학부
                    </a>
                    <a>
                        <img src="main_img/공백.png" style="width: 100px; height: 100px;"><br />
                    </a>
                </div>
        </section>




        <section id="content2">
            <table align="center">
                <tr>
                    <p>
                        컴퓨터공학부 베스트셀러<br>
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px;" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                    </p>
                </tr>
                <tr>
                    <p>
                        첨단IT학부 베스트셀러<br>
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px;" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                    </p>
                </tr>
                <tr>
                    <p>
                        경상학부 베스트셀러<br>
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px;" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                        <img src="img/책.jpg" style="width: 80px; height: 150px; padding-right: 50px" alt="컴퓨터공학부책">
                    </p>
                </tr>
            </table> 
        </section>

        <section id="content3">
            <p><a href="./QApage/view.html">서적 검색 방법</a></p>
            <p><a href="./QApage/view2.html">서적 구매 후 수령방법</a></p>
            <p><a href="./QApage/view3.html">이용안내</a></p>
            <p><a href="./QApage/view4.html">이용안내</a></p>
            <p><a href="./QApage/view5.html">이용안내</a></p>
            <span style="font-size: 0.8rem;"><a href="./QApage/list.html">더보기</a></span>
        </section>

        <section id="content4">
            <p>
            <img src="img/뷰리서점.jpg" style="width: 150px; height: 70px;"><br>
            뷰리서점 - 교양서적<br>
            백석대학교 진리관 112호(진리관 중앙 1층위치)<br>
            운영시간 AM 09:00 ~ PM 17:30
            <br>
            <br>
            소셜백향 진리관서점 - 전공서적<br>
            백석대학교 진리관 107호<br>
            <br>
            <img src="img/진리관.jpg" style="width: 400px; height: 400px;">
            </p>
        </section>
    </div>

</body>

</html>
