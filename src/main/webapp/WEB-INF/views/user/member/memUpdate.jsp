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
</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	
	 <c:if test="${!empty msg }">
	 	<script>
	 		$(function(){
	 			alert('${msg}');
	 			<% request.removeAttribute("msg"); %>
	 		});
	 	</script>
	 </c:if>
	  
	  	<div class="login" align="center">
        
        	<br>
      		<h1>회원 정보 수정</h1>
      		<hr>
      		<table width="600">
	      		<tr>
	      			<td>
	      			<form action="updateMemProfile.do" method="post" enctype="multipart/form-data">
	      				<img src="<%= request.getContextPath() %>/resources/user/img/profile/${loginUser.memProfileName}" width="30%" height="30%">
	      				
	      				<input type="file" name="profile">
	      			
	      				<button type="submit">사진 수정하기</button>
	      			</form>
	      			</td>
	      		</tr>
	      		 <form action="mUpdate.do" method="post">
      			<tr>
      				<td>이메일(아이디)</td>
      			</tr>
      			<tr><input type="hidden" name="memId" value="${ loginUser.memId }">
      				<td>${ loginUser.memId }</td>
      			</tr>
      			<tr>
      			
      				<td>비밀번호 </td>
   				</tr>
   				<tr>
      				<td><input type="password" name="memPwd" style="border-radius: 5px;" required></td>
      			</tr>
      			
      			
      			
      			<tr>
      				<td>비밀번호 확인 </td>
   				</tr>
   				<tr>
      				<td><input type="password" name="memPwd2" style="border-radius: 5px;" required></td>
      			</tr>
      			<tr>
      				<td>이름 </td>
   				</tr>
   				<tr>
      				<td>${ loginUser.memName }</td>
      			</tr>
      			<tr>
      				<td>별명 </td>
      			</tr>
      			<tr>
      				<td><input type="text" name="memNickName" style="border-radius: 5px;" value="${ loginUser.memNickName }" required></td>
      			</tr>
      			<tr>
      				<td>휴대폰번호 </td>
   				</tr>
   				<tr>
      				<td><input type="text" name="memPhone" style="border-radius: 5px;" value="${ loginUser.memPhone }" required></td>
      			</tr>
      			<tr>
      				<td><br>성별<br></td>
   				</tr>
      			 </table>
	            <div style="text-align : left;">
	            	  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   	
	           		<c:choose>
						<c:when test="${ loginUser.memGender eq 'M' }">
							<td>
								<input type="radio" name="gender" value="M" checked> 남 
									            	&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="radio" name="gender" value="F"> 여
							</td>
						</c:when>
						<c:when test="${ loginUser.memGender eq 'F' }">
							<td>
								<input type="radio" name="gender" value="M"> 남 
									            	&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="radio" name="gender" value="F" checked> 여
							</td>
						</c:when>
						<c:otherwise>
							<td>
								<input type="radio" name="gender" value="M"> 남 
									            	&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="radio" name="gender" value="F"> 여
							</td>
						</c:otherwise>
					</c:choose>	
	            </div>  
	           
	            <table width="600">
      			<c:if test="${ empty loginUser.memAddress }">
					<tr>
						<td>우편번호</td>
						<td>
							<input type="text" name="post" size="6" class="postcodify_postcode5">
								&nbsp;&nbsp;&nbsp;&nbsp; 
							<button type="button" id="post_search_btn">검색</button>
						</td>
						
					</tr>
					
					<tr>
						<td>도로명 주소</td>
						<td><input type="text" name="address1" class="postcodify_address"></td>
					</tr>
					<tr>
						<td>상세 주소</td>
						<td><input type="text" name="address2" class="postcodify_extra_info"></td>
					</tr>
				</c:if>
				<c:if test="${ !empty loginUser.memAddress }">
					<c:forTokens items="${ loginUser.memAddress }" delims="," var="addr" varStatus="status">
						<c:if test="${ status.index eq 0 }">
							<tr>
								<td>우편번호</td>
								<td>
									<input type="text" name="post" size="6" value="${ addr }" class="postcodify_postcode5">
									&nbsp;&nbsp;
									<button type="button" id="post_search_btn">검색</button>
								</td>
							</tr>
						</c:if>
						<c:if test="${ status.index eq 1 }">
							<tr>
								<td>도로명 주소</td>
								<td><input type="text" name="address1" value="${ addr }"  class="postcodify_address"></td>
							</tr>
						</c:if>
						<c:if test="${ status.index eq 2 }">
							<tr>
								<td>상세 주소</td>
								<td><input type="text" name="address2" value="${ addr }"  class="postcodify_extra_info"></td>
							</tr>
						</c:if>
					</c:forTokens>
				</c:if>
				</table> 
				<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script>
					$(function(){
						// 검색 버튼 누르면 팝업 레이어가 열리도록 설정
						$("#post_search_btn").postcodifyPopUp();
					});
				</script>
				
			<br>
			
      		
      		<table width="600">
      			<tr>
      				<td><button class="genric-btn primary-border radius" name="log-btn" type="submit">수정완료</button></td>
      				
      				<td><button class="genric-btn primary-border radius" name="log-btn" type="reset">취소</button></td>
      			</tr>
      		</table>
             </form>
            <br><hr>
            
            </div>
    	
    
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>