<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../includes/head.jsp"></jsp:include>
<link href="/resources/css/frame/frame.css" rel="stylesheet" type="text/css">
<link href="/resources/css/project/basic_info.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="body">
<%@include file="../includes/header.jsp" %> <!-- header.jsp를 참고해라 선언 -->
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <jsp:include page="../includes/side_nav.jsp"></jsp:include>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1 class="page-header">산출물 관리 > 내역</h1>
                     <div>
                     <form class="well">
                     
                     <select style=" width:200px; height: 27px">
                       <option selected>글 번호</option>
                       <option value="1">프로젝트명</option>
                     </select>
                        <input type="text" title="검색" style="width:470px; height: 27px" name="keyword">
                        <input type="submit" value="검색">
                        <!-- <button   class="search_area" type="button"> -->
                        
                     </form>
                     </div>

                        <table class="table table-striped table-bordered table-hover" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th class="th" width="5%">NO</th>
                                        <th class="th" width="10%">프로젝트명</th>
                                        <th class="th" width="20%">산출물 명</th>
                                        <!-- <th class="th" width="10%">산출물 내용</th> -->
                                        <th class="th" width="5%">작성자</th>
                                        <th class="th" width="8%">작성 일자</th>
                                    </tr>
                               </thead>
                               <tbody>
                                <c:forEach items="${Outputs_list}" var="board">
                                    <tr class="odd gradeX">
                                        <td class="th" >${board.bno}</td>
                                        <td class="th">${board.pname}</td>
                                   <td class="th">${board.sname}</td>
                                   <%-- <td class="th" >${board.stitle} </td> --%>
                                        <td class="th">${board.user_id}</td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.sysdatee}" /></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                     </table>
                     <div class='pull-right'>
                                  <ul class="pagination">
                                  <c:if test="${pageMaker.prev}">
                                 <li class="page-item">
                              <a class="page-link" href="${pageMaker.startPage - 1}" tabindex="-1">Previous</a>
                           </li>
                           </c:if>   
                               <c:forEach begin="${pageMaker.startPage}"
                                        end="${pageMaker.endPage}" var="num">
                                        <li class="page-item ${pageMaker.cri.pageNum == num?"active":""} "><a class="page-link" href="${num }">${num }</a></li>
                               </c:forEach>
                               <c:if test="${pageMaker.next}">
                               <li class="page-item">
                                   <a class="page-link" href="${pageMaker.endPage +1 }" tabindex="-1">NEXT</a>
                                  </li>
                         </c:if>
                               </ul>
                               </div>
                               
                                 <form id='actionForm' action="/project/outputs_list" method='get'>
	                                <input type='hidden' name='pageNum' value = '${pageMaker.cri.pageNum}'>
	                                <input type='hidden' name='amount' value = '${pageMaker.cri.amount}'>
	                                <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                             	 </form>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

<script>

$(document).ready(function(){

    var actionForm = $("#actionForm");
    
    $(".page-link").on("click", function(e) {
      
       e.preventDefault(); //기본 동작 제한      
      
       var targetPage = $(this).attr("href");
       
       console.log(targetPage);          
      //<form>태그의 내용 변경후 submit
      
      actionForm.find("input[name='pageNum']").val(targetPage);
      actionForm.submit();
   
    });
    
   
    $(".search_area").on("click", function(e){
           e.preventDefault();
           var val = $("input[name='keyword']").val();
           console.log(val);
           actionForm.find("input[name='keyword']").val(val);
           actionForm.find("input[name='pageNum']").val(1);
           actionForm.submit();
       });
   
});
   

</script>
</body>
</html>