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
                                    <h2 class="title-1 m-b-25">Delivery List</h2>
                                    	
                                    

                                    <div class="table-responsive table--no-card m-b-40" id="example">
                                    <div id='p' style="{display:inline-block}">
                                    	
                                    </div>
                                    <br>
                                        <table class="table table-borderless table-striped table-earning" id="list">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>결제번호</th>
                                                    <th>결제자명</th>
                                                    <th>클래스명</th>
                                                    <th>가격</th>
                                                    <th>결제날짜</th>
                                                    <th>배송상태</th>
                                                </tr>
                                            </thead>
                                            <tbody id="contacts">
                                                
                                            </tbody>
                                            <tfoot align="center">
                                            <tr>
                                            <td id="tfoot" colspan="7">
                                          
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
            
            var vm;
            
            
            $(function () {
            	
            	
            	PageBar(start);
            	Pageing(start);
            	
            	$('.divv').on('click', function(e) {
            		
            		
            		var id = e.target.innerText;
            		
            		location.href="<c:url value='aDeliverDetail.do'/>?deliveryNum="+id;
            		
            	});
            	
            });
            
            
            
            var model={
            		userName : "",
            		course : [

        				<c:forEach items="${list}" var="co">
						 
        				{nn:"${co.deliveryNum}", tt:"${co.payCode}", kk:"${co.memName}", ii:"${co.courseTitle}", pp:"${co.payPrice}", dd:"${co.payDate}", ee:"${co.deliveryStatus}"},
        				
        				
        				</c:forEach>
            			
            		]
            
            		
            };
            
            
            
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
            	$pi.append("<input type='text' id='vm' v-model='userName' class='form-control' style='width:40%; display:inline-block;'/>")
            	$pi.append("<input type='hidden' id='di' value='"+$("#vm").val()+"'>")
            	$pi.append("<button onclick='test()' class='btn btn-primary btn-sm'>검색</button>")
            	
            	$tableBody.html("");
            	
            	start = (num-1)*20;
            	
            	
            	
            	var $tr = $("<tr v-for='d in filtered' class='tr'>");
            	
            	$tr.append($("<td>").append($("<div class='divv'>").text("{{d.nn}}")));
            	
            	$tr.append($("<td>").text("{{d.tt}}"));
            	$tr.append($("<td>").text("{{d.kk}}"));
            	$tr.append($("<td>").text("{{d.ii}}"));
            	$tr.append($("<td>").text("{{d.pp}}"));
            	$tr.append($("<td>").text("{{d.dd}}"));
            	$tr.append($("<td>").text("{{d.ee}}"));

            	
            	
            	
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
                            var cname = this.userName.trim();
                            lenght = this.course.filter(function(item, index) {
                                if (item.tt.indexOf(cname) > -1) {
                                    return true;
                                }
                            });
                            
                            
                            return this.course.filter(function(item, index) {
                                if (item.tt.indexOf(cname) > -1) {
                                    return true;
                                }
                            }).slice(start, start+19);
                        }
                	    
                    },
                	
                	methods : {
                		nameChanged : function(e) {
                			this.userName = e.target.value;
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