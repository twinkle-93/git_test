<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<jsp:include page="../includes/head.jsp"></jsp:include>
<link href="/resources/css/frame/frame.css" rel="stylesheet" type="text/css">
<link href="/resources/css/project/qualityPopUp.css" rel="stylesheet" type="text/css">
</head>
<body>
<table>
	<thead>
		<tr>
			<th class="th col-sm-2">
			<span class="star">*</span>
			품질 CODE</th>
			<td>
				<select class="CODE">
					<option>CODE</option>
					<c:forEach items="${list}" var="list">
						<option value="${list.quaEvaName}">${list.quaCode}</option>
					</c:forEach>
				</select>
			</td>	
		</tr>
		<tr>
			<th class="th col-sm-2">
			<span class="star">*</span>
			품질<br>평가 명</th>
			<td>
				<input class="quaEvaNamePopUp">
			</td>
		</tr>
	</thead>
</table>
<div class="btn_div">
	<button class="choose">선택</button>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		
		$(".CODE").change(function () {
			$(".quaEvaNamePopUp").val($(this).val());
			
		});
		
		$(".choose").click(function () {
			$(opener.document).find(".quaEvaName").val($(".quaEvaNamePopUp").val());
			window.close();
		});
	});
	
</script>
</body>
</html>