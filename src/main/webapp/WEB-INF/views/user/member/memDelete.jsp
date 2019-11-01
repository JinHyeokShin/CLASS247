<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>CLASS 247 - 당신을 무엇을 팔 수 있습니까?</title>
    
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>

	.genric-btn{
	padding: 9 9 10 9;
	}
	.genderForm{
		align : left;
	}
	  .generic-blockquote { font-size: 16px; }
	  
	    .jb-default-2 { font-size: 20px; }
 .section-top-border{
	   width:90%;
	    }
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	
	 
	    <section class="contact-section section_padding">
    <div class="container">
	  	<br>
      		<h1>탈퇴하기</h1>
      		<br>
      		<hr>
      		<br>
        <form action="mDelete.do" method="post">
        	
      		<div class="section-top-border">
				<h3 class="mb-30">
				<img src="resources/user/img/check-symbol.png"> ${ loginUser.memName }님 아래 내용을 꼭 확인해주세요!
				</h3>
				<div class="row">
					<div class="col-lg-12">
						<blockquote class="generic-blockquote">
							회원정보 및 계좌 내역 삭제
회원탈퇴 즉시 회원정보는 모두 삭제되며, 재가입시에도 복원되지 않습니다.	<br>

- 삭제되는 정보 : 구매하신 클래스 수강 내역, 개인정보, 계좌내역(쿠폰, 찜하기 등)	<br>

  ※연결된 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.	<br>

      단, 게시판형 서비스에 등록한 게시물, 클래스 리뷰는 삭제되지 않고 유지됩니다.	<br>

- 회원탈퇴 시 튜터 계정 및 사용자 회원 자격이 자동으로 상실됩니다.(주문/정산 중에는 탈퇴불가)	<br>

- 회원탈퇴 시 회원으로 서비스 이용이 불가합니다.	<br>

- 회원탈퇴 시 구매하신 클래스도 모두 삭제됩니다. 회원탈퇴 후 타 ID로 사용 권한을 양도하실 수 없습니다.<br>
						</blockquote>
					</div>
				</div>
			</div>
			
			<div class="section-top-border">
				<h3 class="mb-30">
				<img src="resources/user/img/check-symbol.png"> ${ loginUser.memName }님 어떤점이 불편하셨나요?	
				</h3>
				<div class="row">
					<div class="col-lg-12" >
						<blockquote class="generic-blockquote" >
							그 동안 Class247를 이용해주셔서 감사합니다.<br>

고객님의 의견을 남겨주시면 더 좋은 모습으로 찾아 뵙기 위해 노력하겠습니다.<hr>
<input type="hidden" name="memId" value="${ loginUser.memId }">
      				
      				<h5 style="display:inline-block"><input type="radio" name="why" value="상품정보부족" required /> 상품정보부족 &nbsp;&nbsp;</h5>
      				
      				
      				<h5 style="display:inline-block"><input type="radio" name="why" value="상품가격불만"  /> 상품가격불만 &nbsp;&nbsp;</h5>
      				
      				<h5 style="display:inline-block"><input type="radio" name="why" value="사이트불편" /> 사이트불편&nbsp;&nbsp;</h5>
      				
      				<h5 style="display:inline-block"><input type="radio" name="why" value="회원혜택부족" /> 회원혜택부족&nbsp;&nbsp;</h5>
      				
      				<h5 style="display:inline-block"><input type="radio" name="why" value="Class247이용안함" /> Class247이용안함&nbsp;&nbsp;</h5>
      		
						</blockquote>
					</div>
				</div>
			</div>
				<div class="section-top-border">
				<h3 class="mb-30">비밀번호</h3>
				<h3 class="mb-30">
			<input type="password" name="memPwd" style="border-radius: 5px;" required>&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="genric-btn primary-border radius" name="log-btn" type="submit" style="font-size: 15">탈퇴하기</button>
				</h3>
			</div>
            </form>
            </div>
            </section>
           
    	
    
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>