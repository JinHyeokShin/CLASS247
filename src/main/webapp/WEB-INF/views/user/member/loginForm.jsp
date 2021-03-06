<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="408480087071-isgvm5bedj36u0tmbmlsf9v7dq30v7ic.apps.googleusercontent.com">
    
    <title>CLASS 247 - 당신을 무엇을 팔 수 있습니까?</title>
    
<script src="https://apis.google.com/js/platform.js" async defer></script>    
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>
	.login{
		margin: 9% auto;
		border: 1px solid #954CBC;
		padding: 10px;
		width: 40%;
		height:52%;  
		border-radius: 10px;
	}
	table td{
		text-align: center;
	}
	td a, td input, td button{
		width : 100%;
	}	
	#btnJoinGoogle{
		width:300px;
		height:46px;
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
       		<form action="login.do" method="post" class="loginform">
	  		<br>
			<h1>로그인</h1>
			<hr>
        	<table width="400">
	        	<tr>
	        		<td width="150">이메일 :</td>
	        		<td><input type="text" name="memId" class="primary-border" style="border-radius: 5px;"></td>
	            </tr>
	            <tr>
	        		<td>비밀번호 :</td>
	        		<td><input type="password" name="memPwd" class="primary-border" style="border-radius: 5px;"></td>
	            </tr>
            </table>
			<br>
            <table>
            <tr>
	            <td colspan="2" width="100%">
	        		<button class="genric-btn primary-border" name="log-btn" type="submit" onclick="console.log(loginUser)">로그인</button><br>
	            </td>
            </tr>
                <tr>
                    <td width="50%"><a href="joinForm.do" class="genric-btn primary-border">회원가입</a></td>
                    <td width="50%"><a href="" class="genric-btn primary-border">비밀번호 찾기</a></td>
                </tr>
            </table>
            <hr>
            </form>
<!--     	<a id="custom-login-btn" href="javascript:loginWithKakao()">
				<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
			</a> -->
			<script type='text/javascript'>
			//<![CDATA[
		    // 사용할 앱의 JavaScript 키를 설정해 주세요.
			    Kakao.init('c6b2207dd338b68a01e2f31590fa094b');
			    function loginWithKakao() {
			      // 로그인 창을 띄웁니다.
			      Kakao.Auth.login({
			        success: function(authObj) {
			          alert(JSON.stringify(authObj));
			        },
			        fail: function(err) {
			          alert(JSON.stringify(err));
			        }
			      });
			    };
			  //]]>
			</script>
           
           <!-- 
	    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="width:300px">구글로 로그인하기</div> -->
	    <script>
	        function onSignIn(googleUser) {
	            // Useful data for your client-side scripts:
	            var profile = googleUser.getBasicProfile();
	            console.log("ID: " + profile.getId()); // Don't send this directly to your server!
	            console.log('Full Name: ' + profile.getName());
	            console.log('Given Name: ' + profile.getGivenName());
	            console.log('Family Name: ' + profile.getFamilyName());
	            console.log("Image URL: " + profile.getImageUrl());
	            console.log("Email: " + profile.getEmail());
	
	            // The ID token you need to pass to your backend:
	            var id_token = googleUser.getAuthResponse().id_token;
	            console.log("ID Token: " + id_token);
	        };
	    </script>

            <br>
    	
      
            </div>
    	
    
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>
