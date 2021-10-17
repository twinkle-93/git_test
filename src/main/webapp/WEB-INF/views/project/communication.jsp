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
<style type="text/css">
	.nav-pills > li {
		border: 1px solid black; border-radius: 10%; margin: 0;
	}
	.nav-pills > li > button {
		padding: 5px 20px 5px 20px;
		background-color: white;
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
         <h1 class="page-header">의사 소통 관리 > 등록</h1>
         <form action="/project/communication" method="post">
      <table class="table">
			<thead>
			<tr>
				<th class="th col-sm-2">
				<span class="star">*</span>
				작성 일자</th>
				<td class="col-sm-4">
					<input name="regDate" class="project_date" type="date">
				</td>
				<th class="th col-sm-2">
				작성자</th>
				<td class="col-sm-4">
					<input name="writer" class="project_writer">
				</td>		
			</tr>
			</thead>
		</table>
		<ul class="nav nav-pills" style="margin-bottom: 5px;">
			<li>
			<button type="button" class="notice">공지사항</button></li>
			<li>
			<button type="button" class="conference">회의록</button></li>
			<li>
			<button type="button" class="board">게시판</button></li>
		</ul>
		<input name="category" type="hidden" class="category">
		<table class="table noticeTable" style="display: block;">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				공지사항<br>NO</th>
				<td>
					<input value="${noticeNo.noticeNo + 1}">
				</td>
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				제목</th>
				<td>
				<input name="noticeTitle">
				</td>
			</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="th col-sm-3" >
						<br><br><br><br>
						내용
					</th>
					<td colspan="4">
						<textarea name="noticeContents" rows="10" cols="100"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<table class="table conferenceTable" style="display: none;">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				회의록<br>NO</th>
				<td>
					<input value="${conferenceNo.conferenceNo + 1}">
				</td>
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				제목</th>
				<td>
				<input name="conferenceTitle">
				</td>
			</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="th col-sm-3" >
						<br><br><br><br>
						내용
					</th>
					<td colspan="4">
						<textarea name="conferenceContents" rows="10" cols="100"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<table class="table boardTable" style="display: none;">
			<thead>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				게시판<br>NO</th>
				<td>
					<input value="${freeBoardNo.freeBoardNo + 1}">
				</td>
			</tr>
			<tr>
				<th class="th col-sm-3">
				<span class="star">*</span>
				제목</th>
				<td>
				<input name="freeBoardTitle">
				</td>
			</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="4" class="th col-sm-3" >
						<br><br><br><br>
						내용
					</th>
					<td colspan="4">
						<textarea name="freeBoardContents" rows="10" cols="100"></textarea>
					</td>
				</tr>
			</tbody>
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
		$(".notice").css('background-color','#ee6');
		$(".category").val($(".notice").text());
		/* 카테고리 클릭시 inputBox 값 삽입 + 버튼 색 변환 + 테이블전환*/
		$(".notice").click(function () {
			$(".conference").css('background-color','white');
			$(".board").css('background-color','white');
			$(".category").val($(".notice").text());
			$(".notice").css('background-color','#ee6');
			
			if ($(".noticeTable").css('display') == 'none') {
				$(".conferenceTable").hide();
				$(".boardTable").hide();
				$(".noticeTable").show();
			}
		});
		$(".conference").click(function () {
			$(".notice").css('background-color','white');
			$(".board").css('background-color','white');
			$(".category").val($(".conference").text());
			$(".conference").css('background-color','#ee6');
			
			if ($(".conferenceTable").css('display') == 'none') {
				$(".noticeTable").hide();
				$(".boardTable").hide();
				$(".conferenceTable").show();
			}
		});
		$(".board").click(function () {
			$(".notice").css('background-color','white');
			$(".conference").css('background-color','white');
			$(".category").val($(".board").text());
			$(".board").css('background-color','#ee6');
			
			if ($(".boardTable").css('display') == 'none') {
				$(".noticeTable").hide();
				$(".conferenceTable").hide();
				$(".boardTable").show();
			}
		});
		
		$(".submit").click(function () {
			if (confirm("등록하시겠습니까?")==true) {
				alert("등록되었습니다.");
			}else {
				alert("취소되었습니다.");
				return false;
			}
		});
		$(".reset").click(function () {
			
			alert("리셋되었습니다.");
		});
		
	});
</script>

























</body>
</html>