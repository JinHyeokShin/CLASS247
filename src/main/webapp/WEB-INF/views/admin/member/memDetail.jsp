<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>AwaitCourseDetail</title>

<style>
.user {
	background: #f2f2f2;
}

.text {
	padding-top: 1px;
}
</style>

</head>





<body class="animsition">
	<c:import url="../common/aMenubar.jsp" />
	<div class="page-container2" style="">



		<!-- FORM START -->
		<section class="main-content">
			<div class="section__content section__content--p30">

				<div class="container-fluid">

					<div class="row">


						<div class="col-lg-10">
							<div class="card" id="member-div">
								<div class="card-header">
									<h3>
										<strong>회원 기본 정보</strong>
									</h3>
								</div>
								<div class="card-body card-block">
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class="form-control-label text">이메일</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ m.memId }</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">휴대폰
												번호</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ m.memPhone }</label>
										</div>
									</div>
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">이름</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ m.memName }
											</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">닉네임</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">
												${ m.memNickName }</label>
										</div>
									</div>
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">가입날짜</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">${ m.memEnrollDate }</label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">크리에이터승격날짜</label>

										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text">승격날짜</label>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">주소</label>
										</div>
										<div class="col-12 col-md-10 user">
											<label for="creID" class=" form-control-label text">${ m.memAddress }</label>
										</div>
									</div>

									<hr>

									<div id="creator-div"
										<c:if test="${ m.memType eq 'U' }">style="display:none"</c:if>>
										<div class="row form-group">
											<div class="col col-md-2">
												<label for="creID" class=" form-control-label">신분증
													인증</label>
											</div>
											<div class="col-12 col-md-9">

												<c:forEach items="${ craList }" var="craList">
													<div class="image img-240">
														<img
															src="/class247/resources/creator/creatorImages/${ craList.craRname }">
													</div>

												</c:forEach>

											</div>

										</div>
										<hr>
										<div class="row form-group">
											<div class="col col-md-2">
												<label for="education" class=" form-control-label">학력</label>
											</div>
											<div class="col-12 col-md-9">
												<label for="creID" class=" form-control-label text">${ cre.education }</label>

											</div>
										</div>
										<hr>
										<div class="row form-group">
											<div class="col col-md-2">
												<label for="career" class=" form-control-label">경력</label>
											</div>
											<div class="col-12 col-md-9">
												<label for="creID" class=" form-control-label text">${ cre.career }</label>

											</div>
										</div>
										<hr>
										<div class="row form-group">
											<div class="col col-md-2">
												<label for="certification" class=" form-control-label">자격증</label>
											</div>
											<div class="col-12 col-md-9">
												<label for="creID" class=" form-control-label text">${ cre.certification }</label>
											</div>
										</div>
										<hr>
										<div class="row form-group">
											<div class="col col-md-2">
												<label for="introduction" class=" form-control-label">자기소개</label>
											</div>
											<div class="col-12 col-md-9">
												<label for="creID" class=" form-control-label text">${ cre.introduction }</label>

											</div>
										</div>
									</div>



								</div>
							</div>
						</div>




						<div class="col-lg-10" id="course-div" style="display: none">
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






						<div class="col-lg-10" id="payment-div" style="display: none">
							<h2 class="title-1 m-b-25">거래 내역</h2>
							<div class="table-responsive table--no-card m-b-40">
								<table
									class="table table-borderless table-striped table-earning">
									<thead>
										<tr>
											<th>No</th>
											<th>강의 이름</th>
											<th>가격</th>
											<th>결제방법</th>
											<th>결제 날짜</th>
											<th>결제 취소 여부</th>
											<th>결제 취소 날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${ pList }" var="pList">


											<tr>
												<td>${pList.payNum }</td>
												<td>${pList.courseTitle}</td>

												<td>${pList.payPrice}</td>

												<td>${pList.payMethod}</td>
												<td>${pList.payDate}</td>
												<td><c:if test="${payCancel ne 'null'}"> ${pList.payCancel}</c:if></td>
												<td><c:if test="${!empty payCancelDate}">"${pList.payCancelDate}</c:if></td>
											</tr>


										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>






						<div class="col-lg-10">
							<div class="card" id="takecourse-div" style="display: none">
								<div class="card-header">
									<h3>
										<strong>수강한 클래스</strong>
									</h3>
								</div>
								<div class="card-body card-block">
									<div class="row">
										가나다
										<c:forEach items="${ coListU }" var="coListU">


											<div class="col-md-5">
												<div class="card" onclick="">
													<img style="height: 250px" class="card-img-top"
														src="resources/course/images/${ coListU.coaRName }"
														alt="Card image cap">
													<div class="card-body">
														<h4 style="display: inline;" class="card-title mb-3">${coListU.courseTitle}</h4>
														<span class="badge badge-danger"> <c:if
																test="${coListU.courseKind eq 'offline' }">오프라인 </c:if>
															<c:if test="${coListU.courseKind eq 'online' }">온라인 </c:if>
														</span> <label>${coListU.categoryName}</label> <label>수준
															: ${coListU.courseLevel} &nbsp;&nbsp;&nbsp;등록일 :
															${coListU.courseEnrollDate }</label> <label>가격 :
															${coListU.coursePrice } &nbsp;&nbsp;&nbsp;좋아요 :
															${coListU.loveCount }</label> <label>날짜 :
															${coListU.courseStartDate} ~ ${ coListU.courseEndDate }</label>
													</div>
												</div>
											</div>


										</c:forEach>

									</div>

								</div>
							</div>
						</div>











					</div>
				</div>
			</div>

		</section>
	</div>


	<aside style='top: 75px; left: 85%; z-index: 2'
		class="menu-sidebar d-none d-lg-block">

		<div class="menu-sidebar__content js-scrollbar1">
			<div class="account2">
				<div class="image img-cir img-120">
					<img
						src="<%=request.getContextPath()%>/resources/creator/images/icon/may.jpg" />
				</div>
				<h4 class="name">${ m.memNickName }</h4>

				<br>
				<div>
					<c:url value="goBlack.do" var="goBlack">
						<c:param value="${ m.memNum }" name="goBlack"/>
					</c:url>
						<input type="button" class="btn btn-outline-primary" onclick="location.href='${goBlack}'" value="블랙하기">
					<c:if test="${ m.status == 'N' }">
						<input type="button" class="btn btn-outline-danger" onclick="location.href='${aRejectCourse}'" value="거부하기">
					</c:if>
				</div>
			</div>
			<nav class="navbar-sidebar">
				<ul class="list-unstyled navbar__list">
					<c:if test="${ m.memType eq 'U' }">
						<li class="has-sub" onclick="showDiv('member');"><a
							class="js-arrow" href="#"> <i class="fas fa-users"></i>
								Member
						</a></li>
					</c:if>
					<c:if test="${ m.memType eq 'C' }">
						<li class="has-sub" onclick="showDiv('creator');"><a
							class="js-arrow" href="#"> <i class="fas fa-users"></i>Creator
						</a></li>
					</c:if>

					<c:if test="${ !empty coList }">
						<li class="has-sub" onclick="showDiv('course');"><a
							class="js-arrow" href="#"> <i class="fas fa-users"></i>Course
						</a></li>
					</c:if>

					<li class="has-sub" onclick="showDiv('payment');"><a
						class="js-arrow" href="#"> <i class="fas fa-users"></i>Payment
					</a></li>


					<c:if test="${ !empty coListU }">
						<li class="has-sub" onclick="showDiv('takecourse');"><a
							class="js-arrow" href="#"> <i class="fas fa-users"></i>TakeCourse
						</a></li>
					</c:if>


				</ul>
			</nav>
		</div>
	</aside>
	<script>
		function showDiv(div) {

			if (div == 'member') {
				$("#member-div").css("display", "");
				$("#course-div").css("display", "none");
				$("#payment-div").css("display", "none");
				$("#takecourse-div").css("display", "none");
			} else if (div == 'creator') {
				$("#member-div").css("display", "");
				$("#creator-div").css("display", "");
				$("#course-div").css("display", "none");
				$("#payment-div").css("display", "none");
				$("#takecourse-div").css("display", "none");
			} else if (div == 'course') {
				$("#member-div").css("display", "none");
				$("#creator-div").css("display", "none");
				$("#course-div").css("display", "");
				$("#payment-div").css("display", "none");
				$("#takecourse-div").css("display", "none");
			} else if (div == 'payment') {
				$("#member-div").css("display", "none");
				$("#creator-div").css("display", "none");
				$("#course-div").css("display", "none");
				$("#payment-div").css("display", "");
				$("#takecourse-div").css("display", "none");
			} else if (div == 'takecourse') {
				$("#member-div").css("display", "none");
				$("#creator-div").css("display", "none");
				$("#course-div").css("display", "none");
				$("#payment-div").css("display", "none");
				$("#takecourse-div").css("display", "");
			}

		}
	</script>


	<c:import url="../common/aImportJs.jsp" />

</body>

</html>