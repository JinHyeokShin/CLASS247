<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 등록</title>
</head>
<body class="animsition">
	<c:import url="../common/cMenubar.jsp"/>
	
	<div class="page-wrapper">
        <!-- FORM START -->
            <section class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30">
                                <i class="zmdi zmdi-book"></i>New Class
                            </h3>
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>클래스 기본 정보</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                            <form action="coNext.do" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <div class="form-group">
                                                    <label class=" form-control-label">클래스 종류</label><br>
                                                    <div class="form-check-inline form-check">
                                                        <label for="online" class="form-check-label ">
                                                            <input type="radio" id="online" name="courseKind" value="online" class="form-check-input" checked>온라인 클래스 &nbsp;&nbsp;
                                                        </label>
                                                        <label for="offline" class="form-check-label ">
                                                            <input type="radio" id="offline" name="courseKind" value="offline" class="form-check-input">오프라인 클래스
                                                        </label>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label for="class_title" class=" form-control-label">* 클래스 제목</label>
                                                    <input type="text" name="courseTitle" placeholder="클래스를 대표할 수 있는 제목을 추가해주세요." maxlength="15" class="form-control" required>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                              	  <label for="categoryNum" class=" form-control-label">* 클래스 카테고리</label>
                                                  <div class="col-md-3">
                                                 	   <select name="categoryNum" id="categoryNum" class="form-control" required>
                                                  	      <option value="1">공예</option>
                                                  	      <option value="2">디자인</option>
                                                 	       <option value="3">개발</option>
                                                 	       <option value="4">디지털 드로잉</option>
                                                 	       <option value="5">라이프 스타일</option>
                                                 	       <option value="6">미술</option>
                                                 	       <option value="7">사진, 영상</option>
                                                 	       <option value="8">여행</option>
                                                 	       <option value="9">요리, 음료</option>
                                                 	       <option value="10">음악</option>
                                                 	       <option value="11">커리어</option>
                                                 	       <option value="0">기타</option>
                                                 	   </select>
                                               	 </div>
                                              	 <small class="help-block form-text">어느 역량의 수강생을 위한 클래스인지 선택해주세요.</small>
                                         	   </div>                              
                                                <hr>
                                                <div class="form-group">
                                              	  <label for="select" class=" form-control-label">* 클래스 수강 대상</label>
                                                  <div class="col-md-3">
                                                 	   <select name="courseLevel" id="courseLevel" class="form-control" required>
                                                  	      <option value="입문자">입문자</option>
                                                  	      <option value="초급자">초급자</option>
                                                 	       <option value="중급자">중급자</option>
                                                 	       <option value="고급자">고급자</option>
                                                 	       <option value="전문가">전문가</option>
                                                 	       <option value="무관">무관</option>
                                                 	   </select>
                                               	 </div>
                                              	 <small class="help-block form-text">어느 역량의 수강생을 위한 클래스인지 선택해주세요.</small>
                                         	   </div>                              
                                                <hr>
                                                <div class="form-group">
                                                    <label for="class_content" class=" form-control-label">* 클래스 상세 정보</label>
                                                    <textarea name="courseContent" rows="9" placeholder="클래스에 대한 소개 및 커리큘럼을 작성해주세요. " class="form-control" required></textarea>
                                                    <input type="hidden" name="creNum" value="${ creator.creNum }">
                                                </div>
		                                        <div style="text-align:center">
		                                            <button type="submit" class="btn btn-primary btn-sm">
		                                           		다음
		                                            </button>
		                                            <button type="reset" class="btn btn-secondary btn-sm">
		                                          		 취소하기
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
</body>
</html>