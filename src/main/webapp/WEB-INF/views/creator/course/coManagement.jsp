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
            <!-- BREADCRUMB-->
            <section class="au-breadcrumb m-t-75">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">You are here:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item active">
                                                <a href="#">Home</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Dashboard</li>
                                        </ul>
                                    </div>
                                    <button class="au-btn au-btn-icon au-btn--green">
                                        <i class="zmdi zmdi-plus"></i>new class</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <section class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="zmdi zmdi-book"></i>my class
                        </h3>
                        <div class="row">
                            <!-- <div class="col-xl-16"> -->
                                <!-- RECENT REPORT 2-->
                                
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
                                
                                <c:forEach items="${ list }" var="c">
                                	<c:forEach items="${ coverList }" var="cover">
                                		<c:if test="${ cover.courseNum == c.courseNum}"> 
	                                		<c:url value="myCourseDetail.do" var="classDetail">
												<c:param name="courseNum" value="${ c.courseNum }"/>
												<c:param name="courseKind" value="${ c.courseKind }"/>
											</c:url>
											
			                                <div class="col-md-4">
			                                    <div class="card" onclick="location.href='${classDetail}';">
			                                        <img style="height:250px" class="card-img-top" src="resources/course/images/${ cover.coaRName }" alt="Card image cap">
			                                        <div class="card-body">
			                                            <c:if test="${ c.courseKind == 'offline' }">
			                                            	<h4 style="display:inline; class="card-title mb-3">${c.courseTitle}</h4> <span class="badge badge-danger">offline</span>
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
                        </div>
                    </div>
                </div>
            </section>
            
            <script>
            	function hello(){
            		
            		alert('세이하이!');
            	}
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