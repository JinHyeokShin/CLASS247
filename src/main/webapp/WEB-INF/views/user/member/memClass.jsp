<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ourcompany.class247.member.model.vo.Member"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>CLASS 247</title>
            <style>
            
            #Mdrecom{
            width:90%;
            }
			</style>
            <link rel="icon" href="resources/user/img/favicon.png">
            <script src="resources/user/js/jquery.counterup.min.js"></script>
            <script src="resources/user/js/waypoints.min.js"></script>
		</head>
        <c:import url="/WEB-INF/views/user/common/menubar.jsp" />
		<body>
     <section class="contact-section section_padding">
    <div class="container">
	  	<br>
      		<h1>${ loginUser.memName }님의 수강내역</h1>
      		<br>
      		<hr>
      		<br>
	 <section class="special_cource padding_top" id="Mdrecom">
                <div class="container" id="Mdrecom">
                    <div class="row justify-content-left">
                        <div class="col-xl-5">
                            <div class="section_tittle text-left">
					  		<h3>온라인</h3>
					  		<br>
					  		<c:if test="${ !empty payonlist }">
					      		<h4 align="left" style=>&nbsp;
					      		${ loginUser.memName } 님의 온라인 클래스 갯수 : ${ payonlist.size() }
					      		</h4>
					      	</c:if>
				      		<c:if test="${ empty payonlist }">
					      		<h4 align="left">&nbsp;
					      		${ loginUser.memName } 님 다양한 클래스를 보러가세요! </h4>	
					      		<br>	
					      		<div class="form-group" align="center">
					      		  <a href="goOnline.do">
					             <input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="온라인 클래스 바로가기">
					            </a>
					            </div> 
					      	</c:if>
	  					 </div>
                     	   </div>
              		      </div>
              		      
							 <c:forEach items="${ payonlist }" var="pon">
              		      <blockquote class="generic-blockquote">
							
                     	<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ pon.courseNum }"/>
						</c:url>
				<div class="row">
					<div class="col-md-5">
						<img src="resources/user/img/test1.jpeg" class="special_img" alt="" onclick="location.href=${codetail}">
					</div>
					<div class="col-md-7 mt-sm-10">
						<p>
						<br>
						  <h4> [ ${ pon.categoryName } ] ${pon.courseTitle }</h4>
						  <br>
							<h4>튜터 : ${ pon.creNickname }</h4>
							<br>
							<h4>수강기간 : ${ pon.courseStartDate } ~ ${ pon.courseEndDate }</h4>
						
						</p>
							<br><br>
							<div class="col-md-12" style="text-align:right">
							 <a href="${ codetail }">
                           		<h3  style="display:inline-block" >
                           		 <input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="클래스 바로가기">
					          	</h3>
                              </a>
                              &nbsp;   &nbsp;   &nbsp;
                               <a href="${ codetail }">
                           		 <h3  style="display:inline-block">
                           		<input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="리뷰 작성하기">
								</h3>
                               </a>
                               </div>
					</div>
				</div>
			
						</blockquote>
				  </c:forEach>
				  </div>
				  </section>
				   <section class="special_cource padding_top" id="Mdrecom">
                <div class="container" id="Mdrecom">
                    <div class="row justify-content-left">
                        <div class="col-xl-5">
                            <div class="section_tittle text-left">
					  		<h3>오프라인</h3>
					  		<br>
					  		<c:if test="${ !empty payofflist }">
					      		<h4 align="left" style=>&nbsp;
					      		${ loginUser.memName } 님의 오프라인 클래스 갯수 : ${ payofflist.size() }
					      		</h4>
					      	</c:if>
				      		<c:if test="${ empty payofflist }">
					      		<h4 align="left">&nbsp;
					      		${ loginUser.memName }  님 다양한 클래스를 보러가세요! </h4>
					      		<br>	
					      		<div class="form-group" align="center">
					      		  <a href="goOffline.do">
					             <input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="오프라인 클래스 바로가기">
					            </a>
					            </div> 
					      	</c:if>
	  					 </div>
                     	   </div>
              		      </div>
              		      
							
                     	 <c:forEach items="${ payofflist }" var="poff">
              		      <blockquote class="generic-blockquote">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ poff.courseNum }"/>
						</c:url>
				<div class="row">
					<div class="col-md-5">
						<img src="resources/user/img/test1.jpeg" class="special_img" alt="" onclick="location.href=${codetail}">
					</div>
					<div class="col-md-7 mt-sm-10">
						<p>
						<br>
						  <h4> [ ${ poff.categoryName } ] ${poff.courseTitle }</h4>
						  <br>
							<h4>튜터 : ${ poff.creNickname }</h4>
							<br>
							<h4>수강기간 : ${ poff.courseStartDate } ~ ${ poff.courseEndDate }</h4>
						
						</p>
							<br><br>
							<div class="col-md-12" style="text-align:right">
							 <a href="${ codetail }">
                           		<h3  style="display:inline-block" >
                           		 <input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="클래스 바로가기">
					          	</h3>
                              </a>
                              &nbsp;   &nbsp;   &nbsp;
                               <a href="${ codetail }">
                           		 <h3  style="display:inline-block">
                           		<input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="리뷰 작성하기">
								</h3>
                               </a>
                               </div>
					</div>
				</div>
			
						</blockquote>
				  </c:forEach>
				  </div>
				  </section>
				 </div>
				 </section>
			<c:import url="/WEB-INF/views/user/common/footer.jsp" />
            
        </body>

        </html>