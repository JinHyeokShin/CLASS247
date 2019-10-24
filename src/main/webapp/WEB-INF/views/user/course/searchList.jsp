<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>
	<section class="special_cource padding_top" style="padding-top:100px">
		<div class="container" >
			<hr>
			<h1>검색어로 검색하기</h1>
			<hr>
			</div>
	</section>
	<c:if test="${ !empty list }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>'${search}'로</p>
							<h2>검색한 결과입니다.</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ list }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<img src="resources/user/img/test1.jpeg" class="special_img"
									alt="" onclick="location.href=${codetail}">
								<div class="special_cource_text">
									<a class="btn_4">${ co.categoryName }</a>
									<c:if test="${ co.courseKind eq 'online'}">
										<h4>${ co.coursePrice }&#8361;</h4>
									</c:if>
									<c:if test="${ co.courseKind eq 'offline'}">
										<h4>
											시간당 <br>${ co.courseHourPrice } &#8361;
										</h4>
									</c:if>
									<a href="${ codetail }">
										<h3>${co.courseTitle }</h3>
									</a>
									<p></p>
									<div class="author_info">
										<div class="author_img">
											<img src="resources/user/img/author/author_1.png" alt=""
												onclick="location.href=${codetail}">
											<div class="author_info_text">
												<p>Conduct by:</p>
												<h5>
													<a href="${ codetail }">James Well</a>
												</h5>
											</div>
										</div>
										<div class="author_rating">
											<div class="rating">
												<img src="resources/user/img/icon/color_star.svg" alt="">
												<img src="resources/user/img/icon/color_star.svg" alt="">
												<img src="resources/user/img/icon/color_star.svg" alt="">
												<img src="resources/user/img/icon/color_star.svg" alt="">
												<img src="resources/user/img/icon/star.svg" alt="">
											</div>
											<p>3.8 Ratings</p>
										</div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>

			</div>
			<hr>
		</section>
	</c:if>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
	<script>
	$(document).ready(function(){
		var owl = $('.owl-carousel');
		owl.owlCarousel({
		    items:4,
		    loop:true,
		    margin:10,
		    autoplay:true,
		    autoplayTimeout:3000,
		    autoplayHoverPause:true
		});
		});
	</script>
</body>
</html>