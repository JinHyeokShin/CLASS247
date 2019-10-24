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
            <style>

	.owl-stage-outer{
	height:45%;
	
	}
	
	</style>
            <link rel="icon" href="resources/user/img/favicon.png">
            <script src="resources/user/js/jquery.counterup.min.js"></script>
            <script src="resources/user/js/waypoints.min.js"></script>

        </head>
        <c:import url="/WEB-INF/views/user/common/menubar.jsp" />

        <body>
     <section class="contact-section section_padding">
    <div class="container">
	  	<br>
      		<h1>${ loginUser.memName }님의 수강내역</h1>
      		<br>
      		<hr>
      		<br>
	 <section class="special_cource padding_top" id="Mdrecom">
                <div class="container" id="Mdrecom">
                    <div class="row justify-content-left">
                        <div class="col-xl-5">
                            <div class="section_tittle text-left">
	  		<h3>온라인</h3>
	  		<br>
	  		 </div>
                        </div>
                    </div>
                    
                    <div class="owl-carousel" >
                     <c:forEach items="${ payonlist }" var="pon">
                     	<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ pon.courseNum }"/>
							<c:param name="courseKind" value="${ pon.courseKind}"/>
						</c:url>
                        <div class="item">
                            <div class="single_special_cource">
                                <img src="resources/user/img/test1.jpeg" class="special_img" alt="" >
                                <div class="special_cource_text">
                                    <a href="${ codetail }" class="btn_4">${pon.categoryName }</a>
                                    <h4>가격</h4>
                                    <a>
                                        <h3>${pon.courseTitle }</h3>
                                    </a>
                                    <p></p>
                                    <div class="author_info">
                                        <div class="author_img">
                                            <img src="resources/user/img/author/author_1.png" alt="">
                                            <div class="author_info_text">
                                                <p>튜터 : </p>
                                                <h5><a href="#">${pon.creNickname }</a></h5>
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
	  	
	  		<h3>오프라인</h3>
	  		<br>
	  		
                              
                            </div>
                        </div>
                    </div>
                    
                    <div class="owl-carousel" >
                     <c:forEach items="${ payofflist }" var="poff">
                     	<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ poff.courseNum }"/>
							<c:param name="courseKind" value="${ poff.courseKind}"/>
						</c:url>
                        <div class="item" >
                            <div class="single_special_cource">
                                <img src="resources/user/img/test1.jpeg" class="special_img" alt="" >
                                <div class="special_cource_text">
                                    <a href="${ codetail }" class="btn_4">${poff.categoryName }</a>
                                    <h4>가격</h4>
                                    <a>
                                        <h3>${poff.courseTitle }</h3>
                                    </a>
                                    <p></p>
                                    <div class="author_info">
                                        <div class="author_img">
                                            <img src="resources/user/img/author/author_1.png" alt="">
                                            <div class="author_info_text">
                                                <p>튜터 : </p>
                                                <h5><a href="#">${poff.creNickname }</a></h5>
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
            </div>
            </section>

          
            <c:import url="/WEB-INF/views/user/common/footer.jsp" />
            <script>
                $(document).ready(function() {
                    var owl = $('.owl-carousel');
                    owl.owlCarousel({
                        items: 4,
                       // loop: true,
                        margin: 10,

                       // autoplay: true,
                        //autoplayTimeout: 3000,
                        //autoplayHoverPause: true
                    });
                });
            </script>
        </body>

        </html>