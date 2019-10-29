<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>FAQ List</title>

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

							<!-- 공사중 -->
							<div class="card">
								<div class="card-header">
									<h3>
										<strong>쿠폰</strong>
									</h3>
								</div>

								<div class="card-body card-block">
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class="form-control-label text">쿠폰
												이름</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ co.couponName }</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">쿠폰
												할인 가격</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ co.couponDiscount }</label>
										</div>
									</div>
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">쿠폰
												시작 날짜</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ co.couponStartDate }
											</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">쿠폰
												종료 날짜</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">
												${c.couponEndDate }</label>
										</div>
									</div>

									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class="form-control-label text">남은
												수량</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ co.amount }</label>
										</div>

									</div>
									
						
									
					
			        
			        
									
								</div>
						
							</div>
							<form action="aGiveCouponCourse.do" method="post"
										enctype="multipart/form-data" class="form-horizontal"
										id="aGiveCouponCourse">
									<input name="courseNum" type="number">
									<input type="hidden" name="couponNum" value="${co.couponType }">
									<button class="btn btn-outline-primary" type="submit" >쿠폰 뿌리기</button>
							</form>
							<br>
							<hr>
							<br>

							<!-- 보류 -->
							<h2 class="title-1 m-b-25">User List</h2>
							<div class="table-responsive table--no-card m-b-40">
								<table
									class="table table-borderless table-striped table-earning">
									<thead>
										<tr>
											<th>발급번호</th>
											<th>회원이름</th>
											<th class="text-right">발급날짜</th>
											<th class="text-right">쿠폰 사용 날짜</th>

										</tr>

									</thead>
									<tbody>
										<c:forEach items="${gcList}" var="gc">
											<tr>

												<td>${ gc.givecouponNum }</td>
												<td>${ gc.memId }</td>
												<td class="text-right">${ gc.givecouponEnrolledDate }</td>
												<td class="text-right">${ gc.givecouponStatus }</td>


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
	<c:import url="../common/aImportJs.jsp" />



</body>

</html>