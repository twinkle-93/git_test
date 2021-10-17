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
         <h1 class="page-header">일정 관리 > 등록</h1>
         <form action="/project/schedule_insert" method="post">
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
		<table class="table">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				일정 ID</th>
				<td>
					<input name="scId">
				</td>	
				<th class="th col-sm-3">
				<span class="star">*</span>
				일정 명</th>
				<td>
					<input name="scName">
				</td>	
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				작성 일자</th>
				<td>
					<input name="scRegDate" type="date">
				</td>	
				<th class="th col-sm-3">
				작성자</th>
				<td>
					<input name="scWriter">
				</td>
			</tr>
			</thead>
		</table>
		<h4><b>-마일스톤 관리</b></h4>
		<table class="table">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				마일스톤 ID</th>
				<td colspan="4">
					<input name="msId">
				</td>	
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				마일스톤 명</th>
				<td colspan="4">
					<input name="msName">
				</td>
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				상위 마일스톤</th>
				<td>
					<input name="upMs">
				</td>
				<th class="th col-sm-3">
				<span class="star">*</span>
				하위 마일스톤</th>
				<td>
					<input name="downMs">
				</td>		
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				작성 일자</th>
				<td>
					<input name="msRegDate" type="date">
				</td>	
				<th class="th col-sm-3">
				작성자</th>
				<td>
					<input name="msWriter">
				</td>
			</tr>
			</thead>
		</table>
    <div class="btn_div">
			<button class="submit" type="submit">등록</button>
			<button class="reset" type="reset">초기화</button>
		</div>
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
<script type="text/javascript">
	$(document).ready(function() {
		$(".project_Id").change(function () {
			var pjName = $(this).find("option:selected").data('sub');
			console.log(pjName);
			$(".project_name").val(pjName);
		});
		
		$(".submit").click(function () {
			if (confirm("등록하시겠습니까 ? ") == true) {
				alert("등록되었습니다.");
			}else {
				alert("등록이 취소되었습니다.")
				return false;
			};
		});
		
		$(".reset").click(function () {
			alert("리셋되었습니다.");
		});

	});
	

</script>
</body>
</html>