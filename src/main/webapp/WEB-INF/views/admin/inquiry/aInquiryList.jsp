<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 질문 답변</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>

	<c:import url="../common/aMenubar.jsp"/>
        <div class="page-container2">

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25">문의사항 답변</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>문의번호</th>
                                                <th>회원번호</th>
                                                <th>문의제목</th>
                                                <th class="text-right">작성날짜</th>
                                                <th class="text-right">첨부파일</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                      
                                        <c:forEach items="${ aiList }" var="ai">
                                        
                                            <tr>
                                            <td>${ai.inquiryNum}</td>
                                            <td>${ai.creNum}</td>
                                                <td>
	                                                <c:if test="${empty loginUser }">
	                                                	${ai.inquiryTitle}
                                                	</c:if>
                                                	<c:if test="${!empty loginUser }">
                                                		<c:url value="aIdetail.do" var="aIdetail">
                                                			<c:param name="inquiryNum" value="${ ai.inquiryNum }"/>
                                                		</c:url>
                                                		<a href ="${ aIdetail }" style="color:black;">${ai.inquiryTitle } </a>
                                                	</c:if>
                                                </td>                                          
                                                <td class="text-right">${n.noticeEnrollDate}</td>
                                                <td>
                                                	<c:if test="${ !empty n.noticeFileName }">
														◎
													</c:if>
													<c:if test="${ empty n.noticeFileName }">
														&nbsp;
													</c:if>
                                                </td>
                                            
                                            </tr>
                                         </c:forEach>
                                           
                                        </tbody>
                                    </table>
                                </div>
                                <div align="center">
                                		<!-- 이전버튼 -->
							    		<c:if test="${ pi.currentPage eq 1 }">
							    			[이전]
							    		</c:if>
							    		<c:if test="${ pi.currentPage ne 1 }">
											<c:url value="adminInquriyList.do" var='before'>
												<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
											</c:url>
							    			<a href="${ before }">[이전]</a>
							    		</c:if>
							    		
							    		<!-- 번호 -->
							    		<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
							    			<c:if test="${ p eq pi.currentPage }">
							    				<font color="black" size="4">[${ p }]</font>
							    			</c:if>
							    			<c:if test="${ p ne pi.currentPage }">
							    				<c:url value="adminInquriyList.do" var="page">
							    					<c:param name="currentPage" value="${ p }"/>
							    				</c:url>
							    				<a href="${ page }">${ p }</a>
							    			</c:if>
							    		</c:forEach>
							    		
							    		<!-- 다음버튼 -->
							    		<c:if test="${ pi.currentPage eq pi.maxPage }">
							    			[다음]
							    		</c:if>
							    		<c:if test="${ pi.currentPage ne pi.maxPage}">
							    			<c:url value="adminInquriyList.do" var="next">
							    				<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							    			</c:url>
							    			<a href="${ next }"> [다음]</a>
							    		</c:if>	
                                       
                                   </div>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
            

            </div>
 	<c:import url="../common/aImportJs.jsp"/>
	

</body>
</html>