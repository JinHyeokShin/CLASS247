<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body class="animsition">

	<c:import url="../creator/common/cMenubar.jsp"/>
	<script>
		$(function() {
			console.log('memNum' + '${loginUser.memNum}');
			console.log('creNum' + '${creator.creNum}');
			console.log('creStatus' + '${creator.creStatus}');
		});
	</script>
	
	<c:if test="${!empty msg }">
		<script>
			var msg = '${msg}';
			alert(msg);
			<% request.removeAttribute("msg"); %>
		</script>
	</c:if>
<!-- 크리에이터 신청 후 승인 대기 중일 경우 -->
<c:if test="${ !empty creator}">
	<c:if test = "${creator.creStatus == 'N' }">

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
                                            <h1 class="text-sm-center mt-2 mb-1"> 크리에이터 센터에 오신것을 환영합니다!</h1>
                                            <h3 class="text-sm-center mt-2 mb-1"> '${ loginUser.memName}'님의 크리에이터 신청서는 검토 중에 있습니다. <br>
                                            										승인까지 조금만 더 기다려주세요 :) </h3>
                                        </div>
                                      	<br>
                                        <div align="center" style="font-family:Noto Serif KR">
	                                        <button type="button" class="btn btn-primary" onclick="location.href='inquiryList.do';">문의하기</button>
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

	</c:if>
	
	<!-- 승인거절일 경우 -->
<c:if test="${creator.creStatus == 'R' }">	

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
                                            <h1 class="text-sm-center mt-2 mb-1"> 크리에이터 센터에 오신것을 환영합니다!</h1>
                                            <h3 class="text-sm-center mt-2 mb-1"> '${ loginUser.memName}'님의 크리에이터 신청서 기준에 적합하지 않아 승인 거절되었습니다. <br>
                                            										서류를 검토해 다시 신청해주세요! </h3>
                                        </div>
                                      	<br>
                                        <div align="center" style="font-family:Noto Serif KR">
                                        	<button type="button" class="btn btn-primary" onclick="location.href='goReRegister.do';">재신청하기</button>
	                                        <button type="button" class="btn btn-primary" onclick="location.href='inquiryList.do';">문의하기</button>
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
</c:if>	

	<!-- 크리에이터 Status == 'Y'일 경우 -->
<c:if test="${ creator.creStatus == 'Y' }">
   <div class="page-wrapper">

		<div class="main-content">
            <!-- STATISTIC-->
            <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="fas fa-bar-chart"></i>summary
                        </h3>
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">${totalStuCount}<span style="font-size:15px">명</span></h2>
                                    <span class="desc">total number of 
                                        students</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">${classCount}</h2>
                                    <span class="desc">current class</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-book"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                        <div class="au-progress">
                                                <span class="au-progress__title"></span>
                                                <div class="au-progress__bar">
                                                    <div class="au-progress__inner js-progressbar-simple" role="progressbar" data-transitiongoal="${score * 20}">
                                                        <span class="au-progress__value js-value"></span>
                                                    </div>
                                                </div>
                                            </div>
                                    <span class="desc">satisfaction</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-star"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">&#8361;${totalAmount}</h2>
                                    <span class="desc">total earnings</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-money"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->

            <section >
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="zmdi zmdi-book"></i>my class
                        </h3>
                        <div class="row">
                                <c:if test="${ !empty list }">
	                                <c:forEach items="${list}" var="c">
		                                <c:forEach items="${coverList}" var="cover">
			                               	<c:if test="${ cover.courseNum == c.courseNum}"> 
				                                <c:url value="myCourseDetail.do" var="classDetail">
													<c:param name="courseNum" value="${ c.courseNum }"/>
													<c:param name="courseKind" value="${ c.courseKind }"/>
												</c:url>
			                                
				                                <div class="col-md-4">
				                                    <div class="card" onclick="location.href='${classDetail}';">
														<img style="height:250px" class="card-img-top" src="resources/course/images/${ cover.coaRName }" alt="Card image cap">                                        <div class="card-body">
				                                           <c:if test="${ c.courseKind == 'offline' }">
				                                          	 	<h4 style="display:inline;" class="card-title mb-3">${c.courseTitle}</h4> <span class="badge badge-danger">offline</span>
				                                            	<p class="card-text"> ${ c.courseArea } : ${c.courseStartDate} ~ ${c.courseEndDate} <br> 수강생 : ${c.courseCurrentNum}명</p>
				                                            </c:if> 
				                                            <c:if test="${ c.courseKind == 'online' }">
				                                            	<h4 style="display:inline;" class="card-title mb-3">${c.courseTitle}</h4><span class="badge badge-primary"> online</span>
				                                            	<p class="card-text"> ${ c.courseKind } : ${c.courseStartDate} ~ ${c.courseEndDate} <br> 수강생 : ${c.courseCurrentNum}명</p>
				                                            </c:if> 
				                                        </div>
				                                    </div>
				                                </div>
			                                
			                                </c:if>
		                                </c:forEach>
	                                </c:forEach>
                                </c:if>
                                
                                
                                
                                <c:if test="${ empty list }">
	                                <div class="col-md-4">
	                                        <div class="card" onclick="location.href='courseFormView.do';">
	                                          <img class="card-img-top" src="<%= request.getContextPath() %>/resources/creator/images/class-sample-01.PNG" alt="Card image cap">
	                                            <div class="card-body" style="text-align:center;">
	                                               <h4 class="card-title mb-3">새로운 클래스를 추가하세요.</h4>
	                                                <p class="card-text" style="text-align:center;"> 
	                                                    <img class="" src="<%= request.getContextPath() %>/resources/creator/images/icon/plus.png" style="width:65px; height:65px;">
	                                                </p>
	                                            </div>
	                                        </div>
	                                   </div>
                                  </c:if>
                            <!-- </div> -->
                        </div>
                    </div>
                </div>
            </section>



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
	</c:if>
	</c:if>
	
	
<c:if test="${ empty creator }">

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
</div>
</c:if>
	
	<c:import url="../creator/common/cMenubar.jsp"/>
	
</body>
</html>