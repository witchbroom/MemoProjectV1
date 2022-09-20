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
<script>
	const rootPath = "${rootPath}"
</script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${rootPath}/static/home.css">


	<!-- keep the line below for OpenProcessing compatibility -->
	<script src="https://openprocessing.org/openprocessing_sketch.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/p5.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/addons/p5.sound.min.js"></script>
	<script src="${rootPath}/static/mySketch.js?008"></script>
	

</head>
<body>
	<div class="box">
		<c:if test="${empty USERNAME}">
		<h1>사용자명을 입력해주세요</h1>
	</c:if>
	<c:if test="${not empty USERNAME}">
		<h1>${USERNAME} 님 환영합니다</h1>
	</c:if>
	
	<table class="memo">
		<tr>
			<th>SEQ</th>
			<th>작성일자</th>
			<th>작성시각</th>
			<th>메모</th>
		</tr>
		<c:if test="${empty MEMOS}">
			<tr><td colspan="4">메모가 없습니다</td></tr>
		</c:if>
		<c:forEach items="${MEMOS}" var="MEMO" varStatus="INDEX">
			<tr data-seq="${MEMO.m_seq}">
				<td>${INDEX.count}</td>
				<td>${MEMO.m_date}</td>
				<td>${MEMO.m_time}</td>
				<td>${MEMO.m_memo}</td>
			</tr>
		</c:forEach>	
	</table>
	<a href="${rootPath}/memo/insert">메모작성하기</a>
	<c:if test="${empty USERNAME}">
		<a href="#" id="btn-modal">로그인하기</a>
	</c:if>
	<c:if test="${not empty USERNAME}">
		<a href="${rootPath}/user/logout">로그아웃하기</a>
	</c:if>


</div>
	
	 <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>사용자명 입력</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
 				<form method="POST" action="${rootPath}/user/login">
					<input name="username" placeholder="사용자명 입력후 Enter">
				</form>
            </div>
        </div>
    </div>

	
</body>
<script src="${rootPath}/static/home.js?20220630001"></script>
<script src="${rootPath}/static/memo.js?20220627003"></script>
<script src="${rootPath}/static/modal.js?004"></script>
</html>


