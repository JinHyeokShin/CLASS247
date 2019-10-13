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
                                            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <div class="form-group">
                                                    <label class=" form-control-label">클래스 종류</label><br>
                                                    <div class="form-check-inline form-check">
                                                        <label for="online" class="form-check-label ">
                                                            <input type="radio" id="online" name="online" value="online" class="form-check-input">온라인 클래스 &nbsp;&nbsp;
                                                        </label>
                                                        <label for="offline" class="form-check-label ">
                                                            <input type="radio" id="offline" name="offline" value="offline" class="form-check-input">오프라인 클래스
                                                        </label>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label for="class_title" class=" form-control-label">클래스 제목</label>
                                                    <input type="text" id="class_title" placeholder="클래스를 대표할 수 있는 제목을 추가해주세요." class="form-control">
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label for="category" class=" form-control-label">클래스 카테고리</label>
                                                    <input type="text" id="category" placeholder="분야를 선택해 주세요." class="form-control">
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label for="category_detail" class=" form-control-label">클래스 상세 카테고리</label>
                                                    <input type="text" id="category_detail" placeholder="커리큘럼을 모두 포괄하는 하나의 카테고리를 작성해주세요." class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="level" class=" form-control-label">클래스 난이도</label>
                                                    <input type="text" id="level" placeholder="어느 역량의 수강생을 위한 클래스인지 선택해주세요." class="form-control">
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <div class="col col-md-5">
                                                        <label for="text-input" class=" form-control-label">* 클래스 커버 사진</label>
                                                        <input class="" type="file">
                                                    </div>
                                                    <div class="col-12 col-md-9" style="height:200px">
                                                        <small class="help-block form-text">클래스를 대표할 커버사진을 추가하세요.</small>
                                                        <div style="width:40%; height:40%; margin-top: 10px; text-align: center">
                                                            <img src="resources/creator/images/bg-title-02.jpg" alt="cover" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label for="class_content" class=" form-control-label">* 클래스 상세 정보</label>
                                                    <textarea name="class_content" id="class_content" rows="9" placeholder="클래스에 대한 소개 및 커리큘럼을 작성해주세요. " class="form-control"></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="card-footer" style="text-align:center">
                                            <button type="submit" class="btn btn-primary btn-sm">
                                           		클래스 신청하기
                                            </button>
                                            <button type="reset" class="btn btn-secondary btn-sm">
                                          		 취소하기
                                            </button>
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