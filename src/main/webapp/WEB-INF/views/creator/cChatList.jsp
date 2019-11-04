<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="animsition">
	<c:import url="common/cMenubar.jsp"/>
	
	
		<div class="page-wrapper">
            <!-- MAIN CONTENT-->
                 <session class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30"><br>
                                <i class="fas fa-comment-alt"></i>실시간 톡  
                            </h3>
                            <div class="row">
	                            <div class="col-lg-6" style="margin-right:auto; margin-left:auto;">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                    <div class="au-card-title" style="background-image:url('images/bg-title-02.jpg');">
                                        <div class="bg-overlay bg-overlay--blue"></div>
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
	                                                    <div class="au-message__item-inner">
	                                                        <div class="au-message__item-text">
	                                                            <div class="avatar-wrap">
	                                                                <div class="avatar">
	                                                                    <img src="<%= request.getContextPath() %>/resources/user/img/profile/${ch.stuProfile}">
	                                                                </div>
	                                                            </div>
	                                                            <div class="text">
	                                                                <h5 class="name">${ch.fromName}&nbsp;&nbsp;&nbsp;
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
                                                <button class="au-btn au-btn-load js-load-btn">load more</button>
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
                                            	  
                                                  
                                            	  if(chatListNum == "") {
                                            		  
                                            	  } else {
		                                            	location.href='<%= request.getContextPath() %>/cChatDetailView.do?chatListNum=' + chatListNum + '&fromId=' + fromId;
                                            		  
                                            	  }
                                            	  
                                              });
                                            });
                                        })
                                        
                                        
                                        </script>
                                        
<!--                                         <div class="au-chat">
                                            <div class="au-chat__title">
                                                <div class="au-chat-info">
                                                    <div class="avatar-wrap online">
                                                        <div class="avatar avatar--small">
                                                            <img src="images/icon/avatar-02.jpg" alt="John Smith">
                                                        </div>
                                                    </div>
                                                    <span class="nick">
                                                        <a href="#">John Smith</a>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="au-chat__content">
                                                <div class="recei-mess-wrap">
                                                    <span class="mess-time">12 Min ago</span>
                                                    <div class="recei-mess__inner">
                                                        <div class="avatar avatar--tiny">
                                                            <img src="images/icon/avatar-02.jpg" alt="John Smith">
                                                        </div>
                                                        <div class="recei-mess-list">
                                                            <div class="recei-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                            <div class="recei-mess">Donec tempor, sapien ac viverra</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="send-mess-wrap">
                                                    <span class="mess-time">30 Sec ago</span>
                                                    <div class="send-mess__inner">
                                                        <div class="send-mess-list">
                                                            <div class="send-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="au-chat-textfield">
                                                <form class="au-form-icon">
                                                    <input class="au-input au-input--full au-input--h65" type="text" placeholder="Type a message">
                                                    <button class="au-input-icon">
                                                        <i class="zmdi zmdi-camera"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                           </div>
                       </div>
                    </div>
                  </session>
                           
               <c:import url="common/cMenubar.jsp"/>
	

</body>
</html>