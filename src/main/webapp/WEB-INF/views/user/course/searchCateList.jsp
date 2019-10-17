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
		<div class="container" style="padding-bottom: 40px">
			<hr>
			<h1>카테고리별 검색</h1>
			<hr>
			<div class="row justify-content-left">
				<div class="col-xl-5">
					<div class="section_tittle text-left">
						<p>클래스 247만의 특별한 클래스</p>
						<h2>247 Signiture</h2>
					</div>
				</div>
			</div>
			<div class="owl-carousel">
				<div class="item">
					<div class="single_special_cource">
						<img src="resources/user/img/special_cource_1.png"
							class="special_img" alt="">
						<div class="special_cource_text">
							<a href="course-details.html" class="btn_4">Signiture</a>
							<h4>$130.00</h4>
							<a href="course-details.html"><h3>Web Development</h3></a>
							<p>Which whose darkness saying were life unto fish wherein
								all fish of together called</p>
							<div class="author_info">
								<div class="author_img">
									<img src="resources/user/img/author/author_1.png" alt="">
									<div class="author_info_text">
										<p>Conduct by:</p>
										<h5>
											<a href="#">James Well</a>
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
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>