<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../common/cMenubar.jsp"/>
	
	
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
                                    <form action="creUpdate.do" method="post" enctype="multipart/form-data">
                                        <div class="mx-auto d-block">
                                           	<img class="rounded-circle mx-auto d-block img-120" src="<%= request.getContextPath() %>/resources/creator/images/icon/may.jpg" alt="Card image cap">
                                            <br><h5 class="text-sm-center mt-2 mb-1">${ loginUser.memName }</h5>
                                            <div class="location text-sm-center">
                                                <i class="fa fa-quote-left"></i> ${ loginUser.memId }<i class="fa fa-quote-right"></i></div>
                                        </div>
                                        <hr>
                                        <br>
                                        <div class="card-text">
										<div class="col-7">
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
                                                <textarea id="introduction" name="introduction" rows='10' type="text" class="form-control cc-number identified visa">${creator.introduction}</textarea>
                                            </div>                                            
                                            <div>
                                                <button type="submit" class="btn btn-lg btn-info btn-block">정보 수정</button>
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
</body>
</html>