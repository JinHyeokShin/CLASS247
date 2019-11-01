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

	
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">	
							<div class="col-lg-10">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>동영상 강의 추가</strong>
                                    </div>
                                    <form action="addOnlineVideo.do" method="post" class="form-horizontal">
                                    <div id="videoTable">
	                                    <div class="card-body card-block">

	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                	<input type="hidden" name="courseNum" value="${courseNum}">
	                                                    <label for="hf-email" class=" form-control-label">강의 제목</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" id="videoTitle" name="videoTitle" placeholder="강의 제목을 입력하세요." class="form-control" required>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="hf-password" class=" form-control-label">동영상 URL</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" id="videoUrl" name="videoUrl" placeholder="ex)http://youbute.mazzang/SE25&Dz2" class="form-control" required>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="hf-password" class=" form-control-label">강의 내용</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <textarea id="videoContent" name="videoContent" rows="7" class="form-control" required></textarea>
	                                                </div>
	                                            </div>                                            
	                                    	</div>
	                                    </div>
	                                    <div class="card-footer" align="center">
	                                        <button type=button class="btn btn-primary btn-sm" onclick="addVideo();">
	                                            <i class="fa fa-plus"></i> 강의  더 추가하기
	                                        </button>
	                                        <button type="submit" class="btn btn-danger btn-sm">
	                                            <i class="fa fa-check"></i> 강의 등록 완료
	                                        </button>
	                                    </div>
	                                </form>
                                </div>	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <script>
            	function addVideo() {
            		
            		var text='<div class="card-body card-block"><hr><div align="right"><button type="button" class="btn btn-success" onclick="remove(event)")>삭제</button></div>'
            		+ '<div class="row form-group"><div class="col col-md-3">'+
                    	'<input type="hidden" name="cosureNum" value="${courseNum}"><label for="hf-email" class=" form-control-label">강의 제목</label></div>' 
                    	+
                    '<div class="col-12 col-md-9"><input type="text" id="videoTitle" name="videoTitle" placeholder="강의 제목을 입력하세요." class="form-control" required></div>' 
                    +
                 '</div><div class="row form-group"><div class="col col-md-3"><label for="hf-password" class=" form-control-label" required>동영상 URL</label></div>' 
                 +
                    '<div class="col-12 col-md-9"><input type="text" id="videoUrl" name="videoUrl" placeholder="ex)http://youbute.mazzang/SE25&Dz2" class="form-control" required></div></div>'
					+
                    '<div class="row form-group">'
                    + '<div class="col col-md-3">'
                    +    '<label for="hf-password" class=" form-control-label" >강의 내용</label>'
                    + '</div>'
                    + '<div class="col-12 col-md-9">'
                    +    '<textarea id="videoContent" name="videoContent" rows="7" class="form-control" required></textarea>'
                    + '</div></div></div>';
        	
        			$('#videoTable').append(text);
            	}
            	

            		function remove(e){
            			console.log(e.target);
            			$(e.target).parent().parent().remove();
            			
            		}
            
            </script>
<c:import url="../common/cMenubar.jsp"/>
</body>
</html>