<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<title>admin</title>

</head>

<body class="animsition">

	<c:import url="common/aMenubar.jsp"/>
        <div class="page-container2">

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-25">
                             <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${tMem}</h2>
                                                <span>members</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${tCre}</h2>
                                                <span>creator</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${oCou}</h2>
                                                <span>Online Class</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${iCou}</h2>
                                                <span>Offline Class</span>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${mMem}</h2>
                                                <span>증가된 회원수</span>
                                            </div>
                                        </div>
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${mCre}</h2>
                                                <span>증가된 크리에어터</span>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${mCou}</h2>
                                                <span>증가된 클래스</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-money"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${mPrice }</h2>
                                                <span>이번달 거래액</span>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        
                         <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">Await Creator List</h2>
                                    <div class="table-responsive table--no-card m-b-40">
                                        <table class="table table-borderless table-striped table-earning">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>제목</th>
                                                    <th>작성자</th>
                                                    <th>등록날짜</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${ creList }" var="cre">
                      
                                                    
                                                    <tr>
                                                        <td>${cre.creNum }</td>
                                                                                                              <td>
                                                         <c:url value="aAwaitCreatorDetail.do" var="awaitCreatorDetail">
                                                        	<c:param name="creNum" value="${ cre.creNum }"/>
                                                         </c:url>
                                                         <a style="color:black" href="${awaitCreatorDetail}">${cre.introduction }</a>
                                                        </td>
                                                        <td>
                                                        	${ cre.memNickName }
                                                        </td>
														                                                        
                                                        <td>${cre.enrollDate }</td>
                                                    </tr>
                                                    
                                                   
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        
                       <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">Await Class List</h2>
                                    <div class="table-responsive table--no-card m-b-40">
                                        <table class="table table-borderless table-striped table-earning">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>클래스사진</th>
                                                    <th>제목</th>
                                                    <th>타입</th>
                                                    <th>수강자대상</th>
                                                    <th>작성자</th>
                                                    <th>등록날짜</th>
                                                </tr>
                                            </thead>
                                            <tbody id="contacts">
                                                <c:forEach items="${ coList }" var="co">
                      
                                                    
                                                    <tr>
                                                        <td>${co.courseNum }</td>
                                                        <td>
                                                  
                                                        <div class="image img-240">
															
														</div>
                                                        </td>
                                                       
                                                        <td>
                                                         <c:url value="aAwaitCourseDetail.do" var="awaitCourseDetail">
                                                        	<c:param name="courseNum" value="${ co.courseNum }"/>
                                                        	<c:param name="courseKind" value="${ co.courseKind }"/>
                                                         </c:url>
                                                         <a style="color:black" href="${awaitCourseDetail}">${co.courseTitle }</a>
                                                        </td>
                                                        
                                                        <td>
                                              				${co.courseKind }
                                                        </td>
                                                        <td>${co.courseLevel }</td>
                                                        <td>${co.memNickName }</td>
                                                        <td>${co.courseEnrollDate }</td>
                                                    </tr>
                                                    
                                                   
                                                </c:forEach>
                                            </tbody>
                                            
                                        </table>
                                    </div>
                                </div>
                            </div>
                            
                            
                    </div>
                </div>
            </div>
            

            </div>
 	<c:import url="common/aImportJs.jsp"/>



</body>

</html>