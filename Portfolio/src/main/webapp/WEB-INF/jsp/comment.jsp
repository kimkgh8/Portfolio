<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<head>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<link href="../../resouces/css/style.css" rel="stylesheet"
	type="text/css">
<link href="../../resouces/css/indexStyle.css" rel="stylesheet"
	type="text/css">
<link href="../../resouces/css/iconStyle.css" rel="stylesheet"
	type="text/css">
<!--<script type="text/javascript" src="../../resouces/js/main.js"></script>-->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="path/to/fontello/css/fontello.css">
<link rel="stylesheet" href="path/to/fontello/css/animation.css">
<title>코멘트</title>
</head>
<body class="welcome-body">
	<script> 
		AOS.init(); 
    </script>
	<div data-aos="zoom-in" class="jb-content">
		<div class="jb-container">

			<div class="jb-header">
				<h1>Comment</h1>
			</div>
			<div class="jb-main">
				<h2>Welcome Spring Boot!</h2>
				<span th:text="${t}">여기는 제목입니다.</span> 
				<span th:text="${c}">여기는 내용입니다.</span> 
				<span th:text="${w}">여기는 작성자입니다.</span>
			</div>
			<div class="jb-footer">
				<div class="container" id="icons">
					<div class="row">
						<div class="span3" title="Code: 0xe801">
							<i class="demo-icon icon-user"></i> <span class="i-name"><a
								href="index">Kim Geunho</a></span> <span class="i-code">0xe801</span>
						</div>
						<div class="span3" title="Code: 0xe800">
							<i class="demo-icon icon-mail"></i> <span class="i-name"><a
								href="mailto:﻿" asdlkjd1@naver.com">asdlkjd1@naver.com</a></span> <span
								class="i-code">0xe800</span>
						</div>
						<div class="span3" title="Code: 0xf1d2">
							<i class="demo-icon icon-git-squared"></i> <span class="i-name"><a
								href="https://github.com/kimkgh8">https://github.com/kimkgh8</a></span>
							<span class="i-code">0xf1d2</span>
						</div>	
					</div>
					<div class="container footer">
						developer by <span class="i-name">KIM GEUNHO</span>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>