<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                                <div class="col-lg-7" style="margin-right:auto; margin-left:auto;">
                                    <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                        <div class="au-card-title" style="background-image:url('images/bg-title-02.jpg');">
                                            <div class="bg-overlay bg-overlay--blue"></div>
                                            <h3>
                                                <i class="zmdi zmdi-comment-text"></i>New Messages</h3>
                                            <button class="au-btn-plus">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        </div>
                                        <div class="au-inbox-wrap js-inbox-wrap">
                                            <div class="au-message js-list-load">
                                                <div class="au-message__noti">
                                                    <p>You Have
                                                        <span>2</span>
    
                                                        new messages
                                                    </p>
                                                </div>
                                                <div class="au-message-list">
                                                    <div class="au-message__item unread">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-02.jpg" alt="John Smith">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">John Smith</h5>
                                                                    <p>Have sent a photo</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>12 Min ago</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="au-message__item unread">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap online">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-03.jpg" alt="Nicholas Martinez">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Nicholas Martinez</h5>
                                                                    <p>You are now connected on message</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>11:00 PM</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="au-message__item">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap online">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-04.jpg" alt="Michelle Sims">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Michelle Sims</h5>
                                                                    <p>Lorem ipsum dolor sit amet</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>Yesterday</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="au-message__item">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Michelle Sims</h5>
                                                                    <p>Purus feugiat finibus</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>Sunday</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="au-message__item js-load-item">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap online">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-04.jpg" alt="Michelle Sims">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Michelle Sims</h5>
                                                                    <p>Lorem ipsum dolor sit amet</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>Yesterday</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="au-message__item js-load-item">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Michelle Sims</h5>
                                                                    <p>Purus feugiat finibus</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>Sunday</span>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <!-- test -->
                                                    <div class="au-message__item js-load-item">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Sexy May</h5>
                                                                    <p>하하 내이름은 한미선!!!!</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>Monday</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="au-message__item js-load-item">
                                                        <div class="au-message__item-inner">
                                                            <div class="au-message__item-text">
                                                                <div class="avatar-wrap">
                                                                    <div class="avatar">
                                                                        <img src="resources/creator/images/icon/may.jpg" alt="Michelle Sims">
                                                                    </div>
                                                                </div>
                                                                <div class="text">
                                                                    <h5 class="name">Sexy May</h5>
                                                                    <p>댕댕이 칠래?</p>
                                                                </div>
                                                            </div>
                                                            <div class="au-message__item-time">
                                                                <span>Monday</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                 <!-- test END -->
                                                </div>
                                                <div class="au-message__footer">
                                                    <button class="au-btn au-btn-load js-load-btn">load more</button>
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
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="au-chat__content">
                                                    <div class="recei-mess-wrap">
                                                        <span class="mess-time">12 Min ago</span>
                                                        <div class="recei-mess__inner">
                                                            <div class="avatar avatar--tiny">
                                                                <img src="resources/creator/images/icon/avatar-02.jpg" alt="John Smith">
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </session>

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