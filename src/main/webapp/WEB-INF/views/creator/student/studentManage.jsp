<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../common/cMenubar.jsp"/>
	
		   <div class="page-wrapper">
	            <section class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="fas fa-user"></i>students status
                        </h3>
                        <div class="row">
                            <div class="col-md-12">
                            <!-- DATA TABLE -->
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md">
                                        <select class="js-select2" name="property">
                                            <option selected="selected">All Properties</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <div class="rs-select2--light rs-select2--sm">
                                        <select class="js-select2" name="time">
                                            <option selected="selected">Today</option>
                                            <option value="">3 Days</option>
                                            <option value="">1 Week</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters</button>
                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2" name="type">
                                            <option selected="selected">Export</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>
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
                                    <c:if test="${ !empty studentList }">
                                    <c:forEach items="${ studentList }" var="s">
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
                                        </c:forEach>
                                        </c:if>
	                                        <tr class="spacer"></tr>
                                         <c:if test="${ empty studentList }">
			                                 <tr class="tr-shadow">
				                                <td colspan='8' style="text-align:center"> 현재 수강중인 학생이 없습니다</td>
				                             </tr>
			                             </c:if>
                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
   							  <div id="pagingBarArea" style="text-align:center">
			                        <!-- 이전 -->
									<c:if test="${ pi.currentPage eq 1}">
										<button class="btn btn-secondary" disabled>이전</button>
									</c:if>
									<c:if test="${ pi.currentPage ne 1 }">
										<c:url value="studentManage.do" var="before">
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
											<c:url value="studentManage.do" var="page">
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
										<c:url value="studentManage.do" var="next">
											<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
										</c:url>
										<a href="${ next }" class="btn btn-primary">다음</a>
									</c:if>
		                         </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
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


</body>
</html>