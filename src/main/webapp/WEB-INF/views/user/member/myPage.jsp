<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CLASS 247 - 당신을 무엇을 팔 수 있습니까?</title>
    
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>

	.login{
		margin: 9% auto;
		border: 1px solid #954CBC;
		padding: 10px;
		width: 60%;
		height:90%;  
		border-radius: 10px;
	}
	table td{
		text-align: center;
		border-radius: 10px;
		font-size: 100%;
		margin-left:auto;
        margin-right:auto;
        margin-top:40px;
        margin-bottom:10%;
		
	}
	td a, td input, td button{
		width : 80%;
		height:90%; 
		border-radius: 10px;
	
	}	

	
	
	
</style>

</head>

<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>         	
            <section class="feature_part single_feature_padding">
            <br>
			<h1 align="center">&nbsp;${ loginUser.memName }님의 마이페이지</h1>
			
			<br>
			<br><br>
        <div class="container" align="center">
            <div class="row" >
            <div class="col-sm-6 col-xl-2"></div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <a href="memUpdate.do">
                            <img src="resources/user/img/notepad.png"></a>
                            <br><br> <br><br> 
                            <h4>회원 정보 수정</h4>
                            <br><br>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <a href="memDelete.do">
                            <img src="resources/user/img/exit.png"></a>
                            <br><br> <br><br> 
                            <h4>회원 정보 탈퇴</h4>
                            <br><br>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part single_feature_part_2">
                            <a href="memClass.do">
                            <img src="resources/user/img/presentation.png"></a>
                             <br><br> <br><br> 
                            <h4>나의 수강 내역</h4>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
   <!--  </section>
      <section class="feature_part single_feature_padding">  -->
        <div class="container" align="center">
            <div class="row" >
            <div class="col-sm-6 col-xl-2"></div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <a href="memCoupon.do">
                            <img src="resources/user/img/voucher.png"></a>
                            <br><br> <br><br> 
                            <h4>나의 쿠폰 목록</h4>
                            <br><br>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <a href="memZzim.do">
                            <img src="resources/user/img/heart.png"></a>
                            <br><br> <br><br> 
                            <h4>나의 찜하기 목록</h4>
                            <br><br>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="single_feature">
                        <div class="single_feature_part single_feature_part_2">
                           <a href="memDelivery.do">
                           <img src="resources/user/img/truck.png"></a>
                             <br><br> <br><br> 
                            <h4>주문 및 배송 목록</h4>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br><br><br><br><br>
    	
    	
    
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>
