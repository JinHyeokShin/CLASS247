<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크리에이터 신청하기</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
</head>
<body class="animsition">
	<c:import url="../common/cMenubar.jsp"/>
	
	
			<div class="modal fade" id="preInfoModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="mediumModalLabel"><b>크리에이터 신청 가이드</b></h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>
					                                크리에이터 신청페이지에 오신것을 환영합니다! <br>
					                                여러분의 신청서는 관리자가 충분히 검토 후 승인이 됩니다. <br>
					                               주말 및 공휴일을 제외한 48시간 이내에 여부를 확인 할 수 있습니다.<br>
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
	   		 <button type="button" data-toggle="modal" data-target="#preInfoModal" id="preInfoModalBtn"></button>
	
	<div class="page-wrapper">
			<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="mediumModalLabel"><b>본인 인증 가이드</b></h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>
                                * 수강생들에게 신뢰를 주기 위해 신분 또는 학력 인증은 필수입니다.<br>
                                * 파일은 jpg, png, gif, bmp등 이미지 파일만 가능합니다. <br>
                                * 관리자 확인 후 업로드해주신 파일은 바로 삭제됩니다. <br>
                                * 튜터 등록은 내국인 또는 취업비자를 소지한 외국인만 가능합니다. 
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
	
		            <!-- FORM START -->
            <section class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30">
                                <i class="fas fas fa-user"></i>creator information
                            </h3>
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>크리에이터 기본 정보</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                            <form action="creInsert.do" method="post" enctype="multipart/form-data" class="form-horizontal" id="creatorForm">
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="phone" class=" form-control-label">* 전화번호 인증</label>
                                                    </div>
                                                    <div class="col-12 col-md-8">
                                                        <input type="text" id="phone" name="phone" value="${ loginUser.memPhone }" class="form-control" required>
                                                    </div>
                                                    <!-- <button class="btn btn-primary btn-sm">인증하기</button> -->
                                                </div>
                                                <hr>
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="creProfile" class=" form-control-label">* 프로필 사진</label>
                                                    </div>
                                                    <div class="col-12 col-md-9" style="height:200px">
                                                        <input name="creProfilee" id="creProfile" class="btn btn-sm" type="file" onchange="loadImg(this)" required>
                                                        <div style="width:150px; height:150px; margin-top: 10px; text-align: center">
                                                            <img id="profileImg" src="resources/creator/images/icon/user.png" alt="basic_profile" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="creID" class=" form-control-label">* 신분증 인증</label>
                                                        <button type="button" data-toggle="modal" data-target="#mediumModal"><i class="fas fa-question"></i></button>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <input name="creID" id="creID" class="btn btn-sm" type="file" required>
                                                        <small class="help-block form-text">주민등록증/운전면허증/여권을 업로드하세요.</small>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="education" class=" form-control-label">학력</label>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <input type="text" id="education" name="education" placeholder="예) 247 대학교/공예학" class="form-control" required>
                                                        <small class="help-block form-text">관련 학력 사항을 기입하세요.</small>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="career" class=" form-control-label">경력</label>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <input type="text" id="career" name="career" placeholder="예)KH아카데미 보조교사" class="form-control">
                                                        <small class="help-block form-text">관련 학력 사항을 기입하세요.</small>
                                                    </div>
                                                </div>  
                                                <hr>                                              
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="certification" class=" form-control-label">자격증</label>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <input type="text" id="certification" name="certification" placeholder="예) 토익 900, SQLD, 한국사1급" class="form-control">
                                                        <small class="help-block form-text">관련 자격증이 있다면 입력하세요.</small>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <div class="col col-md-2">
                                                        <label for="introduction" class=" form-control-label">자기소개</label>
                                                    </div>
                                                    <div class="col-12 col-md-12">
                                                        <textarea name="introduction" id="summernote" rows="9" placeholder="학생들에게 소개하는 톡톡튀는 본인만의 자기소개를 작성해주세요 :) " class="form-control" required></textarea>
                                                    	<input type="hidden" name="memNum" value="${ loginUser.memNum }">
                                                    </div>
                                                </div>
		                                        <div style="text-align:center">
		                                            <button type="submit" class="btn btn-primary btn-sm">
		                                                	크리에이터 신청하기
		                                            </button>
		                                            <button type="reset" class="btn btn-secondary btn-sm">
		                                                 	초기화
		                                            </button>
		                                        </div>
                                            </form>
	                                        </div>
	                                    </div>            
	                                </div> 
	                            </div>
	                        </div>
	                    </div>
	                </section>
                <script>
                
	            	function loadImg(value){
	            		if(value.files && value.files[0]) {
	            			var reader = new FileReader();
	            			reader.onload = function(e) {
	            				$('#profileImg').attr("src", e.target.result);
	            			}
	            			reader.readAsDataURL(value.files[0]);
	            		}
	            	}
                </script>



            <!-- PAGE CONTAINER-->
            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
         <!-- END PAGE CONTAINER-->
	</div>
    <script>
        $(document).ready(function() {
             
             $('#summernote').summernote({
                 placeholder: '학생들에게 소개하는 톡톡튀는 본인만의 자기소개를 작성해주세요 :) ',
                 tabsize: 2,
                 height: 400,
                 dialogsInBody: true,
               });
        });
                
          $(function() {
             $('#preInfoModalBtn').click();
         }); 
    </script>
                
                
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
</body>
</html>