<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
        /* 사진 호버시 확대  */
.special_img {
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
}
.special_img:hover {
  transform: scale(1.2);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);
}
.img { overflow:hidden }   /* 부모를 벗어나지 않고 내부 이미지만 확대 */
        </style>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>
	<section class="special_cource padding_top" style="padding-top:100px">
		<div class="container" >
			<hr>
			<h1>온라인 클래스 모아보기</h1>
			<hr>
			</div>
	</section>
	<c:if test="${ !empty signitureList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>클래스 247만의 특별한 클래스</p>
							<h2>247 Signiture</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ signitureList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>

			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty craftsList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>당신만의 공예품을 만들어보세요!</p>
							<h2>공예</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ craftsList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty designList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>더 특별한 디자인을 구성하고싶으신가요?</p>
							<h2>디자인</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ designList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty developList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>웹사이트 혹은 어플을 만들어보고 싶으신가요 ?</p>
							<h2>개발</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ developList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty digitalList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>포토샵 등 웹디자인에 도움되는 것들을 배우고 싶으신가요?</p>
							<h2>디지털 드로잉</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ digitalList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty lifeList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>당신의 라이프 스타일을 변화시켜보세요!</p>
							<h2>라이프 스타일</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ lifeList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty artList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>손쉽게 그림을 그릴 수 있어요!</p>
							<h2>미술</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ artList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty cameraList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>인생샷을 위해!</p>
							<h2>사진, 영상</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ cameraList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty foodList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>야 나도 밥할 수 있어 !</p>
							<h2>음식, 음료</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ foodList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty musicList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>당신의 재능을 살려보세요!</p>
							<h2>음악</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ musicList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>
	<c:if test="${ !empty careerList }">
		<section class="special_cource padding_top" id="Mdrecom">
			<div class="container" id="Mdrecom">
				<div class="row justify-content-left">
					<div class="col-xl-5">
						<div class="section_tittle text-left">
							<p>커리어를 높혀 당신의 자존감을 높혀보세요!</p>
							<h2>커리어</h2>
						</div>
					</div>
				</div>

				<div class="owl-carousel">
					<c:forEach items="${ careerList }" var="co">
						<c:url value="codetail.do" var="codetail">
							<c:param name="courseNum" value="${ co.courseNum }" />
							<c:param name="courseKind" value="${ co.courseKind}" />
						</c:url>
						<div class="item">
							<div class="single_special_cource">
								<div class="img">
                                    <img src="resources/course/images/${co.coaRName }" class="special_img" alt="" onclick="location.href='${codetail}'">
                                    </div>
                                    <div class="special_cource_text">
                                        <a class="btn_4">${ co.categoryName }</a>
                                        <c:if test="${ co.courseKind eq 'online'}">
                                            <h4>${ co.coursePrice }&#8361;</h4>
                                        </c:if>
                                        <c:if test="${ co.courseKind eq 'offline'}">
                                            <h4>시간당 <br>${ co.courseHourPrice }&#8361;</h4>
                                        </c:if>
                                        <a href="${ codetail }">
                                            <h3>${co.courseTitle }</h3>
                                        </a>
                                        <p></p>
                                        <div class="author_info">
                                            <div class="author_img">
                                                <img src="resources/creator/creatorImages/${co.craRName }" alt="" style="border-radius: 50%; width:50px; height:50px;" onclick="location.href='${codetail}'">
                                                <div class="author_info_text">
                                                    <p>크리에이터:</p>
                                                    <h5><a href="${ codetail }">${co.memNickName }</a></h5>
                                                </div>
                                            </div>
                                             <div class="author_rating">
                                            <p>${ co.loveCount }</p> 
                                            <img src="resources/creator/images/nlike.png"
											id="love">
                                        </div>
									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<hr>
		</section>
	</c:if>



	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
	<script>
	$(document).ready(function(){
		var owl = $('.owl-carousel');
		owl.owlCarousel({
		    items:4,
		    loop:true,
		    margin:10,
		    autoplay:true,
		    autoplayTimeout:3000,
		    autoplayHoverPause:true
		});
		});
	</script>
</body>
</html>