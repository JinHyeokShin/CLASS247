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
	.login{
		margin: 9% auto;
		border: 1px solid #954CBC;
		padding: 10px;
		width: 50%;
		height:120%;  
		border-radius: 10px;
	}
	table td{
		text-align: left;
	}
	td a, td button{
		width : 70%;
	}	
	.genric-btn{
	padding: 9 9 10 9;
	}
	.genderForm{
		align : left;
	}
	 td input{
		 width : 80%;
	 }
	  .jb-default-1 { font-size: 12px; }
	  
	    .jb-default-2 { font-size: 16px; }
	    
	    	table tr{
		height:30px;
	}
	table tr:hover{
		background-color:lightgrey;
		cursor:pointer;
	}
	table th:hover{
		cursor:default;
	}
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	
	 
	  
	  	<div class="login" align="center">
        <form action="mDelete.do" method="post">
        	<br>
      		<h1>나의 쿠폰 목록</h1>
      		<hr>
      		<h3 align="center">나의 총 쿠폰 갯수 : ${ pi.listCount }</h3>	
 
            <br><hr>
            
            </form>
            </div>
    	
    
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>
