<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8">
		<title>The page is a write page</title>
	</head>
	<body>
		<h2>Welcome Spring Boot!</h2>
		<span th:text="${t}">여기는 제목입니다.</span>
		<span th:text="${c}">여기는 내용입니다.</span>
		<span th:text="${w}">여기는 작성자입니다.</span>
	</body>
</html>