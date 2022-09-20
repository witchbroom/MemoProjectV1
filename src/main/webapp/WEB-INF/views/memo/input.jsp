<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html {
	width: 100vw;
	height: 100vh;
}

body {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

form {
	width: 50%;
	text-align: center;
}

input {
	padding: 1rem;
	width: 100%;
	position: relative;
}

.box {
	width: 50%;
	height: 50%;
	border: 1px solid white;
	border-radius: 10px;
	position: absolute;
	top: 150px;
	left: 500px;
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

button {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0;
	padding: 0.5rem 1rem;
	font-family: "Noto Sans KR", sans-serif;
	font-size: 1rem;
	font-weight: 400;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	width: auto;
	border: none;
	border-radius: 4px;
	box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px
		rgba(0, 0, 0, 0.06);
	cursor: pointer;
	transition: 0.5s;
	background-color: white;
}

button:focus {
	background: var(- -button-hover-bg-color);
	outline: 0;
}
</style>
<!-- keep the line below for OpenProcessing compatibility -->
<script src="https://openprocessing.org/openprocessing_sketch.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/p5.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.1/addons/p5.sound.min.js"></script>
</head>
<body>
	<div class="box">
		<form method="POST" enctype="multipart/form-data">
			<input name="m_seq" type="hidden"
				value='<c:out value="${MEMO.m_seq}" default ="0"/>'> <input
				name="m_memo" placeholder="메모를 입력하세요" value="${MEMO.m_memo}">
			<input name="file" type="file" accept="images/*">
			<button>메모기록</button>
		</form>
	</div>
</body>
<script src="${rootPath}/static/input.js?001"></script>
</html>