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
                                            <form action="coInsert.do" method="post" enctype="multipart/form-data" class="form-horizontal">
                                                <div class="form-group">
                                              	  <label for="categoryNum" class=" form-control-label">수업등록지역(대표)*</label> <br>
                                                  <div class="col-md-5" style="display:inline-block">
                                                 	   <select name="area" id="area" class="form-control" onchange="showCityBox(this)">
                                                 	 	  <option value="">대표지역을 선택해주세요</option>
                                                  	      <option value="서울">서울</option>
                                                  	      <option value="경기">경기</option>
                                                 	      <option value="인천">인천</option>
                                                 	      <option value="부산">부산</option>
                                                 	      <option value="경상">경상, 대구, 울산</option>
                                                 	      <option value="대전">대전, 충청</option>
                                                 	      <option value="강원">강원</option>
                                                 	      <option value="광주">광주, 전라, 제주</option>
                                                 	      <option value="기타">기타</option>
                                                 	   </select>
                                               	 </div>
                                               	 <div class="col-md-5" style="display:inline-block">
                                                 	   <select name="city" id="city" class="form-control" onchange="checkCity(this);">
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
                                                    <div class="form-check-inline form-check">
                                                        <label for="online" class="form-check-label ">
                                                            <input type="radio" id="online" name="courseKind" value="online" class="form-check-input">1:1 수업 &nbsp;&nbsp;
                                                        </label>
                                                        <label for="offline" class="form-check-label ">
                                                            <input type="radio" id="offline" name="courseKind" value="offline" class="form-check-input">그룹 수업
                                                        </label>
                                                    </div>
                                                    <div>
                                                    	<input type="number" placeholder="최소인원수" class="form-control" style="width:200px; display:inline-block">명 ~ 
                                                    	<input type="number" placeholder="최대인원수" class="form-control" style="width:200px;display:inline-block">명 
                                                    </div>
                                                    <small class="help-block form-text">&nbsp;class247 수강생들이 선호하는 그룹수업은 평균적으로 2~6인 내외입니다.</small>
                                                </div>                                                
                                                <hr>
                                                <div class="form-group">
                                                    <label class=" form-control-label">수업 날짜/시간</label><br>
                                                    <div>
                                                    	<input type="date" placeholder="최소인원수" class="form-control" style="width:200px; display:inline-block"> ~ 
                                                    	<input type="date" placeholder="최대인원수" class="form-control" style="width:200px;display:inline-block">
                                                    </div>  
                                                    <small class="help-block form-text">수업 시작일과 종료일을 입력해주세요(최소 1개월)</small><br>
                                                    &nbsp;
                                                    <div class="form-check-inline form-check">
                                                        <input type="checkbox" name="courseDay" value="monday" class="form-check-input">월요일 &nbsp;&nbsp;
                                                        <input type="checkbox" name="courseDay" value="tuesday" class="form-check-input">화요일 &nbsp;&nbsp;
                                                        <input type="checkbox" name="courseDay" value="wednesay" class="form-check-input">수요일 &nbsp;&nbsp;
                                                        <input type="checkbox" name="courseDay" value="thursday" class="form-check-input">목요일 &nbsp;&nbsp;
                                                        <input type="checkbox" name="courseDay" value="friday" class="form-check-input">금요일 &nbsp;&nbsp;
                                                        <input type="checkbox" name="courseDay" value="saturday" class="form-check-input">토요일 &nbsp;&nbsp;
                                                        <input type="checkbox" name="courseDay" value="sunday" class="form-check-input">일요일 &nbsp;&nbsp;
                                                    </div>
                                                    <small class="help-block form-text">&nbsp;수업 요일을 선택해주세요(매주)</small><br>
                                                </div>                                                
                                                <hr> 
                                                <div class="form-group">
                                                    <div class="col col-md-5">
                                                        <label for="text-input" class=" form-control-label">* 클래스 커버 사진</label>
                                                        <input class="" type="file" name="coverImage">
                                                    </div>
                                                    <div class="col-12 col-md-9" style="height:200px">
                                                        <small class="help-block form-text">클래스를 대표할 커버사진을 추가하세요.</small>
                                                        <div style="width:40%; height:40%; margin-top: 10px; text-align: center">
                                                            <img src="resources/creator/images/bg-title-02.jpg" alt="cover" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label class=" form-control-label">수업 가격*</label><br>
                                                    <div class="">
                                                       <input type="number" placeholder="ex) 10000" id="courseHourPrice" name="courseHourPrice" class="form-control" style="width:300px; display:inline-block"> 원 &nbsp;&nbsp;
                                                 	   <small class="help-block form-text">시간당 수업 가격을 입력하세요.</small><br>
                                                  	   <input type="number" placeholder="ex) 1" id="courseHours" class="form-control" style="width:300px; display:inline-block"> 시간                              
                                                  	   <small class="help-block form-text">1회당 수업 시간을 입력하세요.</small><br>
                                                  	   <input type="number" placeholder="ex) 4" id="courseCount" class="form-control" style="width:300px; display:inline-block"> 회                         
                                                  	   <small class="help-block form-text">총 수업횟수를 입력하세요</small><br>
                                                    </div>
                                                    <div style="background-color:lightgray; width:90%; height:100px; align:center">
                                                    	<span id="courseHourPrice"></span>원 X <span id="courseHours"></span>시간 X <span id="courseCount"></span>회
                                                    </div>
                                                </div>                 
                                                <hr>
                                                <div class="form-group">
                                                	<img src="resources/creator/images/offline.jpg">
                                                </div>                                 
		                                        <div style="text-align:center">
		                                            <button type="submit" class="btn btn-primary btn-sm">
		                                           		클래스 신청하기
		                                            </button>
		                                            <button type="reset" class="btn btn-secondary btn-sm">
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
                
                <script>
                	
                $(function() {
                	
               
                })
                	
                
                </script>


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