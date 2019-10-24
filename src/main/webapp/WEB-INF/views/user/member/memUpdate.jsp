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
		 
	 }
.postcodify_postcode5, .postcodify_address, .postcodify_extra_info{
	display: block;
    width: 100%;
    height: calc(1.5em + .75rem + 2px);
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s
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
	      				<div class="profileImg" align="left" >
	      					<img src="<%= request.getContextPath() %>/resources/user/img/profile/${loginUser.memProfileName}" width="30%" height="30%">
	      				</div>
	      				<div id="fileArea" style="display:none">
	      					<input type="file" name="profile" class="thumbnailImg1">
	      				</div>
	      			</div>
	      			<br><br>
	      				<div class="col-sm-3" align="right">
	      					<button class="genric-btn primary-border radius" name="log-btn" type="submit" style="font-size: 15">사진 수정하기</button>
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
		                  <input class="form-control" type="password" name="memPwd" id="memPwd" required>
		                </div>
		              </div>
		               <div class="col-sm-3">
		                <div class="form-group">
		                <h4>비밀번호 확인</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="form-control" type="password" name="memPwd2" id="memPwd2" required >
		                  <font name="check"size="2" color="red"></font>
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
		                  <c:choose>
					<c:when test="${ loginUser.memGender eq 'M' }">
		              <div class="col-sm-2" style="display:inline-block" align="center">
		                <div class="form-group">
							<h5><input type="radio" name="gender" value="M" checked>&nbsp;&nbsp;남자</h5>
						  </div>
		              </div>
		              <div class="col-sm-7" style="display:inline-block">
		                <div class="form-group">
							<h5><input type="radio" name="gender" value="F">&nbsp;&nbsp; 여자</h5>
						  </div>
		              </div>
					</c:when>
					<c:when test="${ loginUser.memGender eq 'F' }">
					<div class="col-sm-2" style="display:inline-block" align="center">
		                <div class="form-group">
							<h5><input type="radio" name="gender" value="M">&nbsp;&nbsp; 남자</h5>
						  </div>
		              </div>
		              <div class="col-sm-7" style="display:inline-block">
		                <div class="form-group">
							<h5><input type="radio" name="gender" value="F" checked>&nbsp;&nbsp;여자</h5>
						  </div>
		              </div>
					</c:when>
					<c:otherwise>
					<div class="col-sm-2" style="display:inline-block" align="center">
		                <div class="form-group">
							<h5><input type="radio" name="gender" value="M"> &nbsp;&nbsp;남자</h5>
						  </div>
		              </div>
		              <div class="col-sm-7" style="display:inline-block">
		                <div class="form-group">
							<h5><input type="radio" name="gender" value="F">&nbsp;&nbsp;여자</h5>
						  </div>
					  </div>
					</c:otherwise>
				</c:choose>	
		     <c:if test="${ empty loginUser.memAddress }">
					<div class="col-sm-3" style="display:inline-block">
		               	 <div class="form-group">
		                	<h4>우편번호</h4>
		                  </div>
		              	</div>
		               <div class="col-sm-4" style="display:inline-block">
		                <div class="form-group">
		                  <input class="postcodify_postcode5" type="text" size="6" name="post">
		                </div>
		              </div>
		               <div class="col-sm-5" style="display:inline-block">
		                <div class="form-group">
						<input class="genric-btn primary-border radius" name="log-btn" type="button" id="post_search_btn" value="검색"  style="font-size: 15">
						</div>
		              </div>
					 <div class="col-sm-3">
		                <div class="form-group">
		                <h4>도로명 주소</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9">
		                <div class="form-group">
		                  <input class="postcodify_address" type="text" name="address1">
		                </div>
		              </div>
				 <div class="col-sm-3">
		                <div class="form-group">
		                <h4>상세 주소</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9" style="display:inline-block">
		                <div class="form-group">
		                  <input class="postcodify_extra_info" type="text" name="address2">
		                </div>
		              </div>
			</c:if>
			<c:if test="${ !empty loginUser.memAddress }">
				<c:forTokens items="${ loginUser.memAddress }" delims="," var="addr" varStatus="status">
					<c:if test="${ status.index eq 0 }">
						<div class="col-sm-3" style="display:inline-block">
		               	 <div class="form-group">
		                	<h4>우편번호</h4>
		                  </div>
		              	</div>
		               <div class="col-sm-4" style="display:inline-block">
		                <div class="form-group">
		                  <input class="postcodify_postcode5" type="text" size="6" name="post" value="${ addr }" >
		                </div>
		              </div>
		               <div class="col-sm-5" style="display:inline-block">
		                <div class="form-group">
						<input class="genric-btn primary-border radius" name="log-btn" type="button" id="post_search_btn" value="검색"  style="font-size: 15">
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
		                  <input class="postcodify_address" type="text" name="address1" value="${ addr }">
		                </div>
		              </div>
					</c:if>
					<c:if test="${ status.index eq 2 }">
						 <div class="col-sm-3">
		                <div class="form-group">
		                <h4>상세 주소</h4>
		                   </div>
		              </div>
		              <div class="col-sm-9" style="display:inline-block">
		                <div class="form-group">
		                  <input class="postcodify_extra_info" type="text" name="address2" value="${ addr }">
		                </div>
		              </div>
		             </c:if>
				</c:forTokens>
			</c:if>
		
			<br>	<br>	<br>	<br>	<br>
			<div class="col-sm-6" style="display:inline-block" align="right">
			 <div class="form-group">
              <input class="genric-btn primary-border radius" name="log-btn" type="submit" style="font-size: 15" value="수정완료">
            </div>  
            </div> 
            <div class="col-sm-6" style="display:inline-block">
             <div class="form-group">
             <input class="genric-btn primary-border radius" name="log-btn" type="reset" style="font-size: 15" value="취소">
            </div> 
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
					
					   $(function() {
				            $('#memPwd').keyup(function() {
				               $('font[name=check]').text('');
				            });
				            
				            $('#memPwd2').keyup(function() {
				               if ($('#memPwd').val() != $('#memPwd2').val()) {
				                  $('font[name=check]').text('');
				                  $('font[name=check]').html("암호틀림");
				               } else {
				                  $('font[name=check]').text('');
				                  $('font[name=check]').html("암호맞음");
				               }
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
 
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>