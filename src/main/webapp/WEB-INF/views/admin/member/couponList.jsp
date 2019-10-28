<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<title>Coupone</title>

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
                                <h2 class="title-1 m-b-25" style="display:inline-block">쿠폰 리스트</h2>
                                <input class="btn btn-outline-primary" style="float:right" type="button" value="쿠폰  생성하기" onclick="location.href='aCreateCouponView.do'">
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>쿠폰이름</th>
                                                <th>할인가격</th>
                                                <th class="text-right">시작날짜</th>
                                                <th class="text-right">종료날짜</th>
                                                <th class="text-right">남은 수량</th>
                                            </tr>
                                        	
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${list}" var="co">
                                            <tr>
                                               
                                                <td>${ co.couponType }</td>
                                                 
                                        		<td>
												  <c:url value="aCouponDetail.do" var="coDetail">
                                                	<c:param name="couponType" value="${ co.couponType }"/>
                                                  </c:url>
                                                  <a style="color:black" href="${coDetail}">${co.couponName }</a></td>
                                                <td> ${co.couponDiscount }</td>
                                                <td class="text-right">${ co.couponStartDate}</td>
                                                <td class="text-right">${ co.couponEndDate }</td>
                                                <td class="text-right">${ co.amount }</td>
                                               	
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