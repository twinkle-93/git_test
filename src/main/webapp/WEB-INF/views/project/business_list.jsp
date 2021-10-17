<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="col-sm-2 ">
      <jsp:include page="../includes/side_nav.jsp"></jsp:include>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1 class="page-header">사업 관리 > 내역</h1>
                     <div>
                     <form class="well">
                     
                     <select style=" width:200px; height: 27px">
                       <option selected>Open this select menu</option>
                       <option value="1">One</option>
                       <option value="2">Two</option>
                       <option value="3">Three</option>
                     </select>
                        <input type="text" title="검색" style="width:470px; height: 27px">
                        <input type="submit" value="검색">
                        
                     </form>
                     </div>

                        <table class="table table-striped table-bordered table-hover" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th class="th" width="5%">NO</th>
                                        <th class="th" width="10%">프로젝트</th>
                                        <th class="th" width="20%">사업관리</th>
                                        <th class="th" width="10%">작성자</th>
                                        <th class="th" width="5%">승인</th>
                                        <th class="th" width="8%">구매</th>
                                        <th class="th" width="8%">접수</th>
                                        <th class="th" width="8%">유지</th>
                                        <th class="th" width="8%">등록일</th>
                                    </tr>
                               </thead>
                     </table>
                     <nav aria-label="Page navigation example">
                       <ul class="pagination">
                         <li class="page-item">
                           <a class="page-link" href="#" aria-label="Previous">
                             <span aria-hidden="true">&laquo;</span>
                             <span class="sr-only">Previous</span>
                           </a>
                         </li>
                         <li class="page-item"><a class="page-link" href="#">1</a></li>
                         <li class="page-item"><a class="page-link" href="#">2</a></li>
                         <li class="page-item"><a class="page-link" href="#">3</a></li>
                         <li class="page-item">
                           <a class="page-link" href="#" aria-label="Next">
                             <span aria-hidden="true">&raquo;</span>
                             <span class="sr-only">Next</span>
                           </a>
                         </li>
                       </ul>
                     </nav>
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
</body>
</html>