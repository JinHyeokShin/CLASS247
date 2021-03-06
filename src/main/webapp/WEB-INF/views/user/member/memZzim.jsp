<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>CLASS 247 - 당신을 무엇을 팔 수 있습니까?</title>
    
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>
   table td{
      text-align: center;
   }
   td a, td button{
      width : 70%;
   }   
   .genric-btn{
   padding: 9 9 10 9;
   }
   .genderForm{
      align : left;
   }
    td input{
       width : 80%;
    }
     .jb-default-1 { font-size: 12px; }
     
       .jb-default-2 { font-size: 16px; }
       
          table tr{
      height:30px;
   }
   table th:hover{
      cursor:default;
   }
   .pagebar{
   text-align: center;
   }
   .COUPON_NAME{
   width:30%;
   height:30%;
   }
   .tdd{
   text-align: left;
   }
   #test{
   width:90%;
   }
   
</style>

</head>

<body>
   <jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>

 <section class="contact-section section_padding">
     <div class="container">
        <br>
            <h1>${ loginUser.memName }님의 찜한 클래스 목록 </h1>
            <br>
            <hr>
            <br>
         <form action="mZzim.do" method="post" id="test">
            <c:if test="${ !empty lovelist }">
               <h4 align="left" style=>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               ${ loginUser.memName } 님의 총 클래스 찜한 갯수 : ${listCount}
               </h4>
               <h4 align="right">
               	<input class="genric-btn primary-border radius" name="log-btn" type="button" id="zzimDelete" value="삭제하기">   <br>
               </h4>
               <br>
            </c:if>
            <c:if test="${ empty lovelist }">
               <h4 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               ${ loginUser.memName } 님의 총 클래스 찜한 갯수 : 0 </h4>   
            </c:if>
          <table align="center" border="1" cellspacing="0" width="100%">
            <tr style="color:white;background-color:#e0a9fc;">
               <th width="15%"></th> 
               <th width="40%"></th>
               <th colspan="3"></th>
               
            </tr>
            <c:if test="${ !empty lovelist }">
      <c:forEach items="${ lovelist }" var="l">
      <tr>
         <td align="center"><input type="checkbox" name="check" class="check" value="${ l.courseNum }"></td>
         <td align="center" width="20%">
            <c:url value="codetail.do" var="codetail">
               <c:param name="courseNum" value="${ l.courseNum }"/>
            </c:url>
              <a href="${ codetail }">
               <img src="<%= request.getContextPath() %>/resources/course/images/${ l.coaRName }" alt="" class="img-fluid" >
                  </a>
         </td>
         <td class="tdd" colspan="3"><br>
                  &nbsp;&nbsp;찜한 날짜  &nbsp; :  &nbsp; ${ l.wishedDate }<br><br>
                  &nbsp;&nbsp;클래스  &nbsp; :  &nbsp;${ l.courseTitle }<br><br>
                  &nbsp;&nbsp;금액  &nbsp; :  &nbsp;<fmt:formatNumber value="${ l.coursePrice }" pattern="#,###" />원<br><br>
                  &nbsp;&nbsp;강의종류  &nbsp; :   &nbsp;  ${ l.courseKind }강의<br><br>
                  &nbsp;&nbsp;튜터  &nbsp;  :  &nbsp; ${ l.creatorName }<br><br>
         
      </tr>
      </c:forEach>
            </c:if>
            <c:if test="${ empty lovelist }">
            <tr>
               <td colspan="5" align="center">내가 찜한 클래스가 없습니다.</td>
               </tr>
            </c:if>
            
         </table>
         <br>   
            <div class="pagebar">
            <!-- [이전] -->   
            <c:if test="${ pi.currentPage eq 1 }">
               [이전] 
            </c:if>
            <c:if test="${ pi.currentPage ne 1 }">
               <c:url value="memZzim.do" var="before">
                  <c:param name="currentPage" value="${ pi.currentPage -1 }"/>
               </c:url>
               <a href="${ before }">[이전] </a> 
            </c:if>      
            
            <!-- 번호들  -->
            <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
               <c:if test="${ p eq pi.currentPage }">
                  <font color="#954CBC" size="4">[${ p }]</font>
               </c:if>
               <c:if test="${ p ne pi.currentPage }">
                  <c:url value="memZzim.do" var="page">
                     <c:param name="currentPage" value="${ p }"/>
                  </c:url>
                  <a href="${ page }">${ p }</a>
               </c:if>
            </c:forEach>
            
            <!-- [다음] -->
            <c:if test="${ pi.currentPage eq pi.maxPage }">
                [다음]
            </c:if>
            <c:if test="${ pi.currentPage ne pi.maxPage }">
               <c:url value="memZzim.do" var="next">
                  <c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
               </c:url>
               <a href="${ next }"> [다음]</a>
            </c:if>  
            </div>
            </form>
            </div>
           </section>
           
           <script>
          $("#zzimDelete").click(function(){
             
            
            if($("input:checkbox[class='check']").is(":checked") == true){
               $("#test").submit();
               alert("삭제가 성공적으로 되었습니다");
            }else{
           
              alert("삭제하고 싶은 클래스를 check해주세요");
            }
          });
          </script>
           
          
   <jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>