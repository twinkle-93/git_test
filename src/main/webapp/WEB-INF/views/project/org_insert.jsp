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
         <h1 class="page-header">인력 관리 > 등록</h1>
      <table class="table">
				<thead>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					프로젝트 ID</th>
					<td>
						<select class="project_Id" name="pjId">
							<option>선택</option>
							<c:forEach items="${list}" var="list">
							<option value="${list.pjId}" data-sub="${list.pjName}" >${list.pjId}</option>
							</c:forEach>
						</select>
					</td>	
				</tr>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					프로젝트 명</th>
					<td>
					<input name="pjName" class="project_name">
					</td>
				</tr>
				</thead>
		</table>
		<h4><b>-수행 조직도 관리</b></h4>
		<table class="table">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				조직 ID</th>
				<td colspan="4">
					<input>
				</td>	
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				조직 CODE</th>
				<td colspan="4">
					<select class="project_Id">
						<option></option>
					</select>
				</td>
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				조직 명</th>
				<td colspan="4">
					<input>
				</td>	
			</tr>
			<tr>
				<th class="th col-sm-3">
					<span class="star">*</span>
					작성 일자</th>
					<td>
					<input type="date">
					</td>
					
					<th class="th col-sm-3">
					작성자</th>
					<td>
					<input class="project_name">
					</td>
				</tr>
			</thead>
		</table>
	<div class="btn_div">
		<button>등록</button>
		<button>초기화</button>	
	</div>
		
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