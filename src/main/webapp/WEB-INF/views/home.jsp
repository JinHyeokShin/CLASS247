<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ourcompany.class247.member.model.vo.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CLASS 247</title>
    <link rel="icon" href="resources/user/img/favicon.png">
    <script src="resources/user/js/jquery.counterup.min.js"></script>
    <script src="resources/user/js/waypoints.min.js"></script>
<style>
	.rating img{
		margin: -1px;
	    float: left;
	    width:10px;
	}
	.single_special_cource{
		margin-left: 10px;
	    margin-right: 10px;
    }
</style>

</head>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>

<section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <div class="banner_text_iner">
                            <h5 style="color:white;">당신의 모든 취미를 클래스로 개설할 수 있습니다.</h5>
                            <h1> 당신의 클래스를 <br>개설하세요 !</h1>
                            <a href="#" class="btn_1">View Course </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="cMainView.do" class="btn_2" onclick="return loginCheck()">Get Started </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    
    	<script>
    		function loginCheck() {
    			
    			if ( '${ loginUser.memNum }' == "") {
    				alert("로그인 후 사용할 수 있는 서비스입니다.");
    				return false;
    			} else {
    				location.href="<%= request.getContextPath() %>/cMainView.do";
    				return true;
    			}
    		
    		}
    	</script>
  	 <section class="member_counter">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_member_counter">
                        <span class="counter">1024</span>
                        <h4>모든 튜터</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_member_counter">
                        <span class="counter">123</span>
                        <h4>모든 회원</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_member_counter">
                        <span class="counter">1020</span>
                        <h4>온라인 강의</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_member_counter">
                        <span class="counter">820</span>
                        <h4>오프라인 강의</h4>
                    </div>
                </div>
            </div>
        </div>
        <script>
        $('.counter').counterUp({
		    delay: 10,
		    time: 1000
		});
        </script>
    </section>
     <section class="special_cource padding_top">
        <div class="container">
            <div class="row justify-content-left">
                <div class="col-xl-5">
                    <div class="section_tittle text-left">
                        <p>MD가 추천하는 클래스</p>
                        <h2>MD추천</h2>
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
                            <a href="course-details.html" class="btn_4">디자인</a>
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
                            <a href="course-details.html" class="btn_4">디지털 드로잉</a>
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
    </section>
    <section class="special_cource padding_top" >
        <div class="container" style="padding-bottom:80px">
            <div class="row justify-content-left">
                <div class="col-xl-5">
                    <div class="section_tittle text-left">
                        <p>실시간 TOP 10</p>
                        <h2>인기 강의 TOP 10</h2>
                    </div>
                </div>
            </div>
            <div class="owl-carousel">
                <div class="item">
                    <div class="single_special_cource">
                        <img src="resources/user/img/special_cource_1.png" class="special_img" alt="">
                        <div class="special_cource_text">
                            <a href="course-details.html" class="btn_4">라이프 스타일</a>
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
                            <a href="course-details.html" class="btn_4">미술</a>
                            <h4>300,000&#8361;</h4>
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
                            <a href="course-details.html" class="btn_4">사진, 영상</a>
                            <h4>$140.00</h4>
                            <a href="course-details.html">  <h3>보람쌤과 함께하는 쉬운 아이티</h3> </a> 
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
    </section>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
	<script>
	$(document).ready(function(){
		var owl = $('.owl-carousel');
		owl.owlCarousel({
		    items:3,
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
