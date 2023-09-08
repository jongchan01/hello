<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save</title>

<!-- basic -->
	<meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
   <title>main</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
   <!-- Responsive-->
   <link rel="stylesheet" href="/resources/css/responsive.css">
   <!-- fevicon -->
   <link rel="icon" href="/resources/images/fevicon.png" type="image/gif" />
   <!-- Scrollbar Custom CSS -->
   <link rel="stylesheet" href="/resources/css/jquery.mCustomScrollbar.min.css">
   <!-- Tweaks for older IEs-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <!-- owl stylesheets -->
   <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
   <link rel="stylesoeet" href="/resources/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
      
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
			
			<a class="nav-link text-dark"
						href="/board/paging">게시판</a>
						
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto ml-2 mb-lg-0">
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