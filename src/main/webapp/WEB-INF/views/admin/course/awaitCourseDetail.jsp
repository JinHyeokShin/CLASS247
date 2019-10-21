<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>AwaitCourseDetail</title>

<style>
	.user{
		background:#f2f2f2;
	}
	
	.text{
		padding-top:1px;
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
							<div class="card" id="creator-div">
								<div class="card-header">
									<h3>
										<strong>크리에이터 기본 정보</strong>
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
											<label for="creID" class=" form-control-label text">휴대폰 번호</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text" >${ m.memPhone }</label>
										</div>
									</div>
									<div class="row form-groupb">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">이름</label>
											
										</div>
										<div class="col-12 col-md-4 user" >
											<label for="creID" class=" form-control-label text">${ m.memName } </label>
										</div>
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label text">닉네임</label>
											
										</div>
										<div class="col-12 col-md-4 user">
											<label for="creID" class=" form-control-label text"> ${ m.memNickName }</label>
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

									<div class="row form-group">
										<div class="col col-md-2">
											<label for="creID" class=" form-control-label">신분증
												인증</label>
										</div>
										<div class="col-12 col-md-9">
								
											<c:forEach items="${ craList }" var="craList">
											<div class="image img-240">
												<img src="/class247/resources/creator/creatorImages/${ craList.craRname }">
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




							<div class="card" id="course-div" style="display:none">
								<div class="card-header">
									<h3>
										<strong>클래스 기본 정보</strong>
									</h3>
								</div>
								<div class="card-body card-block">

									<div class="form-group">
										<label class=" form-control-label">클래스 종류</label><br>
										<div class="form-check-inline form-check">
											<label for="online" class="form-check-label ">
											 <input type="radio" id="online" name="courseKind" value="online" class="form-check-input" disabled <c:if test="${co.courseKind eq 'online' }"> checked</c:if>>온라인 클래스</label>
												&nbsp;&nbsp;
											 <label for="offline" class="form-check-label ">
											 <input type="radio" id="offline" name="courseKind" value="offline"	class="form-check-input" disabled <c:if test="${co.courseKind eq 'offline' }"> checked</c:if>>오프라인 클래스
											</label>
										</div>
									</div>
									<hr>
									<div class="form-group">
										<label for="class_title" class=" form-control-label">
											클래스 제목</label> 
										
										<label for="creID" class=" form-control-label text">${ co.courseMaterial }</label>
									</div>
									<hr>
									<div class="form-group">
										<label for="categoryNum" class=" form-control-label">
											클래스 카테고리</label>
										<div class="col-md-3">
											 <select name="categoryNum" id="categoryNum" class="form-control" disabled>
                                                  	      <option>${ co.categoryName }</option>
                                              </select>
										</div>

									</div>
									<hr>
									<div class="form-group">
										<label for="select" class=" form-control-label">클래스
											수강 대상</label>
										<div class="col-md-3">
											<select name="courseLevel" id="courseLevel"
												class="form-control" disabled>
												<option>${ co.courseLevel }</option>
												
											</select>
										</div>
									
									</div>
									<hr>
									<div class="form-group">
										<label for="class_content" class=" form-control-label">
											클래스 상세 정보</label>
										<textarea name="courseContent" rows="9"
											class="form-control" disabled>${ co.courseContent }</textarea>
									</div>
									<hr>

								</div>


							</div>
			






						<div class="card" id="detail-div" style="display:none">
							<div class="card-header">
								<h3>
									<strong>
									<c:if test="${co.courseKind eq 'offline' }">오프라인 </c:if>
									<c:if test="${co.courseKind eq 'online' }">온라인 </c:if>
									
									 클래스 상세보기										
									 
									 </strong>
								</h3>
							</div>
							<div class="card-body card-block">
								<div class="form-group">
									<label class=" form-control-label">준비물 여부</label><br>
									<div class="form-check-inline form-check">
										<label for="noMaterial" class="form-check-label "> <input
											type="radio" id="noMaterial" name="materialCheck" value=""
											class="form-check-input" onchange="check()" disabled <c:if test="${empty co.courseMaterial}">checked</c:if>>준비물
											없음 &nbsp;&nbsp;
										</label> <label for="material" class="form-check-label"> <input
											type="radio" id="material" name="materialCheck"
											class="form-check-input" onchange="check()" disabled <c:if test="${!empty co.courseMaterial}">checked</c:if>>준비물 추가
										</label>
									
									</div>
									<c:if test="${!empty co.courseMaterial}">>
									<div class="form-group" id="meterialBox" style="display: none">
										<table id="meterialTable">
											<tr>
												<td>
													${co.courseMaterial}
												</td>
												<td width="300">
													${co.courseMaterialPrice }
												</td>
											</tr>
										</table>
									</div>
									</c:if>
								</div>


								<div class="form-group">
									<label class=" form-control-label">* 수업 날짜/시간</label><br>
									<div>
										${co.courseStartDate } ~ ${co.courseEndDate }
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label class=" form-control-label">* 온라인 수업 가격</label><br>
									${co.coursePrice } 원
								</div>
								<hr>
								<div class="form-group">
									<label class=" form-control-label"> 샘플 영상등록</label><br>
									<div class="">
										<input type="text"
											
											name="CourseVideoUrl" class="form-control"
											style="width: 300px; display: inline-block " value="${co.courseVideoUrl}" disabled> 
										<br>
									</div>
									
								</div>
								<hr>
								<div class="form-group">
									<div class="col col-md-5">
										<label for="text-input" class=" form-control-label">
											클래스 커버 사진</label> 
										<img src="">
									</div>
								</div>
								<hr>
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
						src="<%=request.getContextPath()%>/resources/creator/images/icon/may.jpg"
						alt="Meseon Han" />
				</div>
				<h4 class="name">${ m.memName }</h4>
				<h4 class="name">${ co.courseTitle }</h4>
				
				<br>
				<div>
					<c:url value="aApprovalCourse.do" var="aApprovalCourse">
						<c:param value="${ co.courseNum }" name="courseNum"/>
					</c:url>
						<input type="button" class="btn btn-outline-primary" onclick="location.href='${aApprovalCourse.do}'" value="승인하기">
						<input type="button" class="btn btn-outline-danger" onclick="location.href='${aRejectCourse.do}'" value="거부하기">
					<c:url value="aRejectCourse.do" var="aRejectCourse">
						<c:param value="${ co.courseNum }" name="courseNum"/>
					</c:url>
				</div>
			</div>
			<nav class="navbar-sidebar">
				<ul class="list-unstyled navbar__list">
					<li class="has-sub" onclick="showDiv('creator');"><a
						class="js-arrow" href="#"> <i class="fas fa-users"></i>Creator
					</a></li>

					<li class="has-sub" onclick="showDiv('course');"><a
						class="js-arrow" href="#"> <i class="fas fa-users"></i>Course
					</a></li>
					<li class="has-sub" onclick="showDiv('detail');"><a
						class="js-arrow" href="#"> <i class="fas fa-users"></i>
															<c:if test="${co.courseKind eq 'offline' }">offline </c:if>
									<c:if test="${co.courseKind eq 'online' }">online </c:if>
						
						
						
				
					</a></li>
					
					

				</ul>
			</nav>
		</div>
	</aside>
	<script>
		function showDiv(div) {

			if (div == 'creator') {
				$("#creator-div").css("display", "");
				$("#course-div").css("display", "none");
				$("#detail-div").css("display", "none");
			} else if (div == 'course') {
				
				$("#creator-div").css("display", "none");
				$("#course-div").css("display", "");
				$("#detail-div").css("display", "none");
			} else if (div == 'detail') {
				
				$("#creator-div").css("display", "none");
				$("#course-div").css("display", "none");
				$("#detail-div").css("display", "");
				
			}

		}
		
	</script>


	<c:import url="../common/aImportJs.jsp" />

</body>

</html>