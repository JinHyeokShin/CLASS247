<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.hd{
		font-weight:900 !important;
	}

</style>
</head>
<body class="animsition">
	<c:import url="common/cMenubar.jsp"/>

    <div class="page-wrapper">
    
    <script>
    $(function(){
    	
	    var d = new Date();
	    var thisMonth = (d.getMonth() + 1);
	
		$.ajax({
			url:'getChart.do',
			type:'post',
			dataType:'json',
			data:{"month":thisMonth},
			success:function(data) {
			console.log("month" + data.months);
			console.log("online" + data.online);
			console.log("offline" + data.offline);
			console.log("total" + data.total);
			console.log("toMonths" + data.toMonths);

			    var ctx = document.getElementById("myChart");
			    if (ctx) {
			      ctx.height = 150;
			      var myChart = new Chart(ctx, {
			        type: 'line',
			        data: {
			          labels: data.months,
			          type: 'line',
			          defaultFontFamily: 'Poppins',
			          datasets: [{
			            label: "Online",
			            data: data.online,
			            backgroundColor: 'transparent',
			            borderColor: 'rgba(220,53,69,0.75)',
			            borderWidth: 3,
			            pointStyle: 'circle',
			            pointRadius: 5,
			            pointBorderColor: 'transparent',
			            pointBackgroundColor: 'rgba(220,53,69,0.75)',
			          }, {
			            label: "Offline",
			            data: data.offline,
			            backgroundColor: 'transparent',
			            borderColor: 'rgba(40,167,69,0.75)',
			            borderWidth: 3,
			            pointStyle: 'circle',
			            pointRadius: 5,
			            pointBorderColor: 'transparent',
			            pointBackgroundColor: 'rgba(40,167,69,0.75)',
			          }]
			        },
			        options: {
			          responsive: true,
			          tooltips: {
			            mode: 'index',
			            titleFontSize: 12,
			            titleFontColor: '#000',
			            bodyFontColor: '#000',
			            backgroundColor: '#fff',
			            titleFontFamily: 'Poppins',
			            bodyFontFamily: 'Poppins',
			            cornerRadius: 3,
			            intersect: false,
			          },
			          legend: {
			            display: false,
			            labels: {
			              usePointStyle: true,
			              fontFamily: 'Poppins',
			            },
			          },
			          scales: {
			            xAxes: [{
			              display: true,
			              gridLines: {
			                display: false,
			                drawBorder: false
			              },
			              scaleLabel: {
			                display: false,
			                labelString: 'Month'
			              },
			              ticks: {
			                fontFamily: "Poppins"
			              }
			            }],
			            yAxes: [{
			              display: true,
			              gridLines: {
			                display: false,
			                drawBorder: false
			              },
			              scaleLabel: {
			                display: true,
			                labelString: 'Amount',
			                fontFamily: "Poppins"
			
			              },
			              ticks: {
			                fontFamily: "Poppins"
			              }
			            }]
			          },
			          title: {
			            display: false,
			            text: 'Normal Legend'
			          }
			        }
			      });
			    }
			    
			    
			    // single bar chart
			    
			    var ctx = document.getElementById("singelBarChart");
			    if (ctx) {
			      ctx.height = 150;
			      var myChart = new Chart(ctx, {
			        type: 'bar',
			        data: {
			          labels: data.toMonths,
			          datasets: [
			            {
			              label: "총 매출",
			              data: data.total,
			              borderColor: "gray",
			              borderWidth: "0",
			              backgroundColor: "pink"
			            }
			          ]
			        },
			        options: {
			          legend: {
			            position: 'top',
			            labels: {
			              fontFamily: 'Poppins'
			            }

			          },
			          scales: {
			            xAxes: [{
			              ticks: {
			                fontFamily: "Poppins"

			              }
			            }],
			            yAxes: [{
			              ticks: {
			                beginAtZero: true,
			                fontFamily: "Poppins"
			              }
			            }]
			          }
			        }
			      });
			    }

			    
			    
						
			}, 
			error:function(){
				console.log('ajax 통신 실패');
			}
		});	
    });  
    </script>

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 m-b-40">온라인/오프라인 클래스 매출 현황</h3>
                                        <canvas id="myChart"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 m-b-40">최근 6개월 총 매출 현황</h3>
                                        <canvas id="singelBarChart"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">	
                                <div class="top-campaign">
                                    <h3 class="title-3 m-b-30">${creator.creName}님의 입금 내역서 </h3>
                                    <div class="table-responsive">
                                        <table class="table table-top-campaign">
                                            <tbody id="salaryTable">
                                            
                                            <c:if test="${ empty salaryList  }">
                                            	<tr>
                                            		<td> 존재하는 급여 내역이 없습니다. </td>
                                            	</tr>
                                            </c:if>
                                            <c:if test="${ !empty salaryList }">
                                                <tr>
                                                    <td class="hd" width="20%">수익 월</td>
                                                    <td class="hd">클래스 이름</td>
                                                    <td class="hd">지급 날짜</td>
                                                    <td class="hd">입금액</td>
                                                </tr>
                                                
                                                <c:forEach items="${salaryList }" var="sl">
                                                	<tr>
                                                		<td>${sl.forMonth}월</td>
                                                		<td>${sl.courseTitle}</td>
                                                		<td>${sl.paidDate}</td>
                                                		<td>&#8361;${sl.amount}</td>
                                                	<tr>
                                                </c:forEach>
                                               </c:if>
                                            </tbody>
                                        </table><br>
                                    <div id="pagingBarArea" style="text-align:center">
			                    	    <!-- 이전 -->
										<c:if test="${ pi.currentPage eq 1}">
											<button class="btn btn-secondary" disabled>이전</button>
										</c:if>
										<c:if test="${ pi.currentPage ne 1 }">
											<c:url value="editor.do" var="before">
												<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
											</c:url>
											<a href="${ before }" class="btn btn-primary">이전</a>
										</c:if>
										
										<!-- 번호들 -->
										<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
											<c:if test="${ p eq pi.currentPage }">
												<button class="btn btn-secondary" disabled>${ p }</button>	
											</c:if>
											<c:if test="${ p ne pi.currentPage }">
												<c:url value="editor.do" var="page">
													<c:param name="currentPage" value="${ p }"/>
												</c:url>
												<a href="${ page }" class="btn btn-primary">${ p }</a>
											</c:if>
										</c:forEach>
										
										<!-- 다음 -->
										<c:if test="${ pi.currentPage eq pi.maxPage }">
											<button class="btn btn-secondary" disabled>다음</button>
										</c:if>
										<c:if test="${ pi.currentPage ne pi.maxPage }">
											<c:url value="editor.do" var="next">
												<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
											</c:url>
											<a href="${ next }" class="btn btn-primary">다음</a>
										</c:if>
                                    </div>
                                </div>										
                            </div>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
        </div>
        <!-- END PAGE CONTAINER-->

    
    <script>
    // single bar chart


    </script>
<c:import url="common/cMenubar.jsp"/>
</body>
</html>