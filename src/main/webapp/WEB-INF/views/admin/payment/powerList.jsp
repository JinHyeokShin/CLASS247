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

							<!-- 공사중 -->								
							<div class="card">
								<div class="card-header">
									<h3>
										<strong>크리에이터 개설한 강좌</strong>
									</h3>
								</div>

								<div class="card-body card-block">
									<div class="row form-groupb">
										<c:forEach items="${ coList }" var="coList">


											<div class="col-12 col-md-5">
												<div class="card" onclick="">
													<img style="height: 250px" class="card-img-top"
														src="resources/course/images/${ coList.coaRName }"
														alt="Card image cap">
													<div class="card-body">
														<h4 style="display: inline;" class="card-title mb-3">${coList.courseTitle}</h4>
														<span class="badge badge-danger"> <c:if
																test="${coList.courseKind eq 'offline' }">오프라인 </c:if> <c:if
																test="${coList.courseKind eq 'online' }">온라인 </c:if>
														</span> <label>${coList.categoryName}</label> <label>수준 :
															${coList.courseLevel} &nbsp;&nbsp;&nbsp;등록일 :
															${coList.courseEnrollDate }</label> <label>가격 :
															${coList.coursePrice } &nbsp;&nbsp;&nbsp;좋아요 :
															${coList.loveCount }</label> <label>날짜 :
															${coList.courseStartDate} ~ ${ coList.courseEndDate }</label>
													</div>
												</div>
											</div>


										</c:forEach>

									</div>

								</div>
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