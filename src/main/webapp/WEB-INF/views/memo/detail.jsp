<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Insert title here</title>
<style>
	.mini_box{
		align-items:center;
		justify-content:center;
		text-align:center;
		display:inline-block;
	}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${rootPath}/static/detail.css">

	<!-- keep the line below for OpenProcessing compatibility -->
	<script src="https://openprocessing.org/openprocessing_sketch.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/p5.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/addons/p5.sound.min.js"></script>
	<script src="${rootPath}/static/detail.js?001"></script>

</head>
<body>

<div class="box">
	<table>
		<tr>
			<th>작성자 : ${MEMO.m_author}</th>
		</tr>
		<tr>
			<th>작성일자 : ${MEMO.m_date}</th>
		</tr>
		<tr>
			<th>작성시각 : ${MEMO.m_time}</th>
		</tr>
		<tr>
			<th>메모 : ${MEMO.m_memo}</th>
		</tr>
		<tr>
			<th>이미지 : 
		<img src="${rootPath}/upload/${MEMO.m_up_image}" 
				alt="${MEMO.m_image}" 
				width="100px"></th>
		</tr>
	</table>
	<div class="mini_box">
		<a href="${rootPath}/memo/${MEMO.m_seq}/update">수정</a>
		<a href="${rootPath}/memo/${MEMO.m_seq}/delete">삭제</a>
		<a href="${rootPath}/">홈으로</a>
	</div>

</div>
</body>
</html>