<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap"
   rel="stylesheet">
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- JavaScript -->
<script
   src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css" />
<!-- Semantic UI theme -->
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/semantic.min.css" />
<!-- Bootstrap theme -->
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/bootstrap.min.css" />
</head>
<style>
                .ground {
                    width: 100%;
                    height: 100%;
                    background-image: url("resources/creator/images/md_background3.jpg");
                    min-height: 100%;
                    background-position: center;
                    background-size: cover;
                }
                
                .mdText {
                    color: white;
                    font-family: Noto Serif KR
                }
                
                .red {
                    color: red;
                }
            </style>

        <body class="animsition">

            <c:import url="../common/cMenubar.jsp" />


            <div class="page-wrapper">
                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card ground" style="height:600px;">
                                        <div class="card-body" align="center" style="position: absolute; top: 50%;  height: 240px; margin-left:13%; margin-top: -280px;">
                                            <div class="mx-auto d-block">
                                                <h1 class="text-sm-center mt-2 mb-1 mdText">당신의 멋진 클래스의 <span class="red">판매율</span>을 높이고 싶은신가요?</h1>
                                                <h2 class="text-sm-center mt-2 mb-1 mdText"> 지금 바로!<br> 당신의 클래스를<span class="red"> MD등록</span>하세요! </h2>
                                            </div>
                                            <br>
                                            <div style="height:200px;"></div>
                                            <div>
                                                <h2  class="text-sm-center mt-2 mb-1 mdText"> 100,000원/1개월</h2><br>
                                                   <select name="select" id="select" class="form-control" style="width:300px">
                                                      <option value="none">Please select your class</option>                                                
                                                      <c:if test="${ !empty list }">
                                                         <c:forEach items="${list}" var="c">
                                                             <option value="${c.courseNum}">${c.courseTitle}</option>
                                                         </c:forEach>
                                                     </c:if>
                                                  </select><br>
                                              </div>
                                            <div align="center" style="font-family:Noto Serif KR;">
                                                <button type="button" class="btn btn-danger btn-lg payBtn" onclick="inicis();">결제하기</button>
                                                <button type="button" style="background:yellow; color:black" class="btn btn-danger btn-lg payBtn" onclick="kakao();">카카오 결제하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                	$(function() {
                		if($("#select").val() == 'none'){
                			$('.payBtn').attr("disabled", true);
                		}
                		
                		$("#select").on("change", function(){
                			if($("#select").val() == 'none'){
                				$('.payBtn').attr("disabled", true);
                			} else {
                				$('.payBtn').attr("disabled", false);
                			}
                		})
                	})
                	

                    function inicis() {
                  console.log("test");
                        IMP.init('imp79990634');

                       
                        
                        IMP.request_pay({
                            pg: 'inicis',
                            pay_method: 'card',
                            merchant_uid: 'T' + new Date().getTime(),
                            name: $("#select option:selected").text(),
                            amount: 100,
                            buyer_email: '${loginUser.memId}',
                            buyer_name: '${loginUser.memName}',
                            buyer_tel: '${loginUser.memPhone}',
                        }, function(rsp) {

                            console.log(rsp.apply_num);
                            
                            if (rsp.success) {
                                $.ajax({
                                    url: "paymentMD.do",
                                    type: "post",
                                    data: {
                                        payCode: rsp.imp_uid,
                                        reservNum: rsp.merchant_uid,
                                        payPrice: rsp.paid_amount,
                                        confirmNum: rsp.apply_num,
                                        payMethod: 'C',
                                        memNum: '${loginUser.memNum}',
                                        memName :'${loginUser.memName}',
                                        courseNum: $("#select option:selected").val(),
                                        payPrice: 100000
                                    },
                                    success: function(data) {
                                    	alertify.alert("결제 완료되었습니다.");
                                        location.href = "cMainView.do";
                                    },
                                    error: function() {
                                        alertify.alert('', '결제 실패');
                                    }
                                }); /* ajax close */
                            } else {
                                alertify.alert('', '결제를 취소하셨습니다.');
                            } /* ajax close */
                        }); /* function(rsp) close */
                    }

                    function kakao() {

                        IMP.init('imp79990634');

                        IMP.request_pay({
                            pg: 'kakaopay',
                            /* 결제PG사 */
                            pay_method: 'card',
                            /* 결제방법 */
                            merchant_uid: 'T' + new Date().getTime(),
                            /* 주문번호 */
                            name: $("#select option:selected").text(),
                            /* 주문이름 */
                            amount: 100,
                            /* 결제 가격 */
                            buyer_email: '${loginUser.memId}',
                            /* 구매자 이멜 */
                            buyer_name: '${loginUser.memName}',
                            /* 구매자 이름 */
                            buyer_tel: '${loginUser.memPhone}',
                        }, function(rsp) {

                            console.log(rsp.apply_num);
                            if (rsp.success) {
                                $.ajax({
                                    url: "paymentMD.do",
                                    type: "post",
                                    data: {
                                    	payCode: rsp.imp_uid,
                                        reservNum: rsp.merchant_uid,
                                        payPrice: rsp.paid_amount,
                                        confirmNum: rsp.apply_num,
                                        payMethod: 'C',
                                        memNum: '${loginUser.memNum}',
                                        memName :'${loginUser.memName}',
                                        courseNum: $("#select option:selected").val(),
                                        payPrice: 100000
                                    },
                                    success: function(data) {
                                    	alertify.alert("결제 완료되었습니다.");
                                        location.href = "cMainView.do";
                                    },
                                    error: function() {
                                        alertify.alert('', '결제 실패');
                                    }
                                }); /* ajax close */
                            } else {
                                alertify.alert('', '결제를 취소하셨습니다.');
                            } /* ajax close */
                        }); /* function(rsp) close */
                    }
                </script>
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

        </body>

        </html>