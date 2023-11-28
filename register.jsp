<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원가입</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
</head>

<body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">

                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header justify-content-center"><h3 class="fw-600 my-3">회원가입</h3></div>
                                    <div class="card-body">
                                        <form method="post" action="user_insert.jsp" onsubmit="return sendit();" name="joinForm">
                                            <div class="mb-3">
                                                <label class="small mb-1" for="ID">아이디(학번)</label>
                                                <input class="form-control" id="ID" name="ID" type="text" placeholder="아이디를 입력하세요." onclick="idCheck()" readonly/>
                                            </div>
                                            <div class="row gx-3">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="User_Password">비밀번호</label>
                                                        <input class="form-control" id="User_Password" name="User_Password" type="password" placeholder="비밀번호를 입력하세요." />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="small mb-1" for="User_Password">비밀번호 확인</label>
                                                        <input class="form-control" id="User_Password" name="User_Password" type="password" placeholder="비밀번호를 확인하세요." />
                                                    </div>
                                                </div>
                                            </div>
											<div class="mb-3">
                                                <label class="small mb-1" for="Dept">학부</label>
                                                <select name = "Dept">
												   <option value = "컴퓨터공학부">컴퓨터공학부</option>
												   <option value = "사범학부">사범학부</option>
												   <option value = "기독교학부">기독교학부</option>
												   <option value = "경찰학부">경찰학부</option>
												   <option value = "경상학부">경상학부</option>
												   <option value = "관광학부">관광학부</option>
												   <option value = "첨단IT학부">첨단IT학부</option>
												   <option value = "간호학부">간호학부</option>
												   <option value = "보건학부">보건학부</option>
												   <option value = "사회복지학부">사회복지학부</option>
												   <option value = "어문학부">어문학부</option>
												   <option value = "문화예술학부">문화예술학부</option>
												   <option value = "디자인영상학부">디자인영상학부</option>
												   <option value = "혁신융합학부">혁신융합학부</option>
												</select>
                                            </div>
											
                                            <div class="mb-3">
                                                <label class="small mb-1" for="UserName">이름</label>
                                                <input class="form-control" id="UserName" name="UserName" type="text" placeholder="이름을 입력하세요." />
                                            </div>
											<div class="mb-3">
                                                <label class="small mb-1" for="Adress">주소</label>
                                                <input class="form-control" id="Adress" name="Adress" type="text" placeholder="주소를 입력하세요." />
                                            </div>
											<div class="mb-3">
                                                <label class="small mb-1" for="Phone">전화번호</label>
                                                <input class="form-control" id="Phone" name="Phone" type="text" placeholder="전화번호를 입력하세요." />
                                            </div>
                                            <div class="mb-3">
                                                <label class="small mb-1" for="Mail">이메일</label>
                                                <input class="form-control" id="Mail" name="Mail" type="email" placeholder="이메일을 입력하세요." />
                                            </div>
											<div class="mb-3">
                                                <label class="small mb-1" for="Account">계좌</label>
                                                <input class="form-control" id="Account" name="Account" type="text" placeholder="계좌를 입력하세요." />
                                            </div>
                                            <button type="submit" class="btn btn-primary btn-block" style="float: right;">완료</button>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="index.jsp">로그인</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/register_check.js"></script>
        <script>
            function idCheck() {
                window.open("idCheckForm.jsp", "idwin", "width=600, height=500");
            }
        </script>
    </body>
</html>