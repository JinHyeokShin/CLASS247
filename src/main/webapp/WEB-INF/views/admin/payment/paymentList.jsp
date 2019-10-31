<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<title>FAQ List</title>

</head>

<body class="animsition">

	<c:import url="../common/aMenubar.jsp"/>
        <div class="page-container2">

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25">모든 결제 내역</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>결제번호</th>
                                                <th>결제코드</th>
                                                <th>결제자</th>
                                                <th>클래스이름</th>
                                                <th class="text-right">결제금액</th>
                                                <th class="text-right">결제날짜</th>
                                                <th class="text-right">결제수단</th>
                                                <th class="text-right">결제상태</th>
                                            </tr>
                                        	
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${pList}" var="p">
                                            <tr>
                                               
                                                <td>${ p.payNum }</td>
                                                <td>
												  <c:url value="aPayDetail.do" var="PayDetail">
                                                	<c:param name="payNum" value="${ p.payCode }"/>
                                                  </c:url>
                                                  <a style="color:black" href="${payDetail}">${p.payCode }</a></td>
                                                <td>${ p.memName }</td>
                                                <td>${ p.courseTitle }</td>
                                                 
                                        		
                                                <td class="text-right">${ p.payPrice }</td>
                                                <td class="text-right">${ p.payDate }</td>
                                                <td class="text-right">${ p.payMethod }</td>
                                                <td class="text-right">
                                               		<c:if test="${p.payCancel eq 'Y'}">Y</c:if>
                                               		<c:if test="${p.payCancel eq 'N'}">N</c:if>                                              	
                                               	</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                     <div align="center">
                                		<!-- 이전버튼 -->
							    		<c:if test="${ pi1.currentPage eq 1 }">
							    			[이전]
							    		</c:if>
							    		<c:if test="${ pi1.currentPage ne 1 }">
											<c:url value="aPayment.do" var='before'>
												<c:param name="currentPage1" value="${ pi1.currentPage -1 }"/>
											</c:url>
							    			<a href="${ before }">[이전]</a>
							    		</c:if>
							    		
							    		<!-- 번호 -->
							    		<c:forEach begin="${ pi.startPage }" end="${ pi1.endPage }" var="p">
							    			<c:if test="${ p eq pi1.currentPage }">
							    				<font color="black" size="4">[${ p }]</font>
							    			</c:if>
							    			<c:if test="${ p ne pi1.currentPage }">
							    				<c:url value="aPayment.do" var="page">
							    					<c:param name="currentPage1" value="${ p }"/>
							    				</c:url>
							    				<a href="${ page }">${ p }</a>
							    			</c:if>
							    		</c:forEach>
							    		
							    		<!-- 다음버튼 -->
							    		<c:if test="${ pi1.currentPage eq pi1.maxPage }">
							    			[다음]
							    		</c:if>
							    		<c:if test="${ pi1.currentPage ne pi1.maxPage}">
							    			<c:url value="aPayment.do" var="next">
							    				<c:param name="currentPage1" value="${ pi1.currentPage + 1 }"/>
							    			</c:url>
							    			<a href="${ next }"> [다음]</a>
							    		</c:if>
                                   </div>
                                </div>
                                
                                <br><hr><br>
                                
                                <!-- 보류 -->
                                <h2 class="title-1 m-b-25">Power List</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>결제번호</th>
                                                <th>결제코드</th>
                                                <th>결제자</th>
                                                <th>클래스이름</th>
                                                <th class="text-right">결제금액</th>
                                                <th class="text-right">결제날짜</th>
                                                <th class="text-right">결제수단</th>
                                                <th class="text-right">결제상태</th>
                                            </tr>
                                        	
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${poList}" var="po">
                                            <tr>
                                               
                                                <td>${ po.payNum }</td>
                                                <td>
												  <c:url value="aPayDetail.do" var="PayDetail">
                                                	<c:param name="payNum" value="${ po.payCode }"/>
                                                  </c:url>
                                                  <a style="color:black" href="${payDetail}">${po.payCode }</a></td>
                                                <td>${ po.memName }</td>
                                                <td>${ po.courseTitle }</td>
                                                 
                                        		
                                                <td class="text-right">${ po.payPrice }</td>
                                                <td class="text-right">${ po.payDate }</td>
                                                <td class="text-right">${ po.payMethod }</td>
                                                <td class="text-right">
                                               		<c:if test="${po.payCancel eq 'Y'}">Y</c:if>
                                               		<c:if test="${po.payCancel eq 'N'}">N</c:if>                                              	
                                               	</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                         <div align="center">
                                		<!-- 이전버튼 -->
							    		<c:if test="${ pi2.currentPage eq 1 }">
							    			[이전]
							    		</c:if>
							    		<c:if test="${ pi2.currentPage ne 1 }">
											<c:url value="aPayment.do" var='before'>
												<c:param name="currentPage2" value="${ pi2.currentPage -1 }"/>
											</c:url>
							    			<a href="${ before }">[이전]</a>
							    		</c:if>
							    		
							    		<!-- 번호 -->
							    		<c:forEach begin="${ pi2.startPage }" end="${ pi.endPage }" var="p">
							    			<c:if test="${ p eq pi.currentPage }">
							    				<font color="black" size="4">[${ p }]</font>
							    			</c:if>
							    			<c:if test="${ p ne pi2.currentPage }">
							    				<c:url value="aPayment.do" var="page">
							    					<c:param name="currentPage2" value="${ p }"/>
							    				</c:url>
							    				<a href="${ page }">${ p }</a>
							    			</c:if>
							    		</c:forEach>
							    		
							    		<!-- 다음버튼 -->
							    		<c:if test="${ pi2.currentPage eq pi2.maxPage }">
							    			[다음]
							    		</c:if>
							    		<c:if test="${ pi2.currentPage ne pi2.maxPage}">
							    			<c:url value="aPayment.do" var="next">
							    				<c:param name="currentPage2" value="${ pi2.currentPage + 1 }"/>
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
            

            </div>
 	<c:import url="../common/aImportJs.jsp"/>



</body>

</html>