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
	<c:import url="../common/cMenubar.jsp"/>

	
  <div class="page-wrapper">
    <!-- PAGE CONTAINER-->
      <!-- MAIN CONTENT-->
      <div class="main-content">
        <div class="section__content section__content--p30">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <strong class="card-title">클래스 상세 보기</strong>
                  </div>
                  <div class="card-body">
                    <div class="typo-headers">
                      <h1 class="pb-2 display-4" align="center">${co.courseTitle }</h1>
                    </div>
                    <div class="vue-lists">
                      <h2 class="mb-4"></h2>
                      <div class="row">
                        <div class="col-md-8">
							<img class="card-img-top" src="resources/course/images/${ cover.coaRName }" alt="Card image cap">
                        </div>
                        <div class="col-md-3 text-left">
                          <div>
                            <h3>ABOUT CLASS</h3>
                            <br>
                            <table>
                            	<tr>
                            		<td><span class="badge badge-danger">${co.courseKind}</span></td>
                            		<td>${co.courseLevel}</td>
                            	</tr>
                            	<tr>
                            		<td colspan="2">${co.courseStartDate} ~ ${co.courseEndDate}</td>
                            	</tr>
                            	<tr>
                            		<td>승인날짜:</td>
                            		<td>${co.courseApprovedDate}</td>
                            	</tr>
                            	<tr>
                            		<td>현재 수강생 </td>
                            		<td>${co.courseCurrentNum}명</td>
                            	</tr>
                            </table>
                          </div>
                        </div>
                      </div>
                      <div class="row">
						<div class=".col">
							<div class="card">
								<div class="card-body">
									<div class="default-tab">
										<nav>
											<div class="nav nav-tabs" id="nav-tab" role="tablist">
												<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home"
													aria-selected="true">수강생</a>
												<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile"
												 aria-selected="false">클래스 소개</a>
												<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact"
												 aria-selected="false">리뷰</a>
											</div>
										</nav>
										<div class="tab-content pl-3 pt-2" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
										<div class="table-responsive table-responsive-data2">
			                                <table class="table table-data2">
			                                    <thead>
			                                        <tr>
			                                            <th>
			                                                <label class="au-checkbox">
			                                                    <input type="checkbox">
			                                                    <span class="au-checkmark"></span>
			                                                </label>
			                                            </th>
			                                            <th>profile</th>
			                                            <th>name </th>
			                                            <th>class</th>
			                                            <th>registration</th>
			                                            <th>phone</th>
			                                            <th>status</th>
			                                            <th>level</th>
			                                        </tr>
			                                    </thead>
			                                    <tbody>
			                                    <c:if test="${ !empty stuList }">
			                                    <c:forEach items="${ stuList }" var="s">
				                                    <c:url value="stuDetail.do" var="stuDetail">
				                                    	<c:param name="memNum" value="${s.memNum}"/>
				                                    	<c:param name="courseNum" value="${s.courseNum}"/>
				                                    </c:url>
				                                        <tr class="tr-shadow" onclick="location.href='${stuDetail}';">
				                                            <td>
				                                                <label class="au-checkbox">
				                                                    <input type="checkbox">
				                                                    <span class="au-checkmark"></span>
				                                                </label>
				                                            </td>
				                                            <td>
				                                                <div class="image img-cir img-40">
				                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-02.jpg" alt="Cynthia Harvey" />
				                                                </div> 
				                                            </td>
				                                            <td>${ s.memName }</td>
				                                            <td>
				                                                <span class="block-email">${ s.courseTitle }</span>
				                                            </td>
				                                            <td>09/27</td>
				                                            <td>${ s.memPhone }</td>
				                                                <td>
				                                                    <span class="status--process">수강</span>
				                                                </td>
				                                            <td>입문자</td>
				                                            <td>
				                                                <div class="table-data-feature">
				                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
				                                                        <i class="zmdi zmdi-mail-send"></i>
				                                                    </button>
				                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
				                                                        <i class="zmdi zmdi-info"></i>
				                                                    </button>
				                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
				                                                        <i class="zmdi zmdi-edit"></i>
				                                                    </button>
				                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
				                                                        <i class="zmdi zmdi-more"></i>
				                                                    </button>
				                                                </div>
				                                            </td>
				                                        </tr>
				                                        <tr class="spacer"></tr>
			                                      		  </c:forEach>
			                                      		  </c:if>
			                                     		   <c:if test="${ empty stuList }">
			                                        			<tr class="tr-shadow">
				                                          	  		<td colspan='8' style="text-align:center"> 현재 수강중인 학생이 없습니다</td>
				                                        		</tr>
			                                        		</c:if>
			                                    		</tbody>
			                                		</table>
			                           			 </div>
												</div>
												<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
													<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth
														master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh
														dreamcatcher synth. Cosby sweater eu banh mi, irure terry richardson ex sd. Alip placeat salvia cillum iphone.
														Seitan alip s cardigan american apparel, butcher voluptate nisi .</p>
												</div>
												<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
													<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth
														master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh
														dreamcatcher synth. Cosby sweater eu banh mi, irure terry richardson ex sd. Alip placeat salvia cillum iphone.
														Seitan alip s cardigan american apparel, butcher voluptate nisi .</p>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>     
						</div>               
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
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

  </div>

  <!-- Jquery JS-->
  <script src="vendor/jquery-3.2.1.min.js"></script>
  <!-- Bootstrap JS-->
  <script src="vendor/bootstrap-4.1/popper.min.js"></script>
  <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
  <!-- Vendor JS       -->
  <script src="vendor/slick/slick.min.js">
  </script>
  <script src="vendor/wow/wow.min.js"></script>
  <script src="vendor/animsition/animsition.min.js"></script>
  <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
  </script>
  <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
  <script src="vendor/counter-up/jquery.counterup.min.js">
  </script>
  <script src="vendor/circle-progress/circle-progress.min.js"></script>
  <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="vendor/chartjs/Chart.bundle.min.js"></script>
  <script src="vendor/select2/select2.min.js">
  </script>

  <!-- Main JS-->
  <script src="js/main.js"></script>

</body>
</html>