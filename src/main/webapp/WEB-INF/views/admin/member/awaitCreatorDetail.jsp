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
										<strong>크리에이터 정보</strong>
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
				
				<br>
				<div>
					<c:url value="aApprovalCourse.do" var="aApprovalCourse">
						<c:param value="${ cre.creNum }" name="creNum"/>
					</c:url>
						<input type="button" class="btn btn-outline-primary" onclick="location.href='${aApprovalCreator.do}'" value="승인하기">
						<input type="button" class="btn btn-outline-danger" onclick="location.href='${aRejectCreator.do}'" value="거부하기">
					<c:url value="aRejectCourse.do" var="aRejectCourse">
						<c:param value="${ cre.creNum }" name="creNum"/>
					</c:url>
				</div>
			</div>
			<nav class="navbar-sidebar">
				<ul class="list-unstyled navbar__list">
					<li class="has-sub" onclick="showDiv('creator');"><a
						class="js-arrow" href="#"> <i class="fas fa-users"></i>Creator
					</a></li>


				</ul>
			</nav>
		</div>
	</aside>
	


	<c:import url="../common/aImportJs.jsp" />

</body>

</html>