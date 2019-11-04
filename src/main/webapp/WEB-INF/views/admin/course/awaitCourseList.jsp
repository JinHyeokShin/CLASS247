<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Await</title>

        </head>

        <body class="animsition">

            <c:import url="../common/aMenubar.jsp" />
            <div class="page-container2">

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">Await List</h2>
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
                                                <c:forEach items="${ list }" var="co">
                      
                                                    
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

            <script>
            $(function() {
                $('#contacts td').on("click", function(){
                   $(this).parent().children().eq(2).click();
                })
             })
            
            </script>
            <c:import url="../common/aImportJs.jsp" />



        </body>

        </html>