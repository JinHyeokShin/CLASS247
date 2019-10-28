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
                            	<div class="card">
								<div class="card-header">
									<h3>
										<strong>쿠폰</strong>
									</h3>
								</div>

								<div class="card-body card-block">
								 <form action="aInsertCoupon.do" method="post" enctype="multipart/form-data" class="form-horizontal" id="createCouponForm">
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label class="form-control-label text">쿠폰 이름</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<input type="text" id="couponName" name="couponeName" required>
										</div>
										
									</div>
									
									<div class="row form-groupb">
										<div class="col col-md-2">
												<label class=" form-control-label text">쿠폰 할인 가격</label>
										</div>
										<div class="col-12 col-md-4 user">
											<input type="number" id="couponDiscount" name="couponDiscount" required>	
										</div>
									
									</div>
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">쿠폰 날짜</label>
											
										</div>
										<div>
                                             <input type="date" name="couponStartDate" class="form-control" style="width:200px; display:inline-block"> ~ 
                                             <input type="date" name="couponEndDate" class="form-control" style="width:200px;display:inline-block">
                                        </div>  
										
									</div>

									<div class="row form-groupb">
										<div class="col col-md-2">
											<label type="text" class="form-control-label text">클래스</label>
											
										</div>
										<div class="col-md-5">
											<select name="area" id="area" class="form-control" onchange="showCityBox(this)">
                                          	 	  <!-- 팝업모달 -->
                                          	 	  <option value="" disabled></option>
                                           	      <option value="서울">서울</option>
                                           	      <option value="경기">경기</option>
                                          	      <option value="인천">인천</option>
                                          	      <option value="부산">부산</option>
                                          	      <option value="경상">경상, 대구, 울산</option>
                                          	      <option value="대전">대전</option>
                                          	      <option value="강원">강원</option>
                                          	      <option value="광주">광주, 전라, 제주</option>
                                          	      <option value="기타">기타</option>
                                            </select>
										</div>
										
									</div>
								
										</form>
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