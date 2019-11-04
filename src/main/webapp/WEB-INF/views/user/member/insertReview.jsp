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
            .star-input>.input,
            .star-input>.input>label:hover,
            .star-input>.input>input:focus+label,
            .star-input>.input>input:checked+label {
                display: inline-block;
                vertical-align: middle;
                background: url('resources/creator/images/grade_img.png') no-repeat;
            }
            
            .star-input {
                display: inline-block;
                white-space: nowrap;
                width: 225px;
                height: 40px;
                padding: 25px;
                line-height: 30px;
            }
            
            .star-input>.input {
                display: inline-block;
                width: 150px;
                background-size: 150px;
                height: 28px;
                white-space: nowrap;
                overflow: hidden;
                position: relative;
            }
            
            .star-input>.input>input {
                position: absolute;
                width: 1px;
                height: 1px;
                opacity: 0;
            }
            
            star-input>.input.focus {
                outline: 1px dotted #ddd;
            }
            
            .star-input>.input>label {
                width: 30px;
                height: 0;
                padding: 28px 0 0 0;
                overflow: hidden;
                float: left;
                cursor: pointer;
                position: absolute;
                top: 0;
                left: 0;
            }
            
            .star-input>.input>label:hover,
            .star-input>.input>input:focus+label,
            .star-input>.input>input:checked+label {
                background-size: 150px;
                background-position: 0 bottom;
            }
            
            .star-input>.input>label:hover~label {
                background-image: none;
            }
            
            .star-input>.input>label[for="p1"] {
                width: 30px;
                z-index: 5;
            }
            
            .star-input>.input>label[for="p2"] {
                width: 60px;
                z-index: 4;
            }
            
            .star-input>.input>label[for="p3"] {
                width: 90px;
                z-index: 3;
            }
            
            .star-input>.input>label[for="p4"] {
                width: 120px;
                z-index: 2;
            }
            
            .star-input>.input>label[for="p5"] {
                width: 150px;
                z-index: 1;
            }
            
            .star-input>output {
                display: inline-block;
                width: 60px;
                font-size: 18px;
                text-align: right;
                vertical-align: middle;
            }
            #Mdrecom{
            width:90%;
            }
            .nav-item{
            width:30%;
            }
            .nav-link{
            font-size:20;
            }
			</style>
			 <script src="resources/user/js/jquery-1.11.3.min.js"></script>
             <script src="resources/user/js/star.js"></script>
            <link rel="icon" href="resources/user/img/favicon.png">
            
		</head>
        <c:import url="/WEB-INF/views/user/common/menubar.jsp" />
		<body>
     <section class="contact-section section_padding">
    <div class="container">
	  	<br>
      		<form action="reviewInsert.do" method="post" encType="multipart/form-data">
                        	<input type="hidden" name="courseNum" value="${courseNum }">
                            <h6>Reviews</h6>
                            <p>수강을 완료한 수업에 대한 평을 달아주세요!</p>
                            <span class="star-input">
								<span class="input">
									<input type="radio" name="star-input" value="1" id="p1"> <label for="p1">1</label> 
									<input type="radio" name="star-input" value="2" id="p2"> <label for="p2">2</label> 
									<input type="radio" name="star-input" value="3" id="p3"> <label for="p3">3</label> 
									<input type="radio" name="star-input" value="4" id="p4"> <label for="p4">4</label> 
									<input type="radio" name="star-input" value="5" id="p5"> <label for="p5">5</label>
								</span> 
							</span>
							<br><br><br>
                            <textarea name="feedback" class="form-control" cols="10" rows="10"></textarea>
                            <div class="mt-10 text-right">
                                
                                <input type="submit" class="btn_1" value="작성 완료" onclick="self.close();">
                                  
                            </div>
                        
                    </form>
                            
      		
				  
				 </div>
				 </section>
			<c:import url="/WEB-INF/views/user/common/footer.jsp" />
            
        </body>

        </html>