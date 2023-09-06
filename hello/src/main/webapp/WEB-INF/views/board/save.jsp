<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="/member/main">HOME</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-dark" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
							[${sessionScope.memberName}] </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/member/update"
								onclick="update()">내정보</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link active"
						onclick="logout()" style="cursor: pointer;">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						href="/board/paging">게시판</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div style="text-align: center; margin-top:20px;">
		<form action="/board/save" method="post" onsubmit="return checkForm()">
			작성자 : <input type="text" name="boardWriter"
				value="${sessionScope.memberName}" readonly>
			<p>
			<p>
			<input type="text" name="boardTitle" placeholder="제목">
			<p>
				<input type="text" name="boardPass" placeholder="내글 비밀번호[선택]">
			<p>
				<textarea name="boardContents" cols="40" rows="20"
					placeholder="내용을 입력하세요"></textarea>
				<input type="submit" value="작성">
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
<script>
		function checkForm() {
			const writer = document.querySelector('input[name="boardWriter"]').value;
//			const pass = document.querySelector('input[name="boardPass"]').value;
			const title = document.querySelector('input[name="boardTitle"]').value;
			const contents = document
					.querySelector('textarea[name="boardContents"]').value;

			if (writer.trim() === "" || pass.trim() === ""
					|| title.trim() === "" || contents.trim() === "") {
				alert("빈칸을 모두 입력해주세요.");
				return false; // 폼 제출 방지
			}

			return true; // 폼 제출 허용
		}
		
		const update = () => {
			location.href = "/member/update";
		}

		const logout = () => {
		    fetch('/member/logout', {
		        method: 'POST',
		        credentials: 'same-origin'
		    })
		    .then(response => {
		        if (response.ok) {
		            // 세션 종료 후 "/" 주소로 이동
		            location.href = "/";
		        } else {
		            console.error('로그아웃 실패');
		        }
		    })
		    .catch(error => {
		        console.error('로그아웃 오류:', error);
		    });
		}
	</script>
</html>