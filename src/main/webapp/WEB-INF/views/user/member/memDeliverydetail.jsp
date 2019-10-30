<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>CLASS 247 - 당신을 무엇을 팔 수 있습니까?</title>
    
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
    th{
    background-color: #e0a9fc;
    color:white;
    font-size: 17px !important;
    }
    td{
    font-size: 16px !important;
    }
     .section-top-border{
	   width:90%;
	 }
	.genric-btn{
	padding: 9 9 10 9;
	
	}
	.table table-hover{
	height:90%;
	
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>

 <section class="contact-section section_padding">
	  <div class="container">
	  	<br>
      		<h1>${ loginUser.memName }님의 상세조회 </h1>
      		<br>
      		<hr>
      		<br>
<div class="bs-example">
    <table class="table table-hover">
    <h3>주문 / 배송 정보</h3>
    <br>
      <tbody>
        <c:forEach items="${ delist }" var="d">
            <tr>
            	<th>배송번호</th>
                <td>${ d.payNum }</td>
                <th>주문일자</th>
                <td>${ d.payDate }</td>
            </tr>
            <tr>
                <th>주문자</th>
                <td>${ d.memName }</td>
                <th>휴대폰번호</th>
                <td>${ loginUser.memPhone }</td>
            </tr>  
            <tr>
            
                <th>주문상태</th>
                <td>
                <c:if test="${ d.deliveryStatus eq 'S'}">
							준비물출발
							</c:if>
							<c:if test="${ d.deliveryStatus eq 'I'}">
							배송중
							</c:if>
							<c:if test="${ d.deliveryStatus eq 'E'}">
							배송완료
							</c:if>
                </td>
                 <th>도착예상일</th>
                <td>2일 이내 출고될 예정입니다(3일 이내 수령가능)</td>
            </tr>
            <tr>
                <th>배송지주소</th>
                <td colspan="3">${ d.deliveryAddress }</td>
            </tr>   
        	  </c:forEach>
      	  </tbody>
    </table>
</div>
<br>
<br>
<br>
<div class="bs-example">
    <table class="table table-hover">
    <h3>결제 정보</h3>
    <br>
      <tbody>
        <c:forEach items="${ delist }" var="d">
            <tr>
            	<th>총 주문 금액</th>
                <td><fmt:formatNumber value="${d.coursePrice }" pattern="#,###" />원</td>
                <th>실 결제금액</th>
                <td><fmt:formatNumber value="${d.payPrice }" pattern="#,###" />원</td>
            </tr>
            <tr>
                <th>결제하신 금액</th>
                <td><fmt:formatNumber value="${d.coursePrice }" pattern="#,###" />원</td>
                <th>쿠폰 사용</th>
                <td>
                <c:if test="${  d.coursePrice - d.payPrice eq 0}">
							쿠폰사용안함
				</c:if>
				<c:if test="${  d.coursePrice - d.payPrice ne 0}">
							<fmt:formatNumber value="${ d.coursePrice - d.payPrice }" pattern="#,###" />원
				</c:if>
               
                </td>
            </tr>  
           
            <tr>
                <th>결제수단</th>
                <td colspan="3">
                <c:if test="${ d.payMethod eq 'K'}">
							카카오페이
				</c:if>
				<c:if test="${ d.payMethod eq 'C'}">
							일반 카드 결제
				</c:if>
                </td>
            </tr>   
        	  </c:forEach>
      	  </tbody>
    </table>
</div>
<br>
<h4 align="center">
<button class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" onclick="history.back(-1);">확인</button>
</h4>		
 </div>
</section>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

</body>
</html>                            