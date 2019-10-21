<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.login{
		margin: 9% auto;
		border: 1px solid #954CBC;
		padding: 10px;
		width: 80%;
		height:100%;  
		border-radius: 10px;
	}
	</style>
</head>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>
	<br><br>
	<div class="login" align="center">

	<section class="special_cource padding_top" style="padding-top:5%">
		<div class="container" style="padding-bottom: 10%">
			
			<div class="row justify-content-left">
				<div class="col-xl-5">
					<div class="section_tittle text-left">
						<br>
						<h2>${loginUser.memName}님의 수강내역</h2>
						<br>
						<hr>
						<h3> - 온라인 클래스</h3>
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
	<hr>
     <section class="special_cource padding_top">
        <div class="container">
            <div class="row justify-content-left">
                <div class="col-xl-5">
                    <div class="section_tittle text-left">
                    
                        <h3> - 오프라인 클래스</h3>
                    </div>
                </div>
            </div>
            <div class="owl-carousel">
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_1.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">공예</a>
                            <h4>$130.00</h4>
                            <a href="course-details.html"><h3>Web Development</h3></a>
                            <p>Which whose darkness saying were life unto fish wherein all fish of together called</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="resources/user/img/author/author_1.png" alt="">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                        <h5><a href="#">James Well</a></h5>
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
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_3.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">공예</a>
                            <h4>$140.00</h4>
                            <a href="course-details.html">  <h3>Wordpress Development</h3> </a> 
                            <p>Which whose darkness saying were life unto fish wherein all fish of together called</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="resources/user/img/author/author_3.png" alt="">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                        <h5><a href="#">James Well</a></h5>
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
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_3.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">공예</a>
                            <h4>$140.00</h4>
                            <a href="course-details.html">  <h3>Wordpress Development</h3> </a> 
                            <p>Which whose darkness saying were life unto fish wherein all fish of together called</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="resources/user/img/author/author_3.png" alt="">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                        <h5><a href="#">James Well</a></h5>
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
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_3.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">공예</a>
                            <h4>$140.00</h4>
                            <a href="course-details.html">  <h3>Wordpress Development</h3> </a> 
                            <p>Which whose darkness saying were life unto fish wherein all fish of together called</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="resources/user/img/author/author_3.png" alt="">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                        <h5><a href="#">James Well</a></h5>
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
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_3.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">공예</a>
                            <h4>$140.00</h4>
                            <a href="course-details.html">  <h3>Wordpress Development</h3> </a> 
                            <p>Which whose darkness saying were life unto fish wherein all fish of together called</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="resources/user/img/author/author_3.png" alt="">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                        <h5><a href="#">James Well</a></h5>
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
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_3.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">공예</a>
                            <h4>$140.00</h4>
                            <a href="course-details.html">  <h3>Wordpress Development</h3> </a> 
                            <p>Which whose darkness saying were life unto fish wherein all fish of together called</p>
                            <div class="author_info">
                                <div class="author_img">
                                    <img src="resources/user/img/author/author_3.png" alt="">
                                    <div class="author_info_text">
                                        <p>Conduct by:</p>
                                        <h5><a href="#">James Well</a></h5>
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
        <br> <br> <br> <br>
        <br>
    </section>
 </div>
 


	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
	<script>
	$(document).ready(function(){
		var owl = $('.owl-carousel');
		owl.owlCarousel({
		    items:4,
		    loop:true,
		    margin:10,
		   // autoplay:true,
		  //  autoplayTimeout:3000,
		    autoplayHoverPause:true
		});
		});
	</script>
</body>
</html>