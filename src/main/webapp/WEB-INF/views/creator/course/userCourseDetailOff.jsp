<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.ourcompany.class247.member.model.vo.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CLASS 247</title>
<link rel="icon" href="resources/user/img/favicon.png">
</head>
<style>
html, body {
	margin: 0px;
	padding: 0px;
}

header {
	text-align: center;
}

#bprice {
	text-align: center;
	padding: 10px 0px;
	width: 100%;
}

.active {
	position: fixed;
	bottom: 0px;
}
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
	<c:import url="/WEB-INF/views/user/common/menubar.jsp" />

	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner text-center">
						<div class="breadcrumb_iner_item">
							<div class="banner_text_iner">
								<h5 style="color: white;">당신의 모든 취미를 클래스로 개설할 수 있습니다.</h5>
								<h1>
									당신의 클래스를 <br>개설하세요 !
								</h1>

								<a href="#" class="btn_1">View Course </a> <a
									href="cMainView.do" class="btn_2" onclick="return loginCheck()">Get
									Started </a>
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

	<section class="course_details_area section_padding"
		style="background: rgb(248, 248, 249);">
		<div class="container">
			<!-- insert -->
   			 <form action="insertpayment.do" method="post">
			<div class="row">
				<div class="col-lg-8 course_details_left"
					style="display: inline-block; background: white; margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px;">


					<div class="tab-content">


						


						<div class="single_special_cource">
							<img src="img/special_cource_1.png" class="special_img" alt="">
							<div class="special_cource_text">
							  
									 <input type="radio"class="title_top" name="paymethod" id="paywaybtn" value="K" checked="checked" required>카카오페이
									 
									<input type="radio" class="title_top" name="paymethod" id="paywaybtn" value="C">일반결제
                                <div class="single_special_cource">
                                        <img src="resources/user/img/special_cource_1.png" class="special_img" alt="">
                                        <div class="special_cource_text">
                                            <h4>강의료:${ c.courseHourPrice*c.courseHour*c.courseCount }</h4>
                                                <h3>강의제목:${ c.courseTitle }</h3>
                                            
                                            <p>수업 소개</p>
                                         <span>${c.courseContent }</span>
                                        </div>
                
                                    </div>
                                <input type="hidden" name="offline" value="${ c }"/>
                                <input type="hidden" name="payPrice" value="${ c.courseHourPrice*c.courseHour*c.courseCount }"/>
								<button type="submit" class="genric-btn primary-border radius"
									style="border-radius: 5px; width: 150px; float: right; height: 50px; text-align: center; line-height: 1"
									id="pay_btn">결제하기</button>
							</div>

						</div>
					</div>
				</div>
			</div>
				</form>
		</div>
	</section>
	<!--================ End Course Details Area =================-->

	<!-- footer part start-->
	<c:import url="/WEB-INF/views/user/common/footer.jsp" />
	<!-- footer part end-->


</body>

</html>