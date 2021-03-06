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
</head>
<style>
	
	.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('resources/creator/images/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>
  

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
	                            <a href="cMainView.do" class="btn_2" onclick="return loginCheck()">Get Started </a>
	                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    

    <!--================ Start Course Details Area =================-->
    <section class="course_details_area section_padding">
        <div class="container">
    <hr>
    <h2>결제 내역</h2>
    <hr>
            <div class="row">
                <div class="col-lg-8 course_details_left">
                    <div class="main_image">
                    	<h1>${ c.courseTitle }</h1>			
                        <img class="img-fluid" src="resources/course/images/${c.coaRName }" alt="">
                    </div>
                    <br>
                    <br>

                    <!-- 클래스 소개 -->

           
            </div>

                <!-- 오른쪽 간단 설명 -->
                <div class="col-lg-4 right-contents">
                    <div class="sidebar_top">
                        <ul>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex">
                                    <p>크리에이터</p>
                                    <span class="color">${ c.memNickName }</span>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>카테고리</p>
                                    <span>${ c.categoryName }</span>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>결제번호</p>
                                    <span>${ c.payCode }</span>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>가격</p>
                                   	<span>${ c.payPrice }</span>
								</a>
                            </li>							
                        </ul>
                        	  
                   	
								<a href="searchCategory.do?categoryName=${ c.categoryName }" class="btn_1 d-block">같은 카테고리 검색하기</a>				
								<a href="home.do" class="btn_1 d-block">홈으로</a>	
							
							
                        	
                    </div>

                    <!-- 레이팅 -->
                    
                </div>
            </div>
        </div>
    </section>
    <!--================ End Course Details Area =================-->

    <!-- footer part start-->
   <c:import url="/WEB-INF/views/user/common/footer.jsp"/>
    <!-- footer part end-->

    <!-- jquery plugins here-->
    <!-- jquery -->
    <script src="resources/user/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="resources/user/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="resources/user/js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="resources/user/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="resources/user/js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="resources/user/js/masonry.pkgd.js"></script>
    <script src="resources/user/js/jquery.nice-select.min.js"></script>
    <!-- particles js -->
    <script src="resources/user/js/owl.carousel.min.js"></script>
    <!-- swiper js -->
    <script src="resources/user/js/slick.min.js"></script>
    <script src="resources/user/js/jquery.counterup.min.js"></script>
    <script src="resources/user/js/waypoints.min.js"></script>
    <!-- custom js -->
    <script src="resources/user/js/custom.js"></script>
</body>

</html>