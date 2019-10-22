<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크리에이터 공지사항</title>
</head>
<body class="animsition">
	<c:import url="../common/cMenubar.jsp"/>
	
	<div class="page-wrapper">
        <!-- START NOTICE TABLE -->
            <section class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                         <h3 class="title-3 m-b-30">
                            <i class="fas fa-question-circle"></i>INQUIRY
                        </h3>
                        <div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE-->
                                <div class="table-responsive m-b-40">
                                    <table id="noticeTable" class="table table-borderless table-data3" style="text-align:center">
                                        <thead>
                                            <tr>
                                                <th>no</th>
                                                <th width=50%>title</th>
                                                <th>count</th>
                                                <th>date</th>
                                                <th>writer</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>8</td>
                                                <td>첫번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-29 05:57</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>두번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-28 01:22</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>세번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-27 02:12</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>네번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-26 23:06</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>다섯번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-25 19:03</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>여섯번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-29 05:57</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>일곱번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-24 19:10</td>
                                                <td>관리자</td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>여덟번째 공지사항입니다.</td>
                                                <td>0</td>
                                                <td>2018-09-22 00:43</td>
                                                <td>관리자</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="pagingBarArea" style="text-align:center">
                                    <button type="button" class="btn btn-primary">&lt;&lt;</button>
                                    <button type="button" class="btn btn-primary">&lt;</button>
                                    <button type="button" class="btn btn-primary">1</button>
                                    <button type="button" class="btn btn-primary">2</button>
                                    <button type="button" class="btn btn-primary">3</button>
                                    <button type="button" class="btn btn-primary">4</button>
                                    <button type="button" class="btn btn-primary">5</button>
                                    <button type="button" class="btn btn-primary">6</button>
                                    <button type="button" class="btn btn-primary">7</button>
                                    <button type="button" class="btn btn-primary">8</button>
                                    <button type="button" class="btn btn-primary">9</button>
                                    <button type="button" class="btn btn-primary">10</button>
                                    <button type="button" class="btn btn-primary">&gt;</button>
                                    <button type="button" class="btn btn-primary">&gt;&gt;</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END NOTICE TABLE-->


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