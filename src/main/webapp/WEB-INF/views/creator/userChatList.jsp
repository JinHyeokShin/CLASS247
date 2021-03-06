<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<c:url value="/resources/chat/sockjs-0.3.4.js"/>"></script>
<link href="<c:url value="/resources/creator/css/theme.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/css/font-face.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/font-awesome-4.7/css/font-awesome.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/font-awesome-5/css/fontawesome-all.min.css"/>"  rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/mdi-font/css/material-design-iconic-font.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/bootstrap-4.1/bootstrap.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/animsition/animsition.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/wow/animate.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/css-hamburgers/hamburgers.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/slick/slick.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/select2/select2.min.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/perfect-scrollbar/perfect-scrollbar.css"/>" rel="stylesheet" media="all">
<link href="<c:url value="/resources/creator/vendor/vector-map/jqvmap.min.css"/>" rel="stylesheet" media="all">
<title>사용자 채팅 리스트</title>
</head>
<body>

<style>

	.send-mess {
		background:rgb(182, 151, 199) !important;
	
	}
	
	body{
		background-color:#f4ecf8 !important;
	}
	
</style>

 <c:import url="/WEB-INF/views/user/common/menubar.jsp" />
 <br><br><br><br><br>
		<div class="page-wrapper">
            <!-- MAIN CONTENT-->
                 <session class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30"><br>
                                
                            </h3>
                            <div class="row">
	                            <div class="col-lg-5" style="margin-right:auto; margin-left:auto;">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                    <div class="au-card-title">
                                        <div class="bg-overlay bg-overlay--blue"  style="background:#954CBC !important;"></div>
                                        <h3>
                                            <i class="zmdi zmdi-comment-text"></i>CHAT LIST</h3>
                                        <button class="au-btn-plus">
                                            <i class="fa fa-heart"></i>
                                        </button>
                                    </div>
                                    <div class="au-inbox-wrap">
                                        <div class="au-message js-list-load">
                                            <div class="au-message__noti">
         
                                            </div>
                                            <div class="au-message-list">
                                            
                                            <c:if test="${!empty chatList }">
                                            	<c:forEach items="${chatList}" var="ch">
	                                                <div class="au-message__item unread">
	                                                    <input type="hidden" id="chatListNum" value="${ch.chatListNum}">
	                                                    <input type="hidden" id="fromId" value="${ch.fromId }">
	                                                    <input type="hidden" id="creNum" value="${ch.toId }">
	                                                    <div class="au-message__item-inner">
	                                                        <div class="au-message__item-text">
	                                                            <div class="avatar-wrap">
	                                                                <div class="avatar">
	                                                                    <img src="<%= request.getContextPath() %>/resources/creator/creatorImages/${ch.creProfile}">
	                                                                </div>
	                                                            </div>
	                                                            <div class="text">
	                                                                <h5 class="name">${ch.toName}&nbsp;&nbsp;&nbsp;
	                                                                <span class="badge badge-warning" style="align:right">${ch.courseTitle}</span></h5>
	                                                                <p>${ch.lastChatContent }</p>
	                                                            </div>
	                                                        </div>
	                                                        <div class="au-message__item-time">
	                                                            <span>${ch.lastChatTime}</span>
	                                                        </div>
	                                                    </div>
	                                                </div>
                                                </c:forEach>
                                               </c:if>
                                               
                                               <c:if test="${ empty chatList }">
                                              	  <div class="au-message__item unread">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="text">
                                                                <h5 class="name">존재하는 채팅이 없습니다.</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>                                               
                                               </c:if> 
                                            </div>
                                            <div class="au-message__footer">
                                               <!--  <button class="au-btn au-btn-load js-load-btn">load more</button> -->
                                            </div>
                                        </div>
                                        
                                        <script>
                                        $(function(){
                                            var inbox_wrap = $('.js-inbox');
                                            var message = $('.au-message__item');
                                            message.each(function(){
                                              var that = $(this);

                                              that.on('click', function(){
                                                /*$(this).parent().parent().parent().toggleClass('show-chat-box');*/
                                                

                                            	  var chatListNum = $(this).children().eq(0).val();
                                                  var fromId = $(this).children().eq(1).val();
                                                  var creNum = $(this).children().eq(2).val();
                                            	  if(chatListNum == "") {
                                            		  
                                            	  } else {
                                            		  
		                                            	location.href='<%= request.getContextPath() %>/userChatDetail.do?chatListNum=' + chatListNum + '&creNum=' + creNum;
                                            	  }
                                            	  
                                              });
                                            });
                                        })
                                        
                                        
                                        </script>
                                       
                                    </div>
                                </div>
                            </div>
                           </div>
                       </div>
                    </div>
                  </session> 
 
 
 

</body>
</html>