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
											 <select name="categoryNum" id="categoryNum" class="form-control">
                                                  	      <option>가나</option>
                                              </select>
										</div>
										<small class="help-block form-text">어느 역량의 수강생을 위한
											클래스인지 선택해주세요.</small>
									</div>
									<hr>
									<div class="form-group">
										<label for="select" class=" form-control-label">* 클래스
											수강 대상</label>
										<div class="col-md-3">
											<select name="courseLevel" id="courseLevel"
												class="form-control" required>
												<option value="입문자">입문자</option>
												<option value="초급자">초급자</option>
												<option value="중급자">중급자</option>
												<option value="준전문가">준전문가</option>
												<option value="전문가">전문가</option>
												<option value="무관">무관</option>
											</select>
										</div>
										<small class="help-block form-text">어느 역량의 수강생을 위한
											클래스인지 선택해주세요.</small>
									</div>
									<hr>
									<div class="form-group">
										<label for="class_content" class=" form-control-label">*
											클래스 상세 정보</label>
										<textarea name="courseContent" rows="9"
											placeholder="클래스에 대한 소개 및 커리큘럼을 작성해주세요. "
											class="form-control" required></textarea>
										<input type="hidden" name="creNum" value="${ creator.creNum }">
									</div>
									<hr>

								</div>


							</div>
			






						<div class="card" id="detail-div" style="display:none">
							<div class="card-header">
								<h3>
									<strong>온라인 클래스 상세정보</strong>
								</h3>
							</div>
							<div class="card-body card-block">
								<div class="form-group">
									<label class=" form-control-label">* 준비물 여부</label><br>
									<div class="form-check-inline form-check">
										<label for="noMaterial" class="form-check-label "> <input
											type="radio" id="noMaterial" name="materialCheck" value=""
											class="form-check-input" onchange="check()" checked>준비물
											없음 &nbsp;&nbsp;
										</label> <label for="material" class="form-check-label"> <input
											type="radio" id="material" name="materialCheck"
											class="form-check-input" onchange="check()">준비물 추가
										</label>
									</div>
									<small class="help-block form-text">&nbsp;수업에 필요한 준비물이
										있다면 입력해주세요.</small>
									<div class="form-group" id="meterialBox" style="display: none">
										<table id="meterialTable">
											<tr>
												<td><input type="text" name="courseMaterial"
													placeholder="준비물 이름" class="form-control">
												<td>
												<td><button type="button" onclick="add()"
														class="btn btn-primary btn-sm">추가</button>
												<td>
												<td></td>
												<td width="300">&nbsp;&nbsp;&nbsp;<input type="number"
													name="courseMaterialPrice" placeholder="준비물 총 가격 입력"
													class="form-control" required>원
												</td>
											</tr>
										</table>
									</div>
								</div>


								<div class="form-group">
									<label class=" form-control-label">* 수업 날짜/시간</label><br>
									<div>
										<input type="date" name="courseStartDate" class="form-control"
											style="width: 200px; display: inline-block"> ~ <input
											type="date" name="courseEndDate" class="form-control"
											style="width: 200px; display: inline-block">
									</div>
									<small class="help-block form-text">수업 시작일과 종료일을
										입력해주세요(최소 1개월)</small>
								</div>
								<hr>
								<div class="form-group">
									<label class=" form-control-label">* 온라인 수업 가격</label><br>
									<input type="number" class="form-control"
										placeholder="수업의 총 가격을 입력하세요." name="coursePrice"
										style="width: 300px; display: inline-block" required>
									원
								</div>
								<hr>
								<div class="form-group">
									<label class=" form-control-label"> 샘플 영상등록</label><br>
									<div class="">
										<input type="text"
											placeholder="ex) http://youbute/1stCl2as4s7"
											name="CourseVideoUrl" class="form-control"
											style="width: 300px; display: inline-block"> 원
										&nbsp;&nbsp; <small class="help-block form-text"> 수업
											샘플 영상의 url을 입력해주세요.</small><br>
									</div>
									<input type="hidden" name="categoryNum"
										value="${ co.categoryNum }"> <input type="hidden"
										name="creNum" value="${ co.creNum }"> <input
										type="hidden" name="courseTitle" value="${ co.courseTitle }">
									<input type="hidden" name="courseContent"
										value="${ co.courseContent }"> <input type="hidden"
										name="courseKind" value="${ co.courseKind }"> <input
										type="hidden" name="courseLevel" value="${ co.courseLevel }">
								</div>
								<hr>
								<div class="form-group">
									<div class="col col-md-5">
										<label for="text-input" class=" form-control-label">*
											클래스 커버 사진</label> <input class="" type="file" name="coverImage"
											required>
									</div>
									<div class="col-12 col-md-9" style="height: 200px">
										<small class="help-block form-text">클래스를 대표할 커버사진을
											추가하세요.</small>
										<div
											style="width: 40%; height: 40%; margin-top: 10px; text-align: center">
											<img src="resources/creator/images/bg-title-02.jpg"
												alt="cover" />
										</div>
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
						<input type="button" class="btn btn-outline-primary" onclick="location.href='${aApprovalCourse}'" value="승인하기">
						<input type="button" class="btn btn-outline-danger" onclick="select('reject')" value="거부하기">
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
						class="js-arrow" href="#"> <i class="fas fa-users"></i>detail
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