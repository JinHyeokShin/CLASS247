<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gugi&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu&display=swap" rel="stylesheet">
<style>
	.hr {
		display:inline;
		font-size : 20px;
		color:gray;
		font-family: 'Gaegu', cursive;
	}
</style>
</head>
<body>
	<c:import url="../common/cMenubar.jsp"/>
	
	<div class="page-wrapper">
        <!-- FORM START -->
            <section class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <h3 class="title-3 m-b-30">
                                <i class="zmdi zmdi-book"></i>New Class
                            </h3>
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3><strong>오프라인 클래스 상세정보</strong></h3>
                                        </div>
                                        <div class="card-body card-block">
                                            <form action="offlineInsert.do" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <div class="form-group">
                                              	  <label for="categoryNum" class=" form-control-label">수업등록지역(대표)*</label> <br>
                                                  <div class="col-md-5" style="display:inline-block">
                                                 	   <select name="area" id="area" class="form-control" onchange="showCityBox(this)" required>
                                                 	 	  <option value="">대표지역을 선택해주세요</option>
                                                  	      <option value="서울">서울</option>
                                                  	      <option value="경기">경기</option>
                                                 	      <option value="인천">인천</option>
                                                 	      <option value="부산">부산</option>
                                                 	      <option value="경상">경상, 대구, 울산</option>
                                                 	      <option value="대전">대전</option>
                                                 	      <option value="강원">강원</option>
                                                 	      <option value="광주">광주, 전라, 제주</option>
                                                 	      <option value="기타">기타</option>
                                                 	   </select>
                                               	 </div>
                                               	 <div class="col-md-5" style="display:inline-block">
                                                 	   <select name="city" id="city" class="form-control" onchange="checkCity(this);" required>
                                                  	      <option value="">------</option>

                                                 	   </select>
                                               	 </div>
                                               	 
                                               	 <script>
                                               	 	function showCityBox(e){
                                       	 				$('#city').text('');
                                               	 		if(e.value == '서울') {
                                               	 			var array = ['강남', '신촌홍대', '건대', '종로', '사당', '잠실', '신림', '마포', '영등포', '성북'
                                               	 			, '목동', '혜화', '용산', '왕십리', '구로', '노원', '동작', '신사', '은평', , '회기', '수유', '미아'
                                               		 		, '충무로', '청량리'];
                                               	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '경기') {
                                               	 			var array = ['수원', '일산', '분당', '의정부', '서현', '에버랜드'];                                             	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '인천') {
                                               	 			var array =  ['부평', '구월동', '송도', '계양'];                                           	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '부산') {
                                               	 			var array =  ['부산서면', '부산해운대', '부산부경대', '부산대', '부산동래', '부산사상', '부산남포', '광안리'];                                           	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '경상') {
                                               	 			var array =  ['대구중앙', '동성로', '울산대', '창원', '울산시청', '포항', '구미', '수성', '경산'];                                           	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '대전') {
                                               	 			var array =  ['둔산', '대전역', '청주', '천안', '유성구'];                                           	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '강원') {
                                               	 			var array =  ['춘천', '원주'];                                           	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '광주') {
                                               	 			var array =  ['전남대', '전주', '제주', '상무지구', '동명', '군산'];                                           	 			
                                               	 		}
                                               	 		
                                               	 		if(e.value == '기타') {
                                               	 			var array =  ['기타지역'];                                           	 			
                                               	 		}                                              	 		
                                               	 		
                                               	 		for(x in array) {
	                                               	 		var $option = $('<option value=' + array[x] + '>').text(array[x]);
	                                               	 		$('#city').append($option);
                                               	 		}

                                               	 	}
                                               	 </script>
                                         	   </div>                              
                                                <hr>
                                                
                                                <div class="form-group">
                                                    <label class=" form-control-label">수업 참원 인원</label><br>
                                                    <div>
                                                    	<input type="number" name="courseMinPax" id="courseMinPax" placeholder="최소인원수" class="form-control" style="width:200px; display:inline-block" required>명 ~ 
                                                    	<input type="number" name="courseMaxPax" id="courseMaxPax" placeholder="최대인원수" class="form-control" style="width:200px;display:inline-block" required>명 
                                                    </div>
                                                    <small class="help-block form-text">&nbsp;class247 수강생들이 선호하는 그룹수업은 평균적으로 2~6인 내외입니다.</small>
                                                </div>                                                
                                                <hr>
                                                <div class="form-group">
                                                    <label class=" form-control-label">수업 날짜/시간</label><br>
                                                    <div>
                                                    	<input type="date" name="courseStartDate" id="courseStartDate" class="form-control" style="width:200px; display:inline-block" required> ~ 
                                                    	<input type="date" name="courseEndDate" id="courseEndDate" class="form-control" style="width:200px;display:inline-block" required>
                                                    </div>  
                                                    <small class="help-block form-text">수업 시작일과 종료일을 입력해주세요(최소 1개월)</small><br>
                                                    &nbsp;
                                                    <div class="form-check-inline form-check">
                                                        <input type="checkbox" name="courseDay" id="월요일" value="월요일" class="form-check-input">
                                                        <label for="월요일">월요일 &nbsp;&nbsp; </label>
                                                        <input type="checkbox" name="courseDay" id="화요일" value="화요일" class="form-check-input">
                                                        <label for="화요일">화요일 &nbsp;&nbsp; </label>
                                                        <input type="checkbox" name="courseDay" id="수요일" value="수요일" class="form-check-input">
                                                        <label for="수요일">수요일 &nbsp;&nbsp; </label>
                                                        <input type="checkbox" name="courseDay" id="목요일" value="목요일" class="form-check-input">
                                                        <label for="목요일">목요일 &nbsp;&nbsp; </label>
                                                        <input type="checkbox" name="courseDay" id="금요일" value="금요일" class="form-check-input">
                                                        <label for="금요일">금요일 &nbsp;&nbsp; </label>
                                                        <input type="checkbox" name="courseDay" id="토요일" value="토요일" class="form-check-input">
                                                        <label for="토요일">토요일 &nbsp;&nbsp; </label>
                                                        <input type="checkbox" name="courseDay" id="일요일" value="일요일" class="form-check-input">
                                                        <label for="일요일">일요일 &nbsp;&nbsp; </label>
                                                    </div>
                                                    <small class="help-block form-text">&nbsp;수업 요일을 선택해주세요(매주)</small><br>
                                                </div>                                                
                                                <hr> 
                                                <div class="form-group">
                                                    <div class="col col-md-5">
                                                        <label for="text-input" class=" form-control-label">* 클래스 커버 사진</label>
                                                        <input class="" type="file" name="coverImage" onchange="loadImg(this)">
                                                    </div>
                                                    <div class="col-12 col-md-9" style="height:200px">
                                                        <small class="help-block form-text">클래스를 대표할 커버사진을 추가하세요.</small>
                                                        <div style="width:40%; height:40%; margin-top: 10px; text-align: center;">
                                                            <img id="imgBox" src="resources/creator/images/bg-title-02.jpg" alt="cover" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                
                                                <script>
								                	function loadImg(value){
								                		if(value.files && value.files[0]) {
								                			var reader = new FileReader();
								                			reader.onload = function(e) {
								                				$('#imgBox').attr("src", e.target.result);
								                			}
								                			reader.readAsDataURL(value.files[0]);
								                		}
								                	}
								                	
								                	
								                	
								                	$(function() {
								                		
								                		$('#courseMinPax').on("change", function(){
								                			var min = $('#courseMinPax').val();
								                			
								                			if(min < 1) {
								                				alert('최소인원은 1명 이상 가능합니다.');
								                				$('#courseMinPax').val('');
								                				$('#courseMinPax').focus();
								                			}
								                		});
								                		
								                		
 
								                		$('#courseMaxPax').on("blur", function(){
								                			var min = $('#courseMinPax').val();
								                			var max = $('#courseMaxPax').val();
								                			if(max < min) {
								                				alert('최대인원은 최소인원보다 커야합니다. ');
								                				$('#courseMaxPax').val('');
								                			}
								                		}); 
								                		
								                		
								                		$('#courseStartDate').on("change", function(){
								                			var start = $('#courseStartDate').val();
								                			var startDate = new Date(start);
								                			var today = new Date();
								                			if(startDate < today) {
								                				alert("오늘 이전 날짜는 입력이 불가합니다.");
								                				$('#courseStartDate').val('');
								                				$('#courseStartDate').focus();
								                			} 
								                		});
								                		
								                		
								                		$('#courseEndDate').on("change", function(){
								                			var start = $('#courseStartDate').val();
								                			var end = $('#courseEndDate').val();
								                			var endDate = new Date(end);
								                			var startDate = new Date(start);
								                			var newDate = startDate.setMonth(startDate.getMonth() + 1);
								                			
								                			if(endDate < newDate) {
								                				alert("클래스 시작날로 부터 최소 1개월 이상 가능합니다.");
								                				$('#courseEndDate').val('');
								                				$('#courseEndDate').focus();
								                			} else if(start == '') {
								                				alert('시작일을 먼저 선택해주세요.');
								                				$('#courseEndDate').val('');
								                				$('#courseStartDate').focus();
								                			} 
								                		});

								                	})
								                </script>
                                                
                                                <div class="form-group">
                                                    <label class=" form-control-label">수업 가격*</label><br>
                                                    <div class="">
                                                       <input type="number" placeholder="ex) 10000" id="courseHourPrice" name="courseHourPrice" class="form-control" style="width:300px; display:inline-block" required> 원 &nbsp;&nbsp;
                                                 	   <small class="help-block form-text">시간당 수업 가격을 입력하세요.</small><br>
                                                  	   <input type="number" placeholder="ex) 1" id="courseHours" name="courseHours" class="form-control" style="width:300px; display:inline-block" required> 시간                              
                                                  	   <small class="help-block form-text">1회당 수업 시간을 입력하세요.</small><br>
                                                  	   <input type="number" placeholder="ex) 4" id="courseCount" name="courseCount" class="form-control" style="width:300px; display:inline-block" required> 회                         
                                                  	   <small class="help-block form-text">총 수업횟수를 입력하세요</small><br>
                                                    </div>
                                                    <div style="background-color: #e6b3ff; width:90%; height:100px; text-align:center; margin-left:auto; margin-right:auto;">
                                                    	<div>
	                                                    	<p class="hr"><span id="courseHourSpan">0</span>원</p> X <p class="hr"><span id="courseHoursSpan">0</span>시간</p> X <p class="hr"><span id="courseCountSpan">0</span>회</p>
	                                                    	<br><p class="hr"><span id="amount">0</span>원</p>
                                                    	</div>
                                                    </div>
                                                    <input type="hidden" name="categoryNum" value="${ co.categoryNum }">
                                                    <input type="hidden" name="creNum" value="${ co.creNum }">
                                                    <input type="hidden" name="courseTitle" value="${ co.courseTitle }">
                                                    <input type="hidden" name="courseContent" value="${ co.courseContent }">
                                                    <input type="hidden" name="courseKind" value="${ co.courseKind }"> 
                                                    <input type="hidden" name="courseLevel" value="${ co.courseLevel }">
                                                </div>                
                                                
                                                <script>
                                                	$(function(){
                                                		$("#courseHourPrice").on("change keyup paste", function(){
                                                			$('#courseHourSpan').text($(this).val());
                                                			total();
                                                		})
                                                		$("#courseHours").on("change keyup paste", function(){
                                                			$('#courseHoursSpan').text($(this).val());
                                                			total();
                                                		})
                                                		
                                                		$("#courseCount").on("change keyup paste", function(){
                                                			$('#courseCountSpan').text($(this).val());
                                                			total();
                                                		})
                                                	})
                                                	// 총 클래스 가격 구하기 
                                                	function total() {
                                                		var hrPrice = $('#courseHourPrice').val();
                                                		var hr = $('#courseHours').val();
                                                		var count = $('#courseCount').val();
                                                		var total = hrPrice * hr * count; 
                                                		
                                                		  var regexp = /\B(?=(\d{3})+(?!\d))/g;
                                                		  total = total.toString().replace(regexp, ',');
                                                		
                                                		$('#amount').text(total);
                                                	}
                                                
                                                </script> 
                                                <hr>
                                                <div class="form-group">
                                                	<img src="resources/creator/images/offline.JPG">
                                                </div>                                 
		                                        <div style="text-align:center">
		                                            <button type="submit" class="btn btn-primary btn-sm">
		                                           		클래스 신청하기
		                                            </button>
		                                            <button type="button" class="btn btn-secondary btn-sm" onclick="history.back()">
		                                          		뒤로가기
		                                            </button>
		                                            <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='<%= request.getContextPath() %>/cMainView.do'">
		                                          		취소하기
		                                            </button>
		                                        </div>
                                            </form>
                                        </div>
                                    </div>            
                                </div> 
                            </div>
                        </div>
                    </div>
                </section>
                


            <!-- PAGE CONTAINER-->
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