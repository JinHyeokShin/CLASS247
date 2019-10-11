<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../creator/common/cMenubar.jsp"/>
	
 <div class="page-wrapper">
	       <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                             <div class="col-md-12">
                                <div class="card" style="height:600px">
                                    <div class="card-body" align="center">
                                    	<div style="width:50%">
                                    	<br><br>
	                                    	<img src="resources/creator/images/NonCreator.jpg">
                                    	</div><br>
                                        <div class="mx-auto d-block" style="font-family:Noto Serif KR">
                                            <h1 class="text-sm-center mt-2 mb-1">크리에이터 센터에 오신것을 환영합니다!</h1>
                                            <h3 class="text-sm-center mt-2 mb-1">아직 크리에이터가 아니시군요? <br>지금 당신의 재능을 공유해보세요!</h3>
                                        </div>
                                      	<br>
                                        <div align="center" style="font-family:Noto Serif KR">
	                                        <button type="button" class="btn btn-primary" onclick="location.href='creatorFormView.do';">크리에이터 신청하기</button>
	                                        <button type="button" class="btn btn-secondary" onclick="location.href='home.do';">메인으로 돌아가기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>                       
                        </div>
                    </div>
                </div>
            </div>

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