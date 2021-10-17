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
<link href="/resources/css/project/progress.css" rel="stylesheet" type="text/css">
<style type="text/css">
	h4 {
		margin-bottom: 10px;
	}
</style>
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
	         <h1 class="page-header">진척 관리 > 리스트 > 열람</h1>
	      <table class="table">
				<thead>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					프로젝트 명</th>
					<td>
					<input type="hidden" id="pjName" value="${vo.pjName}">
						${vo.pjName}
					</td>
				</tr>
				</thead>
			</table>
			<h4><b>-범위 관리</b></h4>
			<table class="table">
				<thead>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					범위 ID</th>
					<td>
						${vo.rangeId}
					</td>
					<th class="th col-sm-3">
					<span class="star">*</span>
					범위 명</th>
					<td>
						${vo.rangeName}
					</td>		
				</tr>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					작성 일자</th>
					<td>
						${vo.rangeRegDate}
					</td>
					<th class="th col-sm-3">
					작성자</th>
					<td>
						${vo.rangeWriter}
					</td>	
				</tr>
				</thead>
			</table>
			<h4><b>-시간 관리</b></h4>
			<table class="table">
				<thead>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					시간 ID</th>
					<td>
						${vo.timeId}
					</td>	
					<th class="th col-sm-3">
					<span class="star">*</span>
					시간 명</th>
					<td>
						${vo.timeName}
					</td>	
				</tr>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					작성 일자</th>
					<td>
						${vo.timeRegDate}
					</td>
					<th class="th col-sm-3">
					작성자</th>
					<td>
						${vo.timeWriter}
					</td>	
				</tr>
				</thead>
			</table>
		
		<div class="btn_div">
			<button id="update">수정</button>
			<button id="delete">삭제</button>
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
<script type="text/javascript">
$(document).ready(function () {
	var pjName = $("#pjName").val();
	console.log(pjName);
	$("#update").click(function () {
		location.assign("/project/progress_update/${vo.pjName}");
	});
	
	$("#delete").click(function () {
		var pjName = $("#pjName").val();
		console.log(pjName);
		if (confirm('삭제하시겠습니까?') == true) {
			$.ajax({
				url : '/project/progress_delete/' + pjName,
				type : 'post',
				datatype : 'json',
				data : {'pjName' : pjName},
				success : function (data) {
					alert('삭제되었습니다.');
					location.assign('/project/progress_list')
				}
				
			});
			
			
		}
	});
});

</script>

</body>
</html>