<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ourcompany.class247.member.model.vo.Member"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <html>

        <html>

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>CLASS 247</title>
            <link rel="icon" href="resources/user/img/favicon.png">
            <script src="resources/user/js/jquery.counterup.min.js"></script>
            <script src="resources/user/js/waypoints.min.js"></script>

        </head>
        <c:import url="/WEB-INF/views/user/common/menubar.jsp" />

        <body>
   
   
   <!-- alert창으로 메세지 띄우기  -->     
	   <c:if test="${!empty msg }">
			<script>
				var msg = '${msg}';
				alert(msg);
				<% session.removeAttribute("msg"); %>
			</script>
		</c:if>

            <section class="breadcrumb breadcrumb_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumb_iner text-center">
                                <div class="breadcrumb_iner_item">
                                    <div class="banner_text_iner">
                                        <h5 style="color:white;">당신의 모든 취미를 클래스로 개설할 수 있습니다.</h5>
                                        <h1> 당신의 클래스를 <br>개설하세요 !</h1>
                                        <a href="introduce.do" class="btn_1">서비스 소개 </a> &nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="cMainView.do" class="btn_2" onclick="return loginCheck()">크리에이터 센터</a>
                                        <br><br>
               	     <a class="btn_2" href="#Mdrecom" style="float:right;">인기/추천<br>클래스</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <script>
                function loginCheck() {

                    if ('${ loginUser.memNum }' == "") {
                        alert("로그인 후 사용할 수 있는 서비스입니다.");
                        return false;
                    } else {
                        location.href = "<%= request.getContextPath() %>/cMainView.do";
                        return true;
                    }

                }
            </script>
            <section class="member_counter">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="single_member_counter">
                                <span class="counter">${ creCount }</span>
                                <h4>모든 튜터</h4>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="single_member_counter">
                                <span class="counter">${ memberCount }</span>
                                <h4>모든 회원</h4>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="single_member_counter">
                                <span class="counter">${ onlineCourseCount }</span>
                                <h4>온라인 강의</h4>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="single_member_counter">
                                <span class="counter">${ offlineCourseCount }</span>
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
            <section class="special_cource padding_top" id="Mdrecom">
                <div class="container" id="Mdrecom">
                    <div class="row justify-content-left">
                        <div class="col-xl-5">
                            <div class="section_tittle text-left">
                                <p>MD가 추천하는 클래스</p>
                                <h2>MD추천</h2>
                            </div>
                        </div>
                    </div>
                    
                    <div class="owl-carousel">
                     <c:forEach items="${ list }" var="co">
                     	<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }"/>
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
                        <div class="item" >
                            <div class="single_special_cource">
                                <img src="resources/user/img/test1.jpeg" class="special_img" alt="" onclick="location.href=${codetail}">
                                <div class="special_cource_text">
                                    <a class="btn_4">${ co.categoryName }</a>
                                    <c:if test="${ co.courseKind eq 'online'}">
                                    <h4>${ co.coursePrice }&#8361;</h4>
                                    </c:if>
                                    <c:if test="${ co.courseKind eq 'offline'}">
                                    <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                    </c:if>
                                    <a href="${ codetail }">
                                    <h3>${co.courseTitle }</h3>
                                    </a>
                                    <p></p>
                                    <div class="author_info">
                                        <div class="author_img">
                                            <img src="resources/user/img/author/author_1.png" alt="" onclick="location.href=${codetail}">
                                            <div class="author_info_text">
                                                <p>Conduct by:</p>
                                                <h5><a href="${ codetail }">James Well</a></h5>
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
            </section>
            <section class="special_cource padding_top" id="Mdrecom">
                <div class="container" id="Mdrecom">
                    <div class="row justify-content-left">
                        <div class="col-xl-5">
                            <div class="section_tittle text-left">
                                <p>실시간 인기 강의</p>
                                <h2>인기 TOP 10</h2>
                            </div>
                        </div>
                    </div>
                    
                    <div class="owl-carousel">
                     <c:forEach items="${ poplist }" var="po">
                     	<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ po.courseNum }"/>
							<c:param name="courseKind" value="${ po.courseKind}" />
						</c:url>
                        <div class="item" >
                            <div class="single_special_cource">
                                <img src="resources/user/img/test1.jpeg" class="special_img" alt="" onclick="location.href=${codetail}">
                                <div class="special_cource_text">
                                    <a class="btn_4">${ po.categoryName }</a>
                                    <c:if test="${ po.courseKind eq 'online'}">
                                    <h4>${ po.coursePrice }&#8361;</h4>
                                    </c:if>
                                    <c:if test="${ po.courseKind eq 'offline'}">
                                    <h4>시간당 <br>${ po.courseHourPrice }&#8361;</h4>
                                    </c:if>
                                    <a href="${ codetail }">
                                    <h3>${po.courseTitle }</h3>
                                    </a>
                                    <p></p>
                                    <div class="author_info">
                                        <div class="author_img">
                                            <img src="resources/user/img/author/author_1.png" alt="" onclick="location.href=${codetail}">
                                            <div class="author_info_text">
                                                <p>Conduct by:</p>
                                                <h5><a href="${ codetail }">James Well</a></h5>
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
            </section>
            <c:import url="/WEB-INF/views/user/common/footer.jsp" />
            <script>
                $(document).ready(function() {
                    var owl = $('.owl-carousel');
                    owl.owlCarousel({
                        items: 4,
                        loop: true,
                        margin: 10,
                        autoplay: true,
                        autoplayTimeout: 3000,
                        autoplayHoverPause: true
                    });
                });
            </script>
        </body>

        </html>