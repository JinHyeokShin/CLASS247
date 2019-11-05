<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Await</title>


        </head>

        <body class="animsition">
                    <script src="http://unpkg.com/vue@2.5.16/dist/vue.js"></script>

            <c:import url="../common/aMenubar.jsp" />

            <div class="page-container2">

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">CREATOR List</h2>
                                    	
                                    

                                    <div class="table-responsive table--no-card m-b-40" id="example">
                                    <div id='p' style="{display:inline-block}">
                                    	
                                    </div>
                                    <br>
                                        <table class="table table-borderless table-striped table-earning" id="list">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>회원번호</th>
                                                    <th>이름</th>
                                                    <th>닉네임</th>
                                                    <th>소개</th>
                                                    <th>등록날짜</th>
                                                    <th>승인날짜</th>
                                                    <th>종료날짜</th>
                                                    <th>상태</th>
                                                </tr>
                                            </thead>
                                            <tbody id="contacts">
                                                
                                            </tbody>
                                            <tfoot align="center">
                                            <tr>
                                            <td id="tfoot" colspan="8">
                                          
                                            </td>
                                            <tr>
                                            </tfoot>
                                            
                                        </table>
                                    </div>
                         
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				

            </div>
        

            
            <c:import url="../common/aImportJs.jsp" />
            <script>
            
            var start=1;
            
            var endPage = 1;
            
            var lenght = ${sizee};
            
            
            
            $(function () {
            	
            	
            	PageBar(start);
            	Pageing(start);
            	
				$('.divv').on('click', function(e) {
            		
            		
            		var id = e.target.innerText;
            		
            		location.href="<c:url value='aMemDetail.do'/>?memNum="+id
            		
            	});
            	
            });
            
            
            
            var model={
            		courseName : "",
            		course : [

        				<c:forEach items="${list}" var="co">
						 
        				{nn:"${co.creNum}", tt:"${co.memNum}", kk:"${co.creName}", uu:"${co.memNickName}", ii:"${co.introduction}", pp:"${co.enrollDate}", dd:"${co.approvedDate}", ee:"${co.endDate}", ll:"${co.creStatus}"},
        				
        				
        				</c:forEach>
            			
            		]
            
            		
            };
            
            $(function() {
                $('#contacts td').on("click", function(){
                   $(this).parent().children().eq(1).children(".divv").click();
                })
             })
            
            
            
            function PageBar(num) {
    			
            	
    			
    			page = num;
    			
    			endPage = parseInt(lenght/20)+1;
    			
    			
    			if(endPage > num+10) {
    				endPage = 10;
    			}
				
    			
    			
    			
    		};
            
            function Pageing(num) {
            	
            	var $tableBody = $("#list tbody");
            	var $pi = $("#p");
            	$pi.html("");
            	$pi.append("<input type='text' id='vm' v-model='courseName' class='form-control' style='width:40%; display:inline-block;'/>")
            	$pi.append("<input type='hidden' id='di' value='"+$("#vm").val()+"'>")
            	$pi.append("<button onclick='test()' class='btn btn-primary btn-sm'>검색</button>")
            	
            	$tableBody.html("");
            	
            	start = (num-1)*20;
            	
            	
            	
            	var $tr = $("<tr v-for='d in filtered'>");
            	
            	$tr.append($("<td>").text("{{d.nn}}"));
            	
            	$tr.append($("<td>").append($("<div class='divv'>").text("{{d.tt}}")));
            	
            	
            	$tr.append($("<td>").text("{{d.kk}}"));
            	$tr.append($("<td>").text("{{d.uu}}"));
            	$tr.append($("<td>").text("{{d.ii}}"));
            	$tr.append($("<td>").text("{{d.pp}}"));
            	$tr.append($("<td>").text("{{d.dd}}"));
            	$tr.append($("<td>").text("{{d.ee}}"));
            	$tr.append($("<td>").text("{{d.ll}}"));

            	
            	$tableBody.append($tr);
            	
				var $tfoot = $("#tfoot");
        		
        		$tfoot.html("");
    			
    			if(page < 3) {
    				
    				var $tr = $("<tr style='margin:auto' colspan='9'>");
    				
    				for(var i = 1 ; i <= endPage ; i++) {
    					$tr.append($("<td text-align='center' onclick='Pageing("+i+")'>").text(i));
    				}
    				
    				$tfoot.append($tr);
    				
    			}
    			
    			
            	var list = new Vue({
                	el:"#example",
                	data:model,
                	computed: {
                	    
                        filtered: function() {
                            var cname = this.courseName.trim();
                            lenght = this.course.filter(function(item, index) {
                                if (item.kk.indexOf(cname) > -1) {
                                    return true;
                                }
                            });
                            
                            
                            return this.course.filter(function(item, index) {
                                if (item.kk.indexOf(cname) > -1) {
                                    return true;
                                }
                            }).slice(start, start+19);
                        }
                	    
                    },
                	
                	methods : {
                		nameChanged : function(e) {
                			this.courseName = e.target.value;
                		}
                	}
                });
            	
            	
            	
            	
            };
            
            function test() {
            	
            	
            	endPage = (parseInt(lenght.length)/20)+1;
            	
				var $tfoot = $("#tfoot");
				
        		$tfoot.html("");
    			
				if(page < 10) {
    				
    				var $tr = $("<tr style='margin:auto' colspan='9'>");
    				
    				for(var i = 1 ; i <= endPage ; i++) {
    					$tr.append($("<td text-align='center' onclick='Pageing("+i+")'>").text(i));
    				}
    				
    				$tfoot.append($tr);
    				
    			};
    				
    				
    			
            };
            
            
            

            
            </script>

        </body>

        </html>