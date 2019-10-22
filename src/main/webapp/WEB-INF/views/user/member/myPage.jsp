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
	
/*	.loginform{
		width:250px;
			
	}
	.login-in{
		width:250px;
		heigth:100px;
	}
	.login-group{
		width:250px;
		
	}
	
	label{
		float:left;
	}
	.genric-btn.primary-border:hover {
	    color: #fff;
	    background: #954CBC;
	    border: 1px solid transparent;
	    
	}
	.genric-btn{
		width:250px;
	    height:50px;
	} */
	
	
	
</style>

</head>

<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>

	
	 	
	  
	  		<div class="login" align="center">
	  		<br>
			<h1 align="center">&nbsp;${ loginUser.memName }님의 마이페이지</h1>
			<br>
			<h4 align="center">&nbsp;${ loginUser.memId }</h4>
			<hr>
        	
			<br>
            <table width="70%" height="80%">
            
            <tr>
            	<td><a href="memUpdate.do"><img src="resources/user/img/notepad.png"></a><br><br>회원 정보 수정</td>
            	<td><a href="memDelete.do"><img src="resources/user/img/exit.png"></a><br><br>회원 정보 탈퇴</td>
            	<td><a href="memClass.do"><img src="resources/user/img/presentation.png"></a><br><br>나의  수강 내역</td>
            </tr>
           
      
            <tr>
         
            	<td><a href="memCoupon.do"><img src="resources/user/img/voucher.png"></a><br><br>나의 쿠폰 목록</td>
            	<td><a href="memZzim.do"><img src="resources/user/img/heart.png"></a><br><br>나의 찜하기 목록</td>
            	<td><a href="memDelivery.do"><img src="resources/user/img/truck.png"></a><br><br>주문 및 배송 목록</td>
            </tr>
          
            
            </table>
         

    
          


    	
      
            </div>
    	
    
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>
