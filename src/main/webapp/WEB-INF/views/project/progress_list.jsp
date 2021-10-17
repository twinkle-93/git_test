<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>        
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
<div class="container-fluid">    
  <div class="row content body">
    <div class="col-sm-2 sidenav">
      <jsp:include page="../includes/side_nav.jsp"></jsp:include>
    </div>
    <div class="col-sm-8"> 
         <h1 class="page-header">진척 관리 > 리스트</h1>
         <table class="table">
         	<thead>
         		<tr>
         			<th class="col-sm-4 th">프로젝트명</th>
         			<th class="col-sm-2 th">작성일</th>
         			<th class="col-sm-2 th">작성자</th>
         		</tr>
         	</thead>
         	<tbody>
         	<c:forEach items="${list }" var="list">
         		<tr>
         			<td> - <a href="/project/progress_read/${list.pjName}">${list.pjName }</a></td>
         			<td style="text-align: center;">
         			<fmt:parseDate value="${list.rangeRegDate}" pattern="yyyy-MM-dd" var="day"/>
         			<fmt:formatDate value="${day}" pattern="yyyy년 MM월 dd일"/>
         			</td>
         			<td style="text-align: center;">${list.rangeWriter }</td>
         		</tr>
         	</c:forEach>	
         	</tbody>
         	
         </table>
         
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