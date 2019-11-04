<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
</head>
<body>
	<c:import url="../common/cMenubar.jsp"/>
	
	<c:if test="${ !empty msg }">
		<script>
		$(function() {
			alert('${msg}');
			<% session.removeAttribute("msg"); %>
			
		})
		</script>
	</c:if>
	
	
			<div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid" >
                        <div class="row">
                            <div class="col-md-10">
                                <div class="card">
                                    <div class="card-header">
                                        <strong class="card-title mb-3">${loginUser.memName}님의 크리에이터 정보</strong>
                                    </div>
                                    <div class="card-body">
	                                    <form action="updateProfile.do" id="profileUpdateForm" method="post" enctype="multipart/form-data">
	                                        <div class="mx-auto d-block" align="center">
	                                        	<div class="image img-cir img-120 creProfile">
	                                           		<img id="creProfile2" class="creProfileImg" src="<%= request.getContextPath() %>/resources/creator/creatorImages/${creProfile}" alt="Class247" />
	                                           	</div>
	                                            <br><h5 class="text-sm-center mt-2 mb-1">${ loginUser.memName }</h5>
	                                            <div class="location text-sm-center">
	                                                <i class="fa fa-quote-left"></i> ${ loginUser.memId }<i class="fa fa-quote-right"></i>
	                                            </div>
	                                        </div>
	                                        <div style="display:none">
		                                        <input type="file" id="creProfileBtn" name="file" onchange="updateProfile()">
		                                        <button type="submit" id="submitProfileBtn">사진바꾸기</button>
	                                        </div>
                                        </form>
                                        <hr>
                                        <br>
                                        
                                        <script>
                                        	$(function() {
                                        		$('.creProfile').click(function(){
                                        			if(confirm("크리에이터 프로필 사진을 변경하시겠습니까?")){
	                                        			$('#creProfileBtn').click();
                                        			}
                                        		})
                                        		
                                        	})
                                        		
                                        	
                                        	//프로필 사진 업데이트 
                                        	function updateProfile() {
                                        		var formData = new FormData($('#profileUpdateForm')[0]);

                                        		
                                         		$.ajax({
                                        			url:"updateProfile.do",
                                        			type:"post",
                                        			data:formData,
                                        			contentType:false,
                                        			processData:false,
                                        			success:function(data){
                                        				if(data == 'fail'){
                                        					alert("프로필 사진 변경에 실패하였습니다.");
                                        				} else {
                                        					var newPic = "<%= request.getContextPath() %>/resources/creator/creatorImages/" + data;
                                        					$('#creProfile2').attr("src", newPic);
                                        					$('#creProfile').attr("src", newPic);
                                        				}
                                        			}
                                        			, error:function(){
                                        				console.log("서버통신실패");
                                        			}
                                        		}); 
                                        		
                                        	
                                        	}
                                        </script>
                                        
	                                    <form action="creUpdate.do" method="post" enctype="multipart/form-data">
                                        <div class="card-text">
										<div class="col-7" style="margin-left:auto;margin-right:auto;">
                                            <div class="form-group">
                                                <label for="phone" class="control-label mb-1">전화번호 인증</label>
                                                <input id="phone" name="phone" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${ loginUser.memPhone }">
                                            </div>
                                            <div class="form-group has-success" >
                                                <label for="education" class="control-label mb-1">학력</label>
                                                <input id="education" name="education" type="text" class="form-control cc-name valid" value="${creator.education}" >
                                            </div>
                                            <div class="form-group">
                                                <label for="career" class="control-label mb-1">경력</label>
                                                 <input id="career" name="career" type="text" class="form-control cc-name valid" value="${creator.career}" >
                                            </div>
                                            <div class="form-group">
                                                <label for="certification" class="control-label mb-1">자격증</label>
                                                <input id="certification" name="certification" type="text" class="form-control cc-name valid" value="${creator.certification}" >
                                            </div>
                                            <div class="form-group">
                                                <label for="introduction" class="control-label mb-1">자기소개</label>
                                            	<textarea id="summernote" rows="40" name="introduction"></textarea>
                                            </div>                                            
                                            <div>
                                                <button type="submit" class="btn btn-lg btn-info btn-block">정보 수정</button>
                                                <button type="button" class="btn btn-lg btn-danger btn-block" onclick="deleteCreator();">크리에이터 탈퇴</button>
                                            </div>
										</div>
										</div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
             </div>
             
             
             <script>
	             $(document).ready(function() {
	            	 
	         		$('#summernote').summernote({
	      			  height: 300,                 // set editor height
	      			  minHeight: null,             // set minimum height of editor
	      			  maxHeight: null, 
	      			});
	         		
		             var markupStr = '${creator.introduction}';
		             $('#summernote').summernote('code', markupStr);
	             });
	             
             	//탈퇴하기 
	             function deleteCreator() {
	            	
	            		$.ajax({
	            			url:"existCourse.do",
	            			method:"post",
	            			success:function(data){
	            				console.log("data : "+ data);
	            				if(data == 'success') {
	            					
		            				if(confirm('정말 탈퇴하시겠습니까?')){
		            					location.href='deleteCreator.do';
		            				}
	            					
	            				} else {
	            					console.log("data : " + data );
	            					alert('수강 중인 클래스가 존재하여 회원탈퇴가 불가합니다. 관리자에게 문의하세요.');
	            				}
	            			}, 
	            			error:function(){
	            				console.log("서버통신 실패");
	            			}
	            		});        	 
           		  };
             </script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <!--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>             

</body>
</html>