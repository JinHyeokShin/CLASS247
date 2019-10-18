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
	                            <p>Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales
	                                his void unto last session for bite. Set have great you'll male grass yielding yielding
	                                man</p>
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
                        <img class="img-fluid" src="resources/creator/images/test1.jpeg" alt="">
                    </div>
                    <br>
                    <br>

                    <!-- 클래스 소개 -->

                    <div class="content_wrapper">
                            <!-- 탭 만들기 -->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                      <a class="nav-link active" data-toggle="tab" href="#Objectives">Objectives</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#Eligibility">Eligibility</a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#CourseOutline">Course Outline</a>
                                    </li>
                                  </ul>
                        <div class="tab-content" >    
                            <div class="tab-pane fade show active" id="Objectives">
                                <h4 class="title_top">Objectives</h4>
                            When you enter into any new area of science, you almost always find yourself with a
                            baffling new language of
                            technical terms to learn before you can converse with the experts. This is certainly
                            true in astronomy both in
                            terms of terms that refer to the cosmos and terms that describe the tools of the trade,
                            the most prevalent
                            being the telescope.
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
                            <li>
                                <a class="justify-content-between d-flex">
                                    <p>Trainer’s Name</p>
                                    <span class="color"></span>
                                </a>
                            </li>
                            <li>
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Title </p>
                                    <span></span>
                                </a>
                            </li>
                            <li>
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Category</p>
                                    <span></span>
                                </a>
                            </li>
                            <li>
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Course Fee </p>
                                    <span></span>
                                </a>
                            </li>
                            <li>
                                <a class="justify-content-between d-flex" href="#">
                                    <p>Available Seats </p>
                                    <span></span>
                                </a>
                            </li>
							  <li>
                                <a class="justify-content-between d-flex" href="#">
                                    
                                    <span><input type="image" src="resources/creator/images/love1.png" style="background-size: 30px;" alt=""></span>
                                    
                                      <span>
                                        <script type="text/javascript" src="https://ssl.pstatic.net/share/js/naver_sharebutton.js"></script>
                                        <script type="text/javascript">
                                        new ShareNaver.makeButton({"type": "c"});
                                        </script>
                                        <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

    
                                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                        <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
                                         
                                    
                                        <button id="btnSendSms">SMS로 공유하기</button>

                                        <button id="btnCopy" data-clipboard-target="#tagetText">URL 복사하기</button>

                                        <script>
                                        $(document).ready(function(){
                                            var linkString="sms";
                                            linkString += "?body=이 블로그 참고하세요. https://ojava.tistory.com";

                                            $("#btnSendSms").on("click",function(){
                                                location.href=linkString;

                                            });
                                            //클릭시 복사가 되도록 이벤트 지정하는 부분
                                            var copyLink= new clipboardJS("#btnCopy");

                                            copyLink.on("success",function(){
                                                alert("클립보드에 복사되었습니다.");

                                                //복사되면 블록지정이 되어있는데 이를 초기화시키는 부분
                                                window.getSelection().removeAllRanges();
                                            });

                                        });
                                       
                                        </script>
                                    </span>
                                </a>
                            </li>
							

                        </ul>
                        <a href="#" class="btn_1 d-block">수강하기</a>
                    </div>

                    <!-- 레이팅 -->
                    <h4 class="title">Reviews</h4>
                    <div class="content">
                        <div class="review-top row pt-40">
                            <div class="col-lg-12">
                                <h6 class="mb-15">Provide Your Rating</h6>
                                <div class="d-flex flex-row reviews justify-content-between">
                                    <span>Quality</span>
                                    <div class="rating">
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/star.svg" alt=""></a>
                                        </div>
                                    <span>Outstanding</span>
                                </div>
                                <div class="d-flex flex-row reviews justify-content-between">
                                    <span>Puncuality</span>
                                    <div class="rating">
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/star.svg" alt=""></a>
                                        </div>
                                    <span>Outstanding</span>
                                </div>
                                <div class="d-flex flex-row reviews justify-content-between">
                                    <span>Quality</span>
                                    <div class="rating">
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                            <a href="#"><img src="img/icon/star.svg" alt=""></a>
                                        </div>
                                    <span>Outstanding</span>
                                </div>

                            </div>
                        </div>
                        <div class="feedeback">
                            <h6>Your Feedback</h6>
                            <textarea name="feedback" class="form-control" cols="10" rows="10"></textarea>
                            <div class="mt-10 text-right">
                                <a href="#" class="btn_1">Read more</a>
                            </div>
                        </div>

                        <!-- reviews -->
                        <div class="comments-area mb-30">
                            <div class="comment-list">
                                <div class="single-comment single-reviews justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="img/cource/cource_1.png" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5>${m.member_name}</h5>
                                            
                                            <div class="rating">
                                                <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                                <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                                <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                                <a href="#"><img src="img/icon/color_star.svg" alt=""></a>
                                                <a href="#"><img src="img/icon/star.svg" alt=""></a>
                                            </div>
                                            <p class="comment">
                                                Blessed made of meat doesn't lights doesn't was dominion and sea earth
                                                form(글자 늘어나면 사진 사이즈 알아서 줌) 
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
   
</body>

</html>