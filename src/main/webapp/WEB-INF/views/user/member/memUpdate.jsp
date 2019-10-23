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
	 .form-group mt-6{
		 width : 40%;
	 }
</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	    <section class="contact-section section_padding">
    <div class="container">
        
        	<br>
      		<h1>회원 정보 수정</h1>
      		<br>
      		<hr>
      		<br>
      		 <div class="col-lg-12">
	      			<form action="updateMemProfile.do" method="post" enctype="multipart/form-data">
      		 	<div class="col-sm-9">
	      				<div class="profileImg" align="left">
	      					<img src="<%= request.getContextPath() %>/resources/user/img/profile/${loginUser.memProfileName}" width="30%" height="30%">
	      				</div>
	      				<div id="fileArea" style="display:none">
	      					<input type="file" name="profile" class="thumbnailImg1">
	      				</div>
	      			</div>
	      				<br>
	      				<div class="col-sm-3" align="right">
	      					<button class="genric-btn primary-border radius" name="log-btn" type="submit">사진 수정하기</button>
	      				<br><br>
	      				</div>
	      			</form>
	      				<br>
	      		
	      		<form action="mUpdate.do" method="post">
		           <div class="row">
		              <div class="col-sm-3">
		                <div class="form-group">
		                		<h4> 이메일(아이디)</h4>
		                </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input type="hidden" name="memId" value="${ loginUser.memId }">
		                  <input class="form-control" value= "${ loginUser.memId }" readonly>
		                </div>
		              </div>
		              <div class="col-sm-3">
		                <div class="form-group">
		                <h4>비밀번호</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="password" name="memPwd" required>
		                </div>
		              </div>
		               <div class="col-sm-3">
		                <div class="form-group">
		                <h4>비밀번호 확인</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="password" name="memPwd2" required >
		                </div>
		              </div>
		              <div class="col-sm-3">
		                <div class="form-group">
		                <h4>이름</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" value="${ loginUser.memName }" readonly>
		                </div>
		              </div>
		              <div class="col-sm-3">
		                <div class="form-group">
		                <h4>별명</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="text" name="memNickName" value="${ loginUser.memNickName }">
		                </div>
		              </div>
		               <div class="col-sm-3">
		                <div class="form-group">
		                <h4>휴대폰번호</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="text" name="memPhone" value="${ loginUser.memPhone }">
		                </div>
		              </div>
		              <div class="col-sm-3">
		                <div class="form-group">
		                <h4>성별</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
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
		              </div>
             
          

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
						<div class="col-sm-4" style="display:inline-block">
		               	 <div class="form-group">
		                	<h4>우편번호</h4>
		                  </div>
		              	</div>
		               <div class="col-sm-4" style="display:inline-block">
		                <div class="form-group">
		                  <input class="form-control" type="text" size="6" name="post" value="${ addr }" >
		                </div>
		              </div>
		               <div class="col-sm-4" style="display:inline-block">
		                <div class="form-group">
						<button class="genric-btn primary-border radius" name="log-btn" type="button" id="post_search_btn">검색</button>
						</div>
		              </div>
					</c:if>
					<c:if test="${ status.index eq 1 }">
					 <div class="col-sm-3">
		                <div class="form-group">
		                <h4>도로명 주소</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="text" name="address1" value="${ addr }">
		                </div>
		              </div>
					</c:if>
					<c:if test="${ status.index eq 2 }">
						 <div class="col-sm-3">
		                <div class="form-group">
		                <h4>상세 주소</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="text" name="address2" value="${ addr }">
		                </div>
		              </div>
		             </c:if>
				</c:forTokens>
			</c:if>
		
			<br>
			<div class="form-group mt-6">
              <button class="genric-btn primary-border radius" name="log-btn" type="submit">수정완료</button>
            </div>   
            <div class="form-group mt-6">
             <button class="genric-btn primary-border radius" name="log-btn" type="reset">취소</button>
            </div> 
              </div> 
          </form>
            </div>
    	</div>  
          </section>
             
    	
    	
    	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script>
					$(function(){
						// 검색 버튼 누르면 팝업 레이어가 열리도록 설정
						$("#post_search_btn").postcodifyPopUp();
					});
					$(function(){
						
						
						$(".profileImg").click(function(){
							$(".thumbnailImg1").click();
						});
					});
					
				</script>
					 <c:if test="${!empty msg }">
	 	<script>
	 		$(function(){
	 			alert('${msg}');
	 			<% request.removeAttribute("msg"); %>
	 		});
	 	</script>
	 </c:if>
    <br><br>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>