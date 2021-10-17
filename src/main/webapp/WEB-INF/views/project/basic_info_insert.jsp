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
<div class="container-fluid">    
  <div class="row content body">
    <div class="col-sm-2 sidenav">
      <jsp:include page="../includes/side_nav.jsp"></jsp:include>
    </div>
    <div class="col-sm-8"> 
      <h1 class="page-header">프로젝트 기본 정보 > 기본 정보 등록</h1>
      <form action="/project/basic_info_insert" method="POST">
      <table class="table ">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				프로젝트 ID</th>
				<td>
					<input name="pjId" class="project_Id">
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
				작성자</th>
				<td>
					<input name="writer" class="writer">
				</td>
				<th class="th col-sm-3">
				<span class="star">*</span>
				작성일자</th>
				<td>
					<input name="regDate" class="regDate" type="date">
				</td>		
			</tr>
			</thead>
		</table>
		
		<table class="table">
			<thead>
				<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				시작 일자</th>
				<td>
					<input name="startDate" class="startDate" type="date">
				</td>
				<th class="th col-sm-3">
				<span class="star">*</span>
				종료 일자</th>
				<td>
					<input name="endDate" class="endDate" type="date">
				</td>		
			</tr>
			</thead>
		</table>
		
		<table class="table">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				영업 담당자</th>
				<td colspan="4">
					<input name="pjMan" class="manager">
				</td>	
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				계획 M/M</th>
				<td>
				<input name="planMM" class="planMM">
				</td>
				<th class="th col-sm-3">
				<span class="star">*</span>
				실행 M/M</th>
				<td>
				<input name="exeMM" class="executionMM">
				</td>
			</tr>
			</thead>
		</table>
		
		<table class="table">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				실행 PM</th>
				<td colspan="4">
				<input name="exePM" class="executionPM ">
				</td>	
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				수주 금액</th>
				<td>
				<input name="price" class="ordersPrice">
				</td>	
				<th class="th col-sm-3">
				<span class="star">*</span>
				실행 금액</th>
				<td>
				<input name="exePrice" class="executionPrice">
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
	$(document).ready(function () {
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