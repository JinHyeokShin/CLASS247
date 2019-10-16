<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>AwaitCourseDetail</title>

        </head>

        <body class="animsition">

            <c:import url="../common/aMenubar.jsp" />
            <div class="page-container2">
            
	            <div class="main-content">
	                    <div class="section__content section__content--p30">
	                        <div class="container-fluid">
	                            <div class="row">
	                                <div class="col-lg-12">
	                                	<button type="submit">승인하기</button>
										<c:url var="mdelete" value="aApprovalCourse.do">
											<c:if test="${ course.courseKind eq 'offline' }">
												<c:param name="courseNum" value="${ offline.courseNum }"/>
											</c:if>
											<c:if test="${ course.courseKind eq 'online' }">
												<c:param name="courseNum" value="${ online.courseNum }"/>
											</c:if>
										</c:url>
	                                </div>
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
                                                    <button class="btn btn-primary btn-sm">인증하기</button>
                                                </div>
                                                <hr>
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="creProfile" class=" form-control-label">* 프로필 사진</label>
                                                    </div>
                                                    <div class="col-12 col-md-9" style="height:200px">
                                                        <input name="creProfile" id="creProfile" class="btn btn-sm" type="file" required>
                                                        <div style="width:150px; height:150px; margin-top: 10px; text-align: center">
                                                            <img src="resources/creator/images/icon/user.png" alt="basic_profile" />
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
                                                <div class="row form-group">
                                                    <div class="col col-md-2">
                                                        <label for="introduction" class=" form-control-label">자기소개</label>
                                                    </div>
                                                    <div class="col-12 col-md-9">
                                                        <textarea name="introduction" id="introduction" rows="9" placeholder="학생들에게 소개하는 톡톡튀는 본인만의 자기소개를 작성해주세요 :) " class="form-control" required></textarea>
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
            </div>


        </body>

        </html>