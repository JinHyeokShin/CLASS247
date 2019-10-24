<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<c:url value="/resources/chat/sockjs-0.3.4.js"/>"></script>
<title>실시간 채팅</title>
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
                                                <i class="zmdi zmdi-comment-text"></i>New Messages</h3>
                                            <button class="au-btn-plus">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        </div>
                                        <div class="au-inbox-wrap js-inbox-wrap show-chat-box">
                                            <div class="au-message js-list-load">
                                                <div class="au-message__noti">
                                                    <p>You Have
                                                        <span>2</span>
    
                                                        new messages
                                                    </p>
                                                </div>
                                                <div class="au-message-list">
                                                    

                                                </div>
                                            </div>

                                            <div class="au-chat">
                                                <div class="au-chat__title">
                                                    <div class="au-chat-info">
                                                        <div class="avatar-wrap online">
                                                            <div class="avatar avatar--small">
                                                                <img src="resources/creator/images/icon/avatar-02.jpg" alt="John Smith">
                                                            </div>
                                                        </div>
                                                        <span class="nick">
                                                            <a href="#">John Smith</a>
                                                            <c:if test="${!empty creator.creNum}">
                                                            	<input type="hidden" id="userId" value="C${creator.creNum}">
                                                            </c:if>
                                                            <c:if test="${ empty creator.creNum }">
                                                            	<input type="hidden" id="userId" value="${loginUser.memNum}">
                                                            </c:if>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div id="chatBox" class="au-chat__content">
                                                    <div class="recei-mess-wrap">
                                                        <span class="mess-time">12 Min ago</span>
                                                        <div class="recei-mess__inner" >
                                                            <div class="avatar avatar--tiny">
                                                                <img src="resources/creator/images/icon/avatar-02.jpg" alt="John Smith">
                                                            </div>
                                                            <div class="recei-mess-list" id="receiveBox">
                                                                <div class="recei-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                                <div class="recei-mess">Donec tempor, sapien ac viverra</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="send-mess-wrap">
                                                        <span class="mess-time">30 Sec ago</span>
                                                        <div class="send-mess__inner">
                                                            <div class="send-mess-list" id="talkingBox">
                                                                <div class="send-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                                 <div class="send-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                                  <div class="send-mess">Lorem ipsum dolor sit amet, consectetur adipiscing elit non iaculis</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="au-chat-textfield">
                                                    <form class="au-form-icon">
                                                        <input id="message" class="au-input au-input--full au-input--h65" type="text" placeholder="Type a message">
                                                        <button type="button" class="" id="sendBtn"> 보내기
                                                            <i class="zmdi zmdi-camera"></i>
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </session>
                
        
       <!--  회원 -> 튜터  메세지를 보낼 경우 (즉, 회원일경우 로그인 )  -->         	
		<c:if test='${ !empty creator}'> 
			<script>
				function sendMessage() {
				
				  if($("#message").val() == ""){   // 메세지 내용이 없으면 실행되는 부분
				     alert("메세지를 입력하세요.");
				  }else{                     // 메세지 내용이 있으면
				       /*소켓으로 보내겠다.  */
				       var text =  $("#userId").val() + "->" + $("#message").val() + "->2";
				       sock.send(text);   // 메세지를 소켓에 보내고
				       
				       
				       $.ajax({
					    	  url:'send.do',
					    	  type:'post',
					    	  dataType:'text',
					    	  data:{'msg':text},
					    	  success:function(data){
					    		  alert(data);
					    	  },
					    	  error:function(){
					    		  console.log('서버 통신 실패');
					    	  }
					       });
				       $("#message").val("");         // 메세지 내용을 비운다.
				     
				  }
			
				}
			</script>
		</c:if>
		<!--  튜터 -> 회원  메세지를 보낼 경우 (즉, 튜터로 로그인 )  -->     
		<c:if test='${ empty creator}'>
		<script>
				function sendMessage() {
				
				  if($("#message").val() == ""){   // 메세지 내용이 없으면 실행되는 부분
				     alert("메세지를 입력하세요.");
				  }else{                     // 메세지 내용이 있으면
				       /*소켓으로 보내겠다.  */
				       var text = $("#userId").val() +  "->" + $("#message").val() + "->C3";
				       sock.send(text);   // 메세지를 소켓에 보내고
				       
				       $.ajax({
				    	  url:'send.do',
				    	  type:'post',
				    	  dataType:'text',
				    	  data:{'msg':text},
				    	  success:function(data){
				    		  alert(data);
				    	  },
				    	  error:function(){
				    		  console.log('서버 통신 실패');
				    	  }
				       });
				       $("#message").val("");         // 메세지 내용을 비운다.
				     
				  }
				    
			
				}
			</script>
		</c:if>
	
                
          <script>
			$(document).ready(function() {
			      
		        $("#sendBtn").on("click", function() {   // 전송 버튼을 누를때
		
		            sendMessage();   // 메소드 실행
		
		        });
		        $("#message").keydown(function (key) {   // 메세지 input태그에 키가 눌렸을때
		            if (key.keyCode == 13) { // 엔터키면
		                sendMessage();   // 메소드 실행
		            }
		        });
		});
			
	
		var sock;
		$('.au-chat__content').scrollTop(9999999);
		//웸소켓을 지정한 url로 연결한다.
		  sock = new SockJS("<c:url value='/chat'/>");
		
		
		
		//자바스크립트 안에 function을 집어넣을 수 있음.
		
		//데이터가 나한테 전달되읐을 때 자동으로 실행되는 function
		
		sock.onmessage = onMessage;
		
		
		//데이터를 끊고싶을때 실행하는 메소드
		
		sock.onclose = onClose;
		
		
		
		
		/* sock.onopen = function(){
		
		    sock.send($("#message").val());
		
		}; */
		

		
		//evt 파라미터는 웹소켓을 보내준 데이터다.(자동으로 들어옴)
		
		function onMessage(evt) {
		
		    var data = (evt.data).split(":");
		    if(data[0] == "나") {
			    var $div = $('<div class="send-mess-wrap">');
			    //var $time = $('<span class="mess-time">').text('1 Sec ago');
			    var $div2 = $('<div class="send-mess__inner"">');
			    var $div3 = $('<div class="send-mess-list">');
			    var $div4 = $('<div class="send-mess">').text(data[1]);
			    

                
                
			    //$div.append($time);
			    $div.append($div2);
			    $div2.append($div3);
			    $div3.append($div4); 
			    

			    
			    $("#chatBox").append($div);
		    	
		    } else {
		    	
			    var $div = $('<div class="recei-mess-wrap">');
			    var $time = $('<span class="mess-time">').text('1 Sec ago');
			    var $div2 = $('<div class="recei-mess__inner">');
			    var $div3 = $('<div class="recei-mess-list">');
			    var $div4 = $('<div class="recei-mess">').text(data[1]);
			    

                var $profile = $('<div class="avatar avatar--tiny">');
                var $profile1 =  $('<img src="resources/creator/images/icon/avatar-02.jpg">');

			    
	 		    //$div.append($time);
			    $div.append($div2);
			    $div2.append($profile);
			    $div2.append($div3); 
			    $profile.append($profile1);
			    $div3.append($div4); 
			    
			    $("#chatBox").append($div);
		    	
		    	
		    }
		  
		    
		    $('.au-chat__content').scrollTop(9999999);
		    
		    document.body.scrollIntoView(false);   // 스크롤을 제일 아래로
		    //sock.close();
		
		}
		
		
		function onClose(evt) {
		  
		    $("#chatBox").append("연결 끊김");
		
		}
	</script>

            <!-- END PAGE CONTAINER-->
            



            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->
	</div>
	<c:import url="common/cMenubar.jsp"/>
</body>
</html>