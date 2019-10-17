<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	section{
		padding-bottom:80px;
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
                            <h2>서비스 소개</h2>
                            
                            <p><h1>CLASS 247</h1></p>
                        	
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<hr>
    <!-- learning part start-->
    <section class="learning_part">
        <div class="container">
            <div class="row align-items-sm-center align-items-lg-stretch">
                <div class="col-md-6 col-lg-6">
                    <div class="learning_img">
                        <img src="resources/user/img/introduceImg/introduce1.png" alt="" style="width:100%;height:100%;">
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="learning_member_text">
                        <h5>getTeamName();</h5>
                        <h2>247</h2>
                        <p>저희 팀은 92년생 , 94년생 , 97년이 모인 팀이며, 팀 명을 결정하게 되었고,<br> 사전적 의미와 같이 항상 준비하고 있는 팀이라는 뜻입니다.
</p>
                       
                        <!-- <a href="#" class="btn_1">Read More</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr>
        <section class="learning_part">
        <div class="container">
            <div class="row align-items-sm-center align-items-lg-stretch">
                <div class="col-md-6 col-lg-6">
                    <div class="learning_img">
                        <img src="resources/user/img/introduceImg/introduce2.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="learning_member_text">
                        <h5>getTeamMember();</h5>
                        <h2>Member</h2>
                        <p>
                        	조장 : 신진혁<br>
                        	조원 : 김상민, 한미선, 김은기, 임종민, 이승은
                        </p>
                        
                       
                        <!-- <a href="#" class="btn_1">Read More</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr>
        <section class="learning_part">
        <div class="container">
            <div class="row align-items-sm-center align-items-lg-stretch">
                <div class="col-md-6 col-lg-6">
                    <div class="learning_img">
                        <img src="resources/user/img/introduceImg/introduce3.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="learning_member_text">
                        <h5>getProjectTitle();</h5>
                        <h2>CLASS 247</h2>
                        <p> 앞서 보여드린 사전적 의미의 247과<br>
							저희가 하고자하는 프로젝트가 잘 어울린다고 생각하여<br>
							프로젝트 명은 CLASS 247로 결정하게 되었습니다.
                        </p>
                       
                        <!-- <a href="#" class="btn_1">Read More</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- learning part end-->

	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>