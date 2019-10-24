<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<title>FAQ List</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
  <script>
    $(document).ready(function(){
        
        /** 초기화 처리*/

        // 첫 번재 항목이 펼쳐져 있도록 처리
        $(".collapsible:eq(0) a").addClass("selected"); //첫번째 항목만 selected 클래스를 적용
        $(".collapsible").not(":eq(0)").find(".content").hide(); //첫번째 항목 이외의 content를 숨김
        
        /** 링크에 대한 클릭 이벤트 처리 */
        $(".collapsible .title a").click(function() {            
            $(this).toggleClass("selected");
            //클릭된 나 자신을 제외한 나머리 링크들은 slected 클래스를 무조건 제거
            $(".collapsible .title a").not(this).removeClass("selected"); 

            // 펼칠 내용 영역 선택
            var target = $(this).parents(".collapsible").find(".content");

            // 나머지 내용 영역을 선택
            var other = $(".collapsible .title a").not(this)
                                                  .parents(".collapsible").find(".content");

            // 애니메이션으로 열고 닫기 처리
            target.slideToggle(300);
            other.slideUp(300);
            
            // 링크 페이지 이동 중지
            return false;
        });
    });
  </script>
</head>

<body>

	<c:import url="../common/aMenubar.jsp"/>
	
	<h3 align="center"> 
		총 게시글 갯수 : ${ pi.listCount }
		<c:if test="${ !empty sessionScope.loginUser }">
			<button onclick="location.href='';">글쓰기</button>
		</c:if>	
	</h3>
	
	
        <div class="page-container2">

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25" align="center">FAQ 자주 묻는 질문들!</h2>
                                <div class="table-responsive table--no-card m-b-40">                        
                                 
                                 <c:forEach items="${ flist }" var="f">
                                 <ul>
							        <li class="collapsible">
							            <h2 class="title"><a href="#html5" style="color:gray;">&nbsp; ${ f.faqNum}.  ${ f.faqTitle}</a></h2>
							            <hr>     
							            <h3 class="content">${ f.faqContent }</h3>
							        </li>
							        <hr>							       
							    </ul>
							    
							     </c:forEach>
							     
							        <tr align="center" height="20">
							    	<td colspan="6">
							    		
							    		<!-- 이전버튼 -->
							    		<c:if test="${ pi.currentPage eq 1 }">
							    			[이전]
							    		</c:if>
							    		<c:if test="${ pi.currentPage ne 1 }">
											<c:url value="aFAQList.do" var='before'>
												<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
											</c:url>
							    			<a href="${ before }">[이전]</a>
							    		</c:if>
							    		
							    		<!-- 번호 -->
							    		<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
							    			<c:if test="${ p eq pi.currentPage }">
							    				<font color="black" size="4">[${ p }]</font>
							    			</c:if>
							    			<c:if test="${ p ne pi.currentPage }">
							    				<c:url value="aFAQList.do" var="page">
							    					<c:param name="currentPage" value="${ p }"/>
							    				</c:url>
							    				<a href="${ page }">${ p }</a>
							    			</c:if>
							    		</c:forEach>
							    		
							    		<!-- 다음버튼 -->
							    		<c:if test="${ pi.currentPage eq pi.maxPage }">
							    			[다음]
							    		</c:if>
							    		<c:if test="${ pi.currentPage ne pi.maxPage}">
							    			<c:url value="aFAQList.do" var="next">
							    				<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							    			</c:url>
							    			<a href="${ next }"> [다음]</a>
							    		</c:if>
							    		
							    		
							    	</td>
							   	 </tr>
							 						
							   	 
                                </div>                               
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
            
            </div>
   
    
 	<c:import url="../common/aImportJs.jsp"/>



</body>

</html>