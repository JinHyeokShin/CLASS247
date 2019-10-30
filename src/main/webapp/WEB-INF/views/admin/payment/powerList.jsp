<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Power List</title>

</head>

<body class="animsition">

	<c:import url="../common/aMenubar.jsp" />
	<div class="page-container2">

		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">

							<!-- 공사중 -->
							<div class="card">
								<div class="card-header">
									<h3>
										<strong>파워 등록된 개설한 강좌</strong>
									</h3>
								</div>

								<div class="card-body card-block">
									<div class="row form-groupb">
										<c:forEach items="${ list }" var="coList">


											<div class="col-12 col-md-5">
												<div class="card" onclick="">
													<img style="height: 250px" class="card-img-top"
														src="resources/course/images/${ coList.coaRName }"
														alt="Card image cap">
													<div class="card-body">
														<h4 style="display: inline;" class="card-title mb-3">${coList.courseTitle}</h4>
														<span class="badge badge-danger"> <c:if
																test="${coList.courseKind eq 'offline' }">오프라인 </c:if> <c:if
																test="${coList.courseKind eq 'online' }">온라인 </c:if>
														</span> <label>${coList.categoryName}</label> <label>수준 :
															${coList.courseLevel} &nbsp;&nbsp;&nbsp;등록일 :
															${coList.courseEnrollDate }</label> <label>가격 :
															${coList.coursePrice } &nbsp;&nbsp;&nbsp;좋아요 :
															${coList.loveCount }</label> <label>날짜 :
															${coList.courseStartDate} ~ ${ coList.courseEndDate }</label>
													</div>
												</div>
											</div>


										</c:forEach>

									</div>

								</div>
							</div>
						</div>


					</div>
				</div>

			</div>
		</div>


	</div>
	<c:import url="../common/aImportJs.jsp" />



</body>

</html>