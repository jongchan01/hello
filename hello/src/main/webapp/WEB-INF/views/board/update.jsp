<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>

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
			
			<a class="nav-link text-dark" href="/board/paging">게시판</a>
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle text-dark" role="button" data-bs-toggle="dropdown" aria-expanded="false"> [${sessionScope.memberName}] </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/member/update" onclick="update()">내정보</a></li>
						</ul>
					</li>
						
					<li class="nav-item"><a class="nav-link active"
						onclick="logout()" style="cursor: pointer;">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<form action="/board/update" method="post" name="updateForm">
		<input type="hidden" name="id" value="${board.id}" readonly> 
		<input type="text" name="boardWriter" value="${board.boardWriter}" readonly>
		<input type="text" name="boardPass" id="boardPass" placeholder="비밀번호">
		<input type="text" name="boardTitle" value="${board.boardTitle}">
		<textarea name="boardContents" cols="30" rows="10">${board.boardContents}</textarea>
		<input type="button" value="수정" onclick="updateReqFn()">
	</form>
</body>
<script>
    const updateReqFn = () => {
        const passInput = document.getElementById("boardPass").value;
        const passDB = '${board.boardPass}';
        if (passInput == passDB) {
            document.updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다!!");
        }
    }
</script>
</html>