<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Coupone</title>

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
							<div class="card">
								<div class="card-header">
									<h3>
										<strong>쿠폰</strong>
									</h3>
								</div>

								<div class="card-body card-block">
									<form action="aInsertCoupon.do" method="post"
										enctype="multipart/form-data" class="form-horizontal"
										id="createCouponForm">
										<div class="row form-groupb">
											<div class="col col-md-2">
												<label class="form-control-label text">쿠폰 이름</label>

											</div>
											<div class="col-12 col-md-4 user">
												<input type="text" id="couponName" name="couponName"
													required>
											</div>

										</div>

										<div class="row form-groupb">
											<div class="col col-md-2">
												<label class=" form-control-label text">쿠폰 할인 가격</label>
											</div>
											<div class="col-12 col-md-4 user">
												<input type="number" id="couponDiscount"
													name="couponDiscount" required>
											</div>

										</div>
										<div class="row form-groupb">
											<div class="col col-md-2">
												<label for="creID" class=" form-control-label text">쿠폰
													날짜</label>

											</div>
											<div>
												<input type="date" name="couponStartDate"
													class="form-control"
													style="width: 200px; display: inline-block"> ~ <input
													type="date" name="couponEndDate" class="form-control"
													style="width: 200px; display: inline-block">
											</div>

										</div>
										
										<button class="btn btn-outline-primary" type="submit">쿠폰 생성</button>

									</form>
								</div>
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