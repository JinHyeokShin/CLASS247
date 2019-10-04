<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="images/icon/clogo.png" alt="CoolAdmin">
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="" method="post">
                                <div class="form-group">
                                    <label>회원이름</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="이름">
                                </div>
                                <div class="form-group">
                                    <label>이메일</label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="이메일@example.com">
                                </div>
                                <div class="form-group">
                                    <label>휴대폰 번호</label>
                                    <input class="au-input au-input--full" type="text" name="phone" placeholder="-를 제외한 휴대폰 번호를 입력해주세요">
                                    <button class="au-btn au-btn--block au-btn--green m-b-20">인증하기</button>
                                </div>
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="비밀번호">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호 확인</label>
                                    <input class="au-input au-input--full" type="password2" name="password2" placeholder="비밀번호 확인">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="aggree">위의 약관에 동의하여주십시요
                                    </label>
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">동의하십니까</button>
                                <div class="social-login-content">
                                    <div class="social-button">
                                        <button class="au-btn au-btn--block au-btn--blue m-b-20">카카오 계정으로 가입하기</button>
                                        <button class="au-btn au-btn--block au-btn--blue2">구글 계정으로 가입하기</button>
                                    </div>
                                </div>
                            </form>
                            <div class="register-link">
                                <p>
                                 	   이미회원이십니까?
                                    <br><br>
                                    <a href="#">로그인</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>