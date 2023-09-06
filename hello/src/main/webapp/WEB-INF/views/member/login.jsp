<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
	
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">HOME</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <form action="/member/login" method="post">
                    <div class="mb-3">
                        <input type="text" name="memberEmail" placeholder="이메일" class="form-control">
                    </div>
                    <div class="mb-3 text-center">
                        <input type="password" name="memberPassword" placeholder="비밀번호" autocomplete="off" class="form-control">
                    </div>
                    <div class="text-center">
                        <input type="submit" value="로그인" class="btn btn-primary">
                    </div>
                </form>
                <c:if test="${not empty loginError}">
                    <p style="color: red;">${loginError}</p>
                </c:if>
                <div class="text-center mt-3">
                    <a href="/member/save">회원이 아니신가요?</a>
                </div>
            </div>
        </div>
    </div>



		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
			crossorigin="anonymous"></script>
</body>

</html>