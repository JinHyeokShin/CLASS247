<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<title>영수증</title>
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
                                <h2 class="title-1 m-b-25">전체영수증</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                	<div>
                                		<input type="button" onclick="location.href='insertPeceipt.do';" value="결산하기">
                                	</div>
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>수업번호</th>
                                                <th>수업제목</th>
                                                <th class="text-right">이름</th>
                                                <th class="text-right">가격</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody id="contacts">
                                      	<c:forEach items="${ list }" var="n">
                                        
                                            <tr>
                                            <td>${n.courseNum}</td>
                                                <td>

                                                		${n.courseTitle }
                                                </td>
                                                <td>${n.memNickName}</td>

                                                <td>
                                                	${n.loveCount }
                                                </td>
                                            
                                            </tr>
                                         </c:forEach>
                                           
                                        </tbody>
                                        <tfoot>
                                        	<tr>총 갯수</tr>
                                        	<tr>${count }</tr>
                                        	<tr>총 가격</tr>
                                        	<tr>${sum }</tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div align="center">
                                		<!-- 이전버튼 -->
							    		<c:if test="${ pi.currentPage eq 1 }">
							    			[이전]
							    		</c:if>
							    		<c:if test="${ pi.currentPage ne 1 }">
											<c:url value="aAPeceipt.do" var='before'>
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
							    				<c:url value="aAPeceipt.do" var="page">
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
							    			<c:url value="aAPeceipt.do" var="next">
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