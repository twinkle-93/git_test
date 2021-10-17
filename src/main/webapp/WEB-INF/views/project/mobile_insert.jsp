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
<style type="text/css">
   
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
         <h1 class="page-header">모바일 관리 > 등록</h1>
      <form action="/project/mobile_insert" method="post">
      <table class="table">
         	<thead>
				<tr>
					<th class="th col-sm-3">
					<span class="star">*</span>
					프로젝트 ID</th>
					<td>
						<select class="project_Id" name="pjId" style="width:30%; height: 26px;">
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
      
      <h4><b>-범위 관리</b></h4>
         <table class="table">
            <thead>
            <tr>
               <th class="th col-sm-1">
               <span class="star">*</span>
               범위</th>
               <td class="col-sm-5">
                  <select name="rangeId" class="rangeId"  style="width:80px ; height: 26px;">
                     <option>선택</option>
                     <c:forEach items="${rangeList }" var="list">
                     	<option value="${list.rangeId}" data-sub="${list.rangeName}">${list.rangeId}</option>
                     </c:forEach>
                  </select>
                  <input name="rangeName" class="rangeName" style="width: 80%;">
               </td>
               <th class="th col-sm-1">
               <span class="star">*</span>
               출력 항목</th>
               <td  class="col-sm-1">
                  <select name="rangeNum">
                  	<c:forEach begin="1" end="10" var="i" step="1">
                  		<option>${i}</option>
                  	</c:forEach>
                  </select>
               </td>      
            </tr>
            </thead>
         </table>
         <h4><b>-품질 관리</b></h4>
         <table class="table">
            <thead>
            <tr>
               <th class="th col-sm-1">
               <span class="star">*</span>
               품질</th>
               <td class="col-sm-5">
                  <select name="quaId" class="quaId" style="width:80px ; height: 26px;">
                     <option>선택</option>
                     <c:forEach items="${quaList }" var="list">
                     	<option value="${list.quaId}" data-sub="${list.quaName}">${list.quaId}</option>
                     </c:forEach>
                  </select>
                  <input name="quaName" class="quaName" style="width: 80%;">
               </td>
               <th class="th col-sm-1">
               <span class="star">*</span>
               출력 항목</th>
               <td  class="col-sm-1">
                  <select name="quaNum">
                  	<c:forEach begin="1" end="10" var="i" step="1">
                  		<option>${i}</option>
                  	</c:forEach>
                  </select>
               </td>      
            </tr>
            </thead>
         </table>
         <h4><b>-위험 관리</b></h4>
         <table class="table">
            <thead>
            <tr>
               <th class="th col-sm-1">
               <span class="star">*</span>
               위험</th>
               <td class="col-sm-5">
                  <select name="riskId" class="riskId" style="width:80px ; height: 26px;">
                     <option>선택</option> 
                     <c:forEach items="${riskList }" var="list">
                     	<option value="${list.riskId}" data-sub="${list.riskName}">${list.riskId}</option>
                     </c:forEach>
                  </select>
                  <input name="riskName" class="riskName" style="width: 80%;">
               </td>
               <th class="th col-sm-1">
               <span class="star">*</span>
               출력 항목</th>
               <td  class="col-sm-1">
                  <select name="riskNum">
                  	<c:forEach begin="1" end="10" var="i" step="1">
                  		<option>${i}</option>
                  	</c:forEach>
                  </select>
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
			$(".project_name").val(pjName);
		});
		
		$(".rangeId").change(function () {
			var rangeName = $(this).find("option:selected").data('sub');
			$(".rangeName").val(rangeName);
		});
		
		$(".quaId").change(function () {
			var quaName = $(this).find("option:selected").data('sub');
			$(".quaName").val(quaName);
		});
		
		$(".riskId").change(function () {
			var riskName = $(this).find("option:selected").data('sub');
			$(".riskName").val(riskName);
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