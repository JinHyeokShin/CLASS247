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
	

	   <div class="page-wrapper">

            <section class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <!-- <div class="col-xl-16"> -->
                                <!-- RECENT REPORT 2-->
                                
                        <div class="col-lg-12">
								<div class="card">
	
									<div class="card-body">


										<ul class="nav nav-tabs" id="myTab" role="tablist">
											<li class="nav-item">
												<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">진행중인 클래스</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">승인 대기중인 클래스</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">승인 거절된 클래스</a>
											</li>
										</ul>
										<div class="tab-content pl-3 p-1" id="myTabContent">
											<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
												
												<br>
												<h3 class="title-3 m-b-30">
					                            	<i class="zmdi zmdi-book"></i>현재 진행중인 클래스
					                       		 </h3>
					                       		 
					                       		 
								             <c:if test="${ empty list }">
				                                <div class="col-md-4">
				                                    <div class="card">
				                                        <img class="card-img-top" src="<%= request.getContextPath() %>/resources/creator/images/class-sample-01.PNG" alt="Card image cap">
				                                        <div class="card-body">
				                                            <h4 class="card-title mb-3"> 개설된 수업이 없습니다.</h4>
				                                             <p class="card-text"> Class247과 함께 여러분의 재능을 공유해보세요!</p>
				                                        </div>
				                                    </div>
				                                </div>
			                                </c:if>
											<c:if test="${!empty list }">
												<c:forEach items="${ list }" var="c">
			                                	<c:forEach items="${ coverList }" var="cover">
			                                		<c:if test="${ cover.courseNum == c.courseNum}"> 
				                                		<c:url value="myCourseDetail.do" var="classDetail">
															<c:param name="courseNum" value="${ c.courseNum }"/>
															<c:param name="courseKind" value="${ c.courseKind }"/>
														</c:url>
														
						                                <div class="col-md-4" style="display:inline-block">
						                                    <div class="card" onclick="location.href='${classDetail}';">
						                                        <img style="height:250px" class="card-img-top" src="resources/course/images/${ cover.coaRName }" alt="Card image cap">
						                                        <div class="card-body">
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
	
											</div>
											<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
												<br>
														<h3 class="title-3 m-b-30">
							                            	<i class="zmdi zmdi-book"></i>승인 대기 중인 클래스 
							                       		 </h3>

				                                
				                            <c:if test="${ empty awaitList }">
					                             <h4 class="card-title mb-3"> 승인 대기중인 수업이 없습니다.</h4>
				                            </c:if>

							                    <c:if test="${ !empty awaitList }">
							                     <div class="container-fluid">
            						            <div class="row">
				                                <c:forEach items="${ awaitList }" var="a">
				                                	<c:forEach items="${ coverList }" var="cover">
				                                		<c:if test="${ cover.courseNum == a.courseNum}"> 
					                                		<c:url value="myCourseDetail.do" var="classDetail">
																<c:param name="courseNum" value="${ a.courseNum }"/>
																<c:param name="courseKind" value="${ a.courseKind }"/>
															</c:url>
															
							                                <div class="col-md-4">
							                                    <div class="card" onclick="location.href='${classDetail}';">
							                                        <img style="height:250px" class="card-img-top" src="resources/course/images/${ cover.coaRName }" alt="Card image cap">
							                                        <div class="card-body">
							                                            <c:if test="${ a.courseKind == 'offline' }">
							                                            	<h4 style="display:inline;" class="card-title mb-3">${a.courseTitle}</h4> <span class="badge badge-danger">offline</span>
							                                             	<p class="card-text"> ${ a.courseArea } : ${a.courseStartDate} ~ ${a.courseEndDate} <br> 수강생 : ${a.courseCurrentNum}명</p>
							                                             </c:if> 
							                                             <c:if test="${ a.courseKind == 'online' }">
							                                             	<h4 style="display:inline;" class="card-title mb-3">${a.courseTitle}</h4><span class="badge badge-primary"> online</span>
							                                             	<p class="card-text"> ${ a.courseKind } : ${a.courseStartDate} ~ ${a.courseEndDate} <br> 수강생 : ${a.courseCurrentNum}명</p>
							                                             </c:if> 
							                                        </div>
							                                    </div>
							                                </div>
							                                </c:if>
							                          </c:forEach>
				                                </c:forEach>
					                        </div>
					                    </div>
				                   </c:if> 
									</div>
										<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
										<br>
											<h3 class="title-3 m-b-30">
					                            <i class="zmdi zmdi-book"></i>승인 거절된 클래스
					                        </h3>
					                        
					                        
					                        <c:if test="${ empty rejectList }">
					                             <h4 class="card-title mb-3"> 승인 거절된 수업이 없습니다.</h4>
				                            </c:if>
											
							                  <c:if test="${ !empty rejectList }">
							                     <div class="container-fluid">
							
							                        <div class="row">
						
						                                
						                                <c:forEach items="${ rejectList }" var="a">
						                                	<c:forEach items="${ coverList }" var="cover">
						                                		<c:if test="${ cover.courseNum == a.courseNum}"> 
							                                		<c:url value="deleteCourse.do" var="deleteCourse">
																		<c:param name="courseNum" value="${ a.courseNum }"/>
																	</c:url>
																	
									                                <div class="col-md-4">
									                                    <div class="card" onclick="cancel()">
									                                        <img style="height:250px" class="card-img-top" src="resources/course/images/${ cover.coaRName }" alt="Card image cap">
									                                        <div class="card-body">
									                                            <c:if test="${ a.courseKind == 'offline' }">
									                                            	<h4 style="display:inline;" class="card-title mb-3">${a.courseTitle}</h4> <span class="badge badge-danger">offline</span>
									                                             	<p class="card-text"> ${ a.courseArea } : ${a.courseStartDate} ~ ${a.courseEndDate} <br> 수강생 : ${a.courseCurrentNum}명</p>
									                                             </c:if> 
									                                             <c:if test="${ a.courseKind == 'online' }">
									                                             	<h4 style="display:inline;" class="card-title mb-3">${a.courseTitle}</h4><span class="badge badge-primary"> online</span>
									                                             	<p class="card-text"> ${ a.courseKind } : ${a.courseStartDate} ~ ${a.courseEndDate} <br><br></p>
									                                             </c:if> 
									                                        </div>
									                                    </div>
									                                </div>
									                                </c:if>
									                          </c:forEach>
						                                </c:forEach>
							                        </div>
							                    </div>
						                   </c:if> 
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
							<!-- 테스트 끝 -->

                                

                        </div>
                    </div>
                    
                    
   

                   

                    
                    
                </div>
            </section>

			
		<script>
      	function cancel() {

	      		if(confirm('클래스를 삭제하시겠습니까?')) {
	      			
	      			location.href = '${deleteCourse}';
	      		};
      		 		
      		
      	};
      
      </script>

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