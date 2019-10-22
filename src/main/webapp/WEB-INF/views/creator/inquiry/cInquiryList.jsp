<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<title>크리에이터 공지사항</title>
</head>
<body class="animsition">
	<c:import url="../common/cMenubar.jsp"/>
	
	<div class="page-wrapper">
        <!-- START NOTICE TABLE -->
            <section class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                         <h3 class="title-3 m-b-30">
                            <i class="fas fa-question-circle"></i>INQUIRY
                        </h3>
                        <div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE-->
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3" style="text-align:center">
                                        <thead>
                                            <tr>
                                                <th>no</th>
                                                <th width=50%>제목</th>
                                                <th>답변현황</th>
                                                <th>작성일</th>
                                                <th>작성자</th>
                                            </tr>
                                        </thead>
                                        
                                        
                                        <!-- 문의사항이 없을 때  -->
                                        <c:if test="${ empty iList }">
                                        	<tbody>
                                        		<tr>
                                        			<td colspan='5'> 등록된 문의 글이 없습니다.</td>
                                        		</tr>
                                        	</tbody>
                                        </c:if>
                                        
                                        <!-- 문의사항이 있을 떄  -->
                                        <c:if test="${ !empty iList }">
                                        	<c:forEach items="${ iList }" var="i">
		                                        <tbody id="inquiryTable">
		                                            <tr>
		                                            	<c:url value="idetail.do" var="idetail">
		                                            		<c:param name="inquiryNum" value="${i.inquiryNum}"/>
		                                            	</c:url>	
		                                                <td>${i.inquiryNum}</td>
		                                                <td>${i.inquiryTitle}</td>
		                                                <td>${i.answerStatus}</td>
		                                                <td>${i.inquiryEnrollDate}</td>
		                                                <td>이름?</td>
		                                            </tr>
		                                        </tbody>
	                                        </c:forEach>
                                        </c:if>
                                    </table>          
                                </div>
			                     <div id="pagingBarArea" style="text-align:center">
			                        <!-- 이전 -->
									<c:if test="${ pi.currentPage eq 1}">
										<button class="btn btn-secondary" disabled>이전</button>
									</c:if>
									<c:if test="${ pi.currentPage ne 1 }">
										<c:url value="inquiryList.do" var="before">
											<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
										</c:url>
										<a href="${ before }" class="btn btn-primary">이전</a>
									</c:if>
									
									<!-- 번호들 -->
									<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
										<c:if test="${ p eq pi.currentPage }">
											<button class="btn btn-secondary" disabled>${ p }</button>	
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url value="inquiryList.do" var="page">
												<c:param name="currentPage" value="${ p }"/>
											</c:url>
											<a href="${ page }" class="btn btn-primary">${ p }</a>
										</c:if>
									</c:forEach>
									
									<!-- 다음 -->
									<c:if test="${ pi.currentPage eq pi.maxPage }">
										<button class="btn btn-secondary" disabled>다음</button>
									</c:if>
									<c:if test="${ pi.currentPage ne pi.maxPage }">
										<c:url value="inquiryList.do" var="next">
											<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
										</c:url>
										<a href="${ next }" class="btn btn-primary">다음</a>
									</c:if>
		                         <div align="right">
						         	<button type="button" class="btn btn-success" onclick="location.href='iwrite.do';">글쓰기</button>
						         </div>
		                         </div>
		                      </div>
		                  </div>
		              </div>
		         </div>
            </section>
            <!-- END INQUIRY TABLE-->
            
            <script>
	            $(function() {
	            	$('#inquiryTable td').mouseenter(function() {
	            		$(this).parent().css({"background":"darkgray"}, {"cursor":"pointer"});
	            	}).mouseout(function() {
	            		$(this).parent().css({"background":"black"});
	            	}).click(function() {
	            		var num = $(this).parent().children().eq(0).text();
	            		alert(num);
	            		location.href='binsertView.do?inquiryNum=' + num; 
	            	})
	            });
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