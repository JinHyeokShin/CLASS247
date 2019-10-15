<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>CLASS 247 - 당신의 재능을 판매하세요</title>
            <link rel="icon" href="resources/user/img/favicon.png">
            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="resources/user/css/bootstrap.min.css">
            <!-- animate CSS -->
            <link rel="stylesheet" href="resources/user/css/animate.css">
            <!-- owl carousel CSS -->
            <link rel="stylesheet" href="resources/user/css/owl.carousel.min.css">
            <!-- themify CSS -->
            <link rel="stylesheet" href="resources/user/css/themify-icons.css">
            <!-- flaticon CSS -->
            <link rel="stylesheet" href="resources/user/css/flaticon.css">
            <!-- font awesome CSS -->
            <link rel="stylesheet" href="resources/user/css/font-awesome.min.css">
            <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap" rel="stylesheet">
            <!-- <link rel="stylesheet" href="css/magnific-popup.css"> -->
            <!-- swiper CSS -->
            <link rel="stylesheet" href="resources/user/css/slick.css">
            <!-- style CSS -->
            <link rel="stylesheet" href="resources/user/css/style.css">
            <style>
                ul li {
                    width: 90px;
                }
                
                .rating img {
                    margin: -1px;
                    float: left;
                    width: 10px;
                }
		        .special_cource_text{
		        height:40%;
		        }
	        </style>
        </head>

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>CLASS 247 - 당신의 재능을 판매하세요</title>
            <link rel="icon" href="resources/user/img/favicon.png">
            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="resources/user/css/bootstrap.min.css">
            <!-- animate CSS -->
            <link rel="stylesheet" href="resources/user/css/animate.css">
            <!-- owl carousel CSS -->
            <link rel="stylesheet" href="resources/user/css/owl.carousel.min.css">
            <!-- themify CSS -->
            <link rel="stylesheet" href="resources/user/css/themify-icons.css">
            <!-- flaticon CSS -->
            <link rel="stylesheet" href="resources/user/css/flaticon.css">
            <!-- font awesome CSS -->
            <link rel="stylesheet" href="resources/user/css/font-awesome.min.css">
            <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap" rel="stylesheet">
            <!-- <link rel="stylesheet" href="css/magnific-popup.css"> -->
            <!-- swiper CSS -->
            <link rel="stylesheet" href="resources/user/css/slick.css">
            <!-- style CSS -->
            <link rel="stylesheet" href="resources/user/css/style.css">
            <style>
                ul li {
                    width: 90px;
                }
                /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	        }
	    
	        /* Modal Content/Box */
	        .modal-content {
	            background-color: #fefefe;
	            margin: 15% auto; /* 15% from the top and centered */
	            padding: 20px;
	            border: 1px solid #888;
	            width: 50%; /* Could be more or less, depending on screen size */                          
	        }
	        /* The Close Button */
	        .close {
	            color: #aaa;
	            float: right;
	            text-align:right;
	            font-size: 28px;
	            font-weight: bold;
	        }
	        .close:hover,
	        .close:focus {
	            color: black;
	            text-decoration: none;
	            cursor: pointer;
	        }
                
            </style>
        </head>

        <body>
            <c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
            <!--::header part start::-->
            <header class="main_menu home_menu">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <nav class="navbar navbar-expand-lg navbar-light">
                                <a class="navbar-brand" href="home.do"> <img src="resources/user/img/logo.png"></a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                                <div class="collapse navbar-collapse main-menu-item justify-content-end" id="navbarSupportedContent">
                                    <ul class="navbar-nav align-items-center" align="center" width="100%">
                                        <li class="nav-item" style="margin-right:-30px; width : 23%; margin-right:60px;" >
                                       		<c:if test="${ !empty sessionScope.loginUser }">
                                                <input type="text" style="font-size: 11px" class="form-control" placeholder='${ loginUser.memName }님 무엇을 배우고 싶으세요?' id="myBtn">
                                            </c:if>
                                            <c:if test="${ empty sessionScope.loginUser }">
                                                <input type="text" style="font-size: 11px" class="form-control" placeholder="무엇을 배우고 싶으세요?" id="myBtn">
                                            </c:if>
                                        </li>
                                       <!--  <li style="margin-right : 60px;">
                                            <button class="btn btn_1 primary small button-image" type="button" id="myBtn"><i class="ti-search" ></i></button>
                                        </li> -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="about.html">공지사항</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="home.do/Mdrecom" margin-top="10px">인기/추천<br>클래스</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="categoryList.do" margin-top="10px">카테고리</a>

                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="goOnline.do">온라인 클래스</a>
                                                <a class="dropdown-item" href="goOffline.do">오프라인 클래스</a>
                                            </div>
                                        </li>
                                        <c:if test="${ empty sessionScope.loginUser }">
                                            <li class="nav-item">
                                                <a class="nav-link" href="cMainView.do" onclick="return loginCheck()">크리에이터<br>센터</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="joinForm.do">회원가입</a>
                                            </li>

                                            <li class="d-none d-lg-block">
                                                <a class="btn_1" href="loginForm.do">Login</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${ !empty sessionScope.loginUser }">
                                            <li class="nav-item">
                                                <a class="nav-link" href="cMainView.do">크리에이터<br>센터</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="myPage.do">MyPage</a>
                                            </li>
                                            <li class="d-none d-lg-block">
                                                <a class="btn_1" href="logout.do">Logout</a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                        </div>
                    </div>
                </div>
                
			    <!-- The Modal -->
			    <div id="myModal" class="modal">
			 <!-- Modal content -->
			      <div class="modal-content">
			        <span class="close">&times;</span>                                                               
			        <p>Some text in the Modal..</p>
			      </div>
			 
			    </div>
                <script>
                
	                // Get the modal
	                var modal = document.getElementById('myModal');
	         
	                // Get the button that opens the modal
	                var btn = document.getElementById("myBtn");
	                // Get the <span> element that closes the modal
	                var span = document.getElementsByClassName("close")[0];                                          
	         
	                // When the user clicks on the button, open the modal 
	                btn.onclick = function() {
	                    modal.style.display = "block";
	                }
	         
	                // When the user clicks on <span> (x), close the modal
	                span.onclick = function() {
	                    modal.style.display = "none";
	                }
	         
	                // When the user clicks anywhere outside of the modal, close it
	                window.onclick = function(event) {
	                    if (event.target == modal) {
	                        modal.style.display = "none";
	                    }
                }
                </script>
            </header>
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
            <!-- particles js -->
            <script src="resources/user/js/owl.carousel.min.js"></script>
            <script src="resources/user/js/jquery.nice-select.min.js"></script>
            <!-- swiper js -->
            <script src="resources/user/js/slick.min.js"></script>
            <script src="resources/user/js/jquery.counterup.min.js"></script>
            <script src="resources/user/js/waypoints.min.js"></script>
            <!-- custom js -->
            <script src="resources/user/js/custom.js"></script>

        </body>

        </html>