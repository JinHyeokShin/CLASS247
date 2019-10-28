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
<script>
    function share() {
      var url = encodeURI(encodeURIComponent(myform.url.value));
      var title = encodeURI(myform.title.value);
      var shareURL = "https://share.naver.com/web/shareView.nhn?url=" + url + "&title=" + title;
      document.location = shareURL;
    }
  </script>
  

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
   
    

    <!--================ Start Course Details Area =================-->
    
    <section class="course_details_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 course_details_left">
                    <div class="main_image">
                    	<h1>${ c.courseTitle }</h1>			
                        <img class="img-fluid" src="resources/creator/images/test1.jpeg" alt="">
                    </div>
                    <br>
                    <br>

                    <!-- 클래스 소개 -->

                    <div class="content_wrapper">
                            <!-- 탭 만들기 -->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                      <a class="nav-link active" data-toggle="tab" href="#Review">Review</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#Eligibility">Eligibility</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#CourseOutline">Course Outline</a>
                                    </li>
                                  </ul>
                        <div class="tab-content" >    
                            <div class="tab-pane fade show active" id="Review">
                                <h4 class="title_top">Review</h4>
	                           <div class="comments-area mb-30">
	                           <!-- 수업을 이용한 고객들의 리뷰랑 평점 불러오기 (1)-->
	                         <c:forEach items="${ rlist }" var="rv">
	                     	
                            <div class="comment-list">
                                <div class="single-comment single-reviews justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="resources/user/img/cource/cource_1.png" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5>${rv.memNum}</h5>
                                            <span class="star-input">
												<span class="input">
											    	<input type="radio" name="star-input" value="1" id="p1">
											    	<label for="p1">1</label>
											    	<input type="radio" name="star-input" value="2" id="p2">
											    	<label for="p2">2</label>
											    	<input type="radio" name="star-input" value="3" id="p3">
											    	<label for="p3">3</label>
											    	<input type="radio" name="star-input" value="4" id="p4">
											    	<label for="p4">4</label>
											    	<input type="radio" name="star-input" value="5" id="p5">
											    	<label for="p5">5</label>
											  	</span>
											  	<output for="star-input"><b>${rv.reviewScore }</b>점</output>						
											</span>
                                            <p class="comment">
                                                ${rv.reviewContent }
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
	                       </c:forEach>
                        </div>
                      
								<span class="star-input">
								<span class="input">
							    	<input type="radio" name="star-input" value="1" id="p1">
							    	<label for="p1">1</label>
							    	<input type="radio" name="star-input" value="2" id="p2">
							    	<label for="p2">2</label>
							    	<input type="radio" name="star-input" value="3" id="p3">
							    	<label for="p3">3</label>
							    	<input type="radio" name="star-input" value="4" id="p4">
							    	<label for="p4">4</label>
							    	<input type="radio" name="star-input" value="5" id="p5">
							    	<label for="p5">5</label>
							  	</span>
							  	<output for="star-input"><b>0</b>점</output>						
							</span>
							
							<script src="resources/user/js/jquery-1.11.3.min.js"></script>
							<script src="resources/user/js/star.js"></script>
							<br><br><br>
							 <div class="feedeback">
                            <h6>Your Feedback</h6>
                            <textarea name="feedback" class="form-control" cols="5" rows="5"></textarea>
                            <div class="mt-10 text-right">
                                <a href="#" class="btn_1">Read more</a>
                            </div>
                            
                        </div>
                        </div>
                        <!-- 패키지    -->
                        <!-- 크리에이터 -->
                        <div class="tab-pane fade" id="Eligibility">
                            <h4 class="title">Eligibility</h4>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore
                            magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                            ut aliquip ex ea commodo
                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.
                            <br>
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore
                            magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                            ut aliquip ex ea
                            commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                            cillum. Lorem ipsum dolor sit
                            amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat. Duis aute
                            irure dolor in reprehenderit in voluptate velit esse cillum.
                        </div>
                    
                        <!-- 커리큘럼 -->
                        <div class="tab-pane fade" id="CourseOutline">
                                <h4 class="title">Course Outline</h4>
                            <ul class="course_list">
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Introduction Lesson</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Basics of HTML</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Getting Know about HTML</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Tags and Attributes</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Basics of CSS</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Getting Familiar with CSS</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Introduction to Bootstrap</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Responsive Design</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                                <li class="justify-content-between align-items-center d-flex">
                                    <p>Canvas in HTML 5</p>
                                    <a class="btn_2 text-uppercase" href="#">View Details</a>
                                </li>
                            </ul>
                        </div>
                    </div>    
                </div>
            </div>

                <!-- 오른쪽 간단 설명 -->
                <div class="col-lg-4 right-contents">
                    <div class="sidebar_top">
                        <ul>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex">
                                    <p>Trainer’s Name</p>
                                    <span class="color">${ c.memNickName }</span>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Title </p>
                                    <span>${ c.courseTitle }</span>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Category</p>
                                    <span>${ c.categoryName}</span>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>course fee</p>
                                   <c:if test="${ c.courseKind eq 'online' }">
										<span>${ c.coursePrice + c.courseMaterialPrice }</span>
									</c:if> 
									<c:if test="${ c.courseKind eq 'offline' }">
										<span>${ c.courseHourPrice * 20 } </span>
									</c:if>
                                </a>
                            </li>
                            <li style="width: 100%;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Available Seats </p>
                                     <c:if test="${ c.courseKind eq 'offline' }">
                                    <span>${c.courseCurrentNum}</span>
                                    </c:if>
                                    <c:if test="${ c.courseKind eq 'online' }">
                                  <span>${c.courseCurrentNum}</span>
                                   </c:if>
                                </a>
                            </li>
							  <li style="width: 100%;">
		                               <c:if test="${!empty loginUser }"> 
                                    <c:if  test="${checkLove == true }">
                                    <span><img src="resources/creator/images/like.png" id="love" onclick="cancelLove();"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </c:if>
                                     <c:if  test="${checkLove == false }">
                                    <span><img src="resources/creator/images/nlike.png" id="love" onclick="insertLove();"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      </c:if>
                                      </c:if>
	                                      <script>
	                                      	function insertLove(){
	                                      		var memNum='${loginUser.memNum}';
	                                      		var courseNum='${c.courseNum}';
	                                      		console.log(memNum + ", " + courseNum);
	                                      		$.ajax({
	                                      			url:"insertLove.do",
	                                      			data:{memNum:memNum,
	                                      				courseNum:courseNum},
	                                      				type:"post",
	                                					success:function(data){
	                                						if(data == 'success'){
	                                							
	                                							$('#love').attr("src","resources/creator/images/like.png");
	                                							$('#love').attr("onclick","cancelLove();");
	                                						}
	                                					},error:function(){
	                                						console.log("실패");
	                                					}
	                                      				
	                                      		})
	                                      		
	                                      	}
	                                      	function cancelLove(){
	                                      		var memNum='${loginUser.memNum}';
	                                      		var courseNum='${c.courseNum}';	
	                                      		console.log(memNum + ", " + courseNum);
	                                      		$.ajax({
	                                      			url:"cancelLove.do",
	                                      			data:{memNum:memNum,
	                                      				courseNum:courseNum},
	                                      				type:"post",
	                                					success:function(data){
	                                						if(data == 'success'){
	                                							
	                                							$('#love').attr("src","resources/creator/images/nlike.png");
	                                							$('#love').attr("onclick","insertLove();");
	                                						}
	                                					},error:function(){
	                                						console.log("실패");
	                                					}
	                                      				
	                                      		})
	                                      	
	                                      	}
	                                      </script>
          
                                    <span>
                            
                                        <script type="text/javascript" src="https://ssl.pstatic.net/share/js/naver_sharebutton.js"></script>
                                        <script type="text/javascript">
                                        new ShareNaver.makeButton({"type": "e"});
                                        </script>
                                        
                                    </span>
                               
                            </li>
							

                        </ul>
                        	  
                        	 <c:if test="${ c.courseKind eq 'online' }">
	                        <c:url  value="coBuyOn.do" var="coBuyOn">
								<c:param name="courseNum" value="${ c.courseNum }"/>
								
							</c:url>		
								<a href="${ coBuyOn }" class="btn_1 d-block">수강하기</a>					
							</c:if>
							<c:if test="${ c.courseKind eq 'offline' }">
                              <c:url  value="coBuyOff.do" var="coBuyOff">
								<c:param name="courseNum" value="${ c.courseNum }"/>
							</c:url>	
								<a href="${ coBuyOff }" class="btn_1 d-block">수강하기</a>				
                                    </c:if>
                        	
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