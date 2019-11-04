<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif+KR:600&display=swap"
	rel="stylesheet">
<title>Insert title here</title>
<style>
.ic {
	padding-right: 20px;
	padding-left: 20px;
}

.thead {
	font-size: 13px;
}

.coTitle {
	font-weight: bold;
	padding: 5px;
	color: gray;
}

#coPrice {
	font-size: 20px;
	font-family: 'Noto Serif KR', serif;
	font-weight: semi-Bold 600;
}

/* 리뷰 별점 스타일 */
.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('resources/creator/images/grade_img.png') no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 25px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 150px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	font-size: 18px;
	text-align: right;
	vertical-align: middle;
}
</style>
</head>
<body class="animsition">
	<c:import url="../common/cMenubar.jsp" />


	<div class="page-wrapper">
		<!-- PAGE CONTAINER-->
		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-13">
							<div class="card">
								<div class="card-header">
									<strong class="card-title">클래스 상세 보기</strong>
								</div>
								<div class="card-body">
									<div class="typo-headers">
										<h1 class="pb-2 display-4" align="center">${co.courseTitle }</h1>
									</div>
									<div class="vue-lists">
										<h2 class="mb-4"></h2>


										<!-- 온라인 클래스일 때  -->
										<c:if test="${ co.courseKind eq 'online' }">
											<div class="row">
												<div class="col-md-8">
													<img class="card-img-top"
														src="resources/course/images/${ cover.coaRName }"
														alt="Card image cap">
												</div>
												<div class="col-md-4 text-left">
													<div>
														<h3>ABOUT CLASS</h3>
														<br>
														<div class="coDiv">
															<span class="badge badge-danger">${co.courseKind}</span>
															<span class="badge badge-primary">${co.categoryName}</span>
														</div>
														<div class="coDiv">
															<span class="coTitle">수강가격</span><br> <span
																id="coPrice">${ co.coursePrice }원</span><span
																style="font-family: 'Noto Serif KR'; font-size: 12px;">(준비물
																미포함)</span>
														</div>
														<br>
														<div class="coDiv">
															<span class="coTitle">수강 기간</span><br>
															${co.courseStartDate} ~ ${co.courseEndDate}
														</div>
														<br>
														<div class="coDiv">
															<span class="coTitle">수강 신청 인원</span><br>
															<span class="coTitle">${co.courseCurrentNum}명 신청</span>
														</div>
														<br>
														<div class="coDiv">
															<table>
																<tr>
																	<td style="width: 300px">신청 날짜</td>
																	<td style="width: 50%">승인 날짜</td>
																</tr>
																<tr>
																	<td>${co.courseEnrollDate}</td>
																	<td>${co.courseApprovedDate}</td>
																</tr>
															</table>
														</div>
														<hr>
														<div class="coDiv">
															<table>
																<tr>
																	<td rowspan="2" class="ic"><i class="fas fa-users"></i></td>
																	<td class="thead">수강 대상</td>
																</tr>
																<tr>
																	<td>${co.courseLevel}</td>
																</tr>
																<tr>
																	<td rowspan="2" class="ic"><i
																		class="fas fa-play-circle"></i></td>
																	<td class="thead">포함 내역</td>
																	<td rowspan="2" class="ic"><i class="fas fa-inbox"></i></td>
																	<td class="thead">선택 내역</td>
																</tr>
																<tr>
																	<td>콘텐츠 이용권</td>
																	<c:if test="${!empty co.courseMaterialPrice}">
																		<td>준비물 키트</td>
																	</c:if>
																	<c:if test="${empty co.courseMaterialPrice}">
																		<td>없음</td>
																	</c:if>
																</tr>
															</table>
														</div>
														<hr>
														<c:if test="${!empty co.courseMaterial}">
															<div>
																<span class="coTitle">준비물 내역 </span><br>
																${co.courseMaterial}<br> <span class="coTitle">준비물
																	가격 </span><br> ${co.courseMaterialPrice}
															</div>
														</c:if>
														<div>
															<c:if test="${co.courseApproved == 'N'}">
																<button type="button"
																	class="btn btn-warning btn-lg btn-block"
																	onclick="location.href='<%= request.getContextPath() %>/goAddVideoPage.do?courseNum=${co.courseNum}';">동영상
																	추가하기</button>
																<br>
															</c:if>
															<button type="button"
																class="btn btn-danger btn-lg btn-block"
																onclick="cancel()">클래스 취소하기</button>
														</div>
													</div>
												</div>
											</div>
										</c:if>



										<!-- 오프라인 클래스 일 때  -->
										<c:if test="${ co.courseKind eq 'offline' }">
											<div class="row">
												<div class="col-md-8">
													<img class="card-img-top"
														src="resources/course/images/${ cover.coaRName }"
														alt="Card image cap">
												</div>
												<div class="col-md-4 text-left">
													<div>
														<h3>ABOUT CLASS</h3>
														<br>
														<div class="coDiv">
															<span class="badge badge-danger">${co.courseKind}</span>
															<span class="badge badge-primary">${co.categoryName}</span>
														</div>
														<div class="coDiv">
															<span class="coTitle">수강가격</span><br> <span
																id="coPrice">${ co.courseHours * co.courseHourPrice * co.courseCount }원</span>
														</div>
														<br>
														<div class="coDiv">
															<span class="coTitle">수강 기간</span><br>
															${co.courseStartDate} ~ ${co.courseEndDate}<br> <br>
															<span class="coTitle">수업 요일</span><br> 매주 ${co.courseDay}
															<span
																style="font-family: 'Noto Serif KR'; font-size: 12px;">총
																${co.courseCount}회</span>
														</div>
														<br>
														<div class="coDiv">
															<span class="coTitle">수강 신청 인원</span><br>
															<span class="coTitle">${co.courseCurrentNum}명 신청</span> 
															<span style="font-family: 'Noto Serif KR'; font-size: 12px;">최대인원
																${ co.courseMaxPax }명/ 최소인원 ${ co.courseMinPax }명</span>
														</div>
														<br>
														<div class="coDiv">
															<table>
																<tr>
																	<td class="coTitle" style="width: 300px">신청 날짜</td>
																	<td class="coTitle" style="width: 50%">승인 날짜</td>
																</tr>
																<tr>
																	<td>${co.courseApprovedDate}</td>
																	<td>${co.courseApprovedDate}</td>
																</tr>
															</table>
														</div>
														<hr>
														<div class="coDiv">
															<table>
																<tr>
																	<td rowspan="2" class="ic"><i class="fas fa-users"></i></td>
																	<td class="thead">수강 대상</td>
																	<td rowspan="2" class="ic"><i
																		class="fas fa-map-marker"></i></td>
																	<td class="thead">수업 지역</td>
																</tr>
																<tr>
																	<td>${ co.courseArea }</td>
																	<td>${co.courseLevel}</td>
																</tr>
																<tr>
																	<td rowspan="2" class="ic"><i class="fas  fa-won"></i></td>
																	<td class="thead">시간당 가격</td>
																	<td rowspan="2" class="ic"><i
																		class="fas fa-clock-o"></i></td>
																	<td class="thead">1회당 수업 시간</td>
																</tr>
																<tr>
																	<td>${ co.courseHourPrice }원/1시간</td>
																	<td>${ co.courseHours }시간/1회</td>
																</tr>
															</table>
														</div>
														<hr>
														<div>
															<br>
															<button type="button"
																class="btn btn-danger btn-lg btn-block"
																onclick="cancel()">클래스 취소하기</button>
														</div>
													</div>
												</div>
											</div>
										</c:if>
										<div class="row">
											<div class=".col" style="width: 100%">
												<div class="card">
													<div class="card-body">
														<div class="default-tab">
															<nav>
																<div class="nav nav-tabs" id="nav-tab" role="tablist">
																	<a class="nav-item nav-link active" id="nav-home-tab"
																		data-toggle="tab" href="#nav-home" role="tab"
																		aria-controls="nav-home" aria-selected="true">수강생</a>
																	<a class="nav-item nav-link" id="nav-profile-tab"
																		data-toggle="tab" href="#nav-profile" role="tab"
																		aria-controls="nav-profile" aria-selected="false">클래스
																		소개</a> <a class="nav-item nav-link" id="nav-contact-tab"
																		data-toggle="tab" href="#nav-contact" role="tab"
																		aria-controls="nav-contact" aria-selected="false">리뷰</a>
																</div>
															</nav>
															<div class="tab-content pl-3 pt-2" id="nav-tabContent">
																<div class="tab-pane fade show active" id="nav-home"
																	role="tabpanel" aria-labelledby="nav-home-tab">
																	<div class="table-responsive table-responsive-data2">
																		<table class="table table-data2">
																			<thead>
																				<tr>
																					<th></th>
																					<th>profile</th>
																					<th>name</th>
																					<th>class</th>
																					<th>registration</th>
																					<th>phone</th>
																					<th>status</th>
																					<th>gender</th>
																				</tr>	
																			</thead>
																			<tbody>
																				<c:if test="${ !empty stuList }">
																					<c:forEach items="${ stuList }" var="s">
																						<tr class="tr-shadow">
																							<td></td>
																							<td>
																								<div class="image img-cir img-40">
																									<img src="<%=request.getContextPath()%>/resources/user/img/profile/${s.memProfileName}"/>
																								</div>
																							</td>
																							<td>${ s.memName }</td>
																							<td><span class="block-email">${ co.courseTitle }</span>
																							</td>
																							<td>${s.payDate }</td>
																							<td>${ s.memPhone }</td>
																							<td><span class="status--process">수강</span>
																							</td>
																							<td>${s.memGender}</td>

																						</tr>
																						<tr class="spacer"></tr>
																					</c:forEach>
																				</c:if>
																				<c:if test="${ empty stuList }">
																					<tr class="tr-shadow">
																						<td colspan='8' style="text-align: center">
																							현재 수강중인 학생이 없습니다</td>
																					</tr>
																				</c:if>
																			</tbody>
																		</table>
																	</div>
																</div>
																<div class="tab-pane fade" id="nav-profile"
																	role="tabpanel" aria-labelledby="nav-profile-tab"
																	style="width: 100%">
																	<p>${co.courseContent }</p>
																</div>
																<div class="tab-pane fade" id="nav-contact"
																	role="tabpanel" aria-labelledby="nav-contact-tab">

																	<!-- 테스트 시작 -->
																	<table class="table table-data2">
																		<thead>
																			<tr>
																				<th width="5%"></th>
																				<th width="10%">user name</th>
																				<th width="5%"> score</th>
																				<th width="28%">comment</th>
																				<th width="10%">date</th>
																			</tr>
																		</thead>
																		<tbody>
																		
																			<c:if test="${ empty revlist }">
																					<tr class="tr-shadow">
																						<td colspan='5' style="text-align: center">작성된 리뷰가 없습니다.</td>
																					</tr>
																			</c:if>
																			<c:if test="${!empty revlist }">
																				<c:forEach items="${ revlist }" var="rev">
																					<tr class="tr-shadow">
																						<td>
																							<div class="image img-cir img-40">
																								<img src="<%=request.getContextPath()%>/resources/user/img/profile/${rev.memProfileName}"/>
																							</div>
																						</td>
																						<td>${ rev.memNickname }</td>
																						<td><c:if test="${rev.reviewScore eq 1}">
																								<span class="star-input"> <span
																									class="input"> <input type="radio"
																										value="1" id="p1" checked readonly> <label
																										for="p1">1</label>
																								</span>
																								</span>
																							</c:if> <c:if test="${rev.reviewScore eq 2}">
																								<span class="star-input"> <span
																									class="input"> <input type="radio"
																										value="2" id="p2" checked readonly> <label
																										for="p2">2</label>
																								</span>
																								</span>
																							</c:if> <c:if test="${rev.reviewScore eq 3}">
																								<span class="star-input"> <span
																									class="input"> <input type="radio"
																										value="3" id="p3" checked readonly> <label
																										for="p3">3</label>
																								</span>
																								</span>
																							</c:if> <c:if test="${rev.reviewScore eq 4}">
																								<span class="star-input"> <span
																									class="input"> <input type="radio"
																										value="4" id="p4" checked readonly> <label
																										for="p4">4</label>
																								</span>
																								</span>
																							</c:if> <c:if test="${rev.reviewScore eq 5}">
																								<span class="star-input"> <span
																									class="input"> <input type="radio"
																										value="5" id="p5" checked readonly> <label
																										for="p5">5</label>
																								</span>
																								</span>
																							</c:if>
																						</td>
																						<td>${rev.reviewContent }</td>
																						<td>${rev.reviewEnrollDate }</td>
																					</tr>
																					<tr class="spacer"></tr>
																				</c:forEach>
																			</c:if>
																		</tbody>
																	</table>

																	<script src="resources/user/js/jquery-1.11.3.min.js"></script>
																	<script src="resources/user/js/star.js"></script>




																	<!-- 테스트 끝  -->
																</div>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
      	function cancel() {
      		
      		var current = ${co.courseCurrentNum};
      		
      		if(current > 0) {
      			alert('현재 수강중이 있는 학생이 있어 취소가 불가합니다. 관리자에게 문의하세요.');
      			
      		} else { //현새 수강생이 없으면 취소가능
	      		if(confirm('정말 클래스를 취소하겠습니까?')) {
	      			var num = ${co.courseNum};
	      			location.href = '<%= request.getContextPath() %>/deleteCourse.do?courseNum=' + num;
	      		};
      		}
      		
      		
      	};
      
      </script>


		<section>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="copyright">
							<p>
								Copyright © 2018 Colorlib. All rights reserved. Template by <a
									href="https://colorlib.com">Colorlib</a>.
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>


	<c:import url="../common/cMenubar.jsp" />

</body>
</html>