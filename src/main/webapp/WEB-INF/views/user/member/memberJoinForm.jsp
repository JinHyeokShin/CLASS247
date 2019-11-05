<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
		width: 40%;
		border-radius: 10px;
	}
	table td{
		text-align: left;
	}
	td a, td input, td button{
		width : 100%;
	}	
	.genric-btn{
	padding: 9 9 10 9;
	}
	.genderForm{
		align : left;
	}
	.profileImg{
		width:75px;
		height:75px;
		margin:auto;
		padding:auto;
		border: 1px solid black;
		text-align:center;
		border-radius: 10px;
	}
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	
	 
	  
	  	<div class="login" align="center">
        <form class="JoinForm"  action="minsert.do" method="post">
        	<br>
      		<h1>회원가입</h1>
      		<hr>
    		<table width="600">
      			<tr>
      				<td>이메일(아이디)</td>
      			</tr>
      			<tr>
      				<td><input type="email"  style="border-radius: 5px;" name="memId" placeholder="이메일@example.com" required></td>
      			</tr>
      			<tr>
      				<td>비밀번호 </td>
   				</tr>
   				<tr>
      				<td><input type="password" name="memPwd" style="border-radius: 5px;" placeholder="비밀번호를 입력해주세요 (8자리 이상)" required></td>
      			</tr>
      			<tr>
      				<td>비밀번호 확인 </td>
   				</tr>
   				<tr>
      				<td><input type="password" name="memPwd2" style="border-radius: 5px;" placeholder="비밀번호를 입력해주세요 (8자리 이상)" required></td>
      			</tr>
      			<tr>
      				<td>이름 </td>
   				</tr>
   				<tr>
      				<td><input type="text" name="memName" style="border-radius: 5px;" placeholder="이름" required></td>
      			</tr>
      			<tr>
      				<td>별명 </td>
      			</tr>
      			<tr>
      				<td><input type="text" name="memNickName" style="border-radius: 5px;" placeholder="별명" required></td>
      			</tr>
      			<tr>
      				<td>휴대폰번호 </td>
   				</tr>
<!--    				<tr>
      				<td><input type="text" name="memPhone" style="border-radius: 5px;" placeholder="휴대폰 번호" style=""required><input type="button" value="인증하기" class="genric-btn primary-border radius"></td>
      			</tr> -->
      			<tr>
      				<td><br>성별<br></td>
   				</tr>
      			</table>
	            <div style="text-align : left;">
	            	  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            	<label for="M"><input type="radio" name="memGender" value="M" id="M">남</label>
	            	&nbsp;&nbsp;&nbsp;&nbsp;    	
	           		<label for="F"><input type="radio"	name="memGender" value="F" id="F">여</label>		
	            </div>   
	            
      			<table width="600">
						<tr>
							<td>우편번호 </td>
							<td><input type="text" name="post" style="border-radius: 5px; width:100; text-align: left;" class="postcodify_postcode5" readonly>&nbsp;<button type="button" class="genric-btn primary-border radius" style="border-radius: 5px; width:50%; height:30px; text-align: center; line-height: 1" id="post_search_btn">검색</button></td>
						</tr>
						<tr>
							<td>도로명주소</td>
							<td><input type="text" name="address1" class="postcodify_address" style="border-radius: 5px; width:100%; text-align: left;" readonly></td>
						</tr>			
						<tr>
							<td>상세주소</td>
							<td><input type="text" name="address2" class="postcodify_extra_info" style="border-radius: 5px; width:50%; text-align: left;"></td>
						</tr>
						
				</table>
				<!-- 주소 오픈api 스크립트 -->
				<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script>
					$(function(){
						$("#post_search_btn").postcodifyPopUp();  <!-- // 검색 버튼 누르면 팝업 레이어가 열리도록 설정 id일때 # -->
					});
				</script>
			<br>
			<div>
            	<input type="checkbox" required>  
            	<a href="#" onClick="userPopupOpen();">이용악관</a>
            	및   
            	<a href="#" onClick="userPopupOpen2();">개인정보 처리방침</a>에 동의해주세요
            </div>
      		
      		<table width="600">
      			<tr>
      				<td><button class="genric-btn primary-border radius" name="log-btn" type="submit">회원가입</button></td>
      			</tr>
      			<tr>
      				<td><button class="genric-btn primary-border radius" name="log-btn" type="reset">취소</button></td>
      			</tr>
      		</table>
            <br><hr>
            
            </form>
            </div>
    		<script>
   				function userPopupOpen(){  
   				    window.open("https://docs.google.com/document/d/1QfM61dBfDRfiL_7E7dbMqSpzcJO6MF0eOEpFgnpVO10/edit", "이용약관", "width=1200, height=1200, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes" );  
   				}  
   				function userPopupOpen2(){  
   				    window.open("https://docs.google.com/document/d/1QvEx-SVtIJOTIvDKFBPBhc_NVbvQTDkYK1XA-RXz1gE/edit", "개인정보 처리방침", "width=1200, height=1200, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes" );  
   				}  
			</script>
    
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>