<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>

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
      
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>
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
			
			<a class="nav-link active"
						onclick="listFn()" style="cursor: pointer;">게시판</a>
						
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
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


	<table class="table">
		<tr>
			<th style="width: 100px;">글번호</th>
			<td>${board.id}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${board.boardWriter}</td>
		</tr>
		<tr>
			<th>작성시간</th>
			<td>${board.boardCreatedTime}</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${board.boardHits}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${board.boardTitle}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${board.boardContents}</td>
		</tr>
	</table>


	<div style="text-align: right">
	
		<button onclick="updateFn()">수정</button>
		<button onclick="deleteFn()">삭제</button>
	
	</div>
	
	
	
		
	


	<p>
		<br>
	<hr>
	<div>
		작성자 : <input type="text" id="commentWriter" style="font-weight: bold;"
			value="${sessionScope.memberName}" readonly>
		<p>
			<input type="text" id="commentContents" placeholder="내용(10자이하로 적으시오)">
			<button id="comment-write-btn" onclick="commentWrite()">댓글작성</button>
	</div>

	<div id="comment-list">
		<p>
			<strong>-댓글 목록-</strong>
		</p>
		<table>
			<tr>
				<th><p>댓글번호&nbsp;</p></th>
				<th><p>작성자&nbsp;</p></th>
				<th><p>댓글내용&nbsp;</p></th>
				<th><p>작성시간&nbsp;</p></th>
			</tr>
			<c:forEach items="${commentList}" var="comment">
				<tr>
					<td>${comment.id}</td>
					<td>${comment.commentWriter}</td>
					<td>${comment.commentContents}</td>
					<td>${comment.commentCreatedTime}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>

<script>
    const listFn = () => {
    	const page = '${page}';
        location.href = "/board/paging?page=" + page;
    }
    const updateFn = () => {
        const id = '${board.id}';
        location.href = "/board/update?id=" + id;
    }
    const deleteFn = () => {
        const id = '${board.id}';
        location.href = "/board/delete?id=" + id;
    }
    
    
    const commentWrite = () => {
    	const writer = document.getElementById("commentWriter").value;
    	const contents = document.getElementById("commentContents").value;
    	const board = '${board.id}';
    	
    	if (contents.length > 10) {
            alert("댓글은 10자 이하로 작성해야 합니다.");
            return;
        }
    	
    	$.ajax({
    		type: "post",
    		url: "/comment/save",
    		data: {
    			commentWriter: writer,
    			commentContents: contents,
    			boardId: board
    		},
    		dateType: "json",
    		success: function(commentList){
    			console.log("작성성공");
    			console.log(commentList);
    			let output = "<table>";
                output += "<tr><th>댓글번호</th>";
                output += "<th>작성자</th>";
                output += "<th>내용</th>";
                output += "<th>작성시간</th></tr>";
                for(let i in commentList){
                    output += "<tr>";
                    output += "<td>"+commentList[i].id+"</td>";
                    output += "<td>"+commentList[i].commentWriter+"</td>";
                    output += "<td>"+commentList[i].commentContents+"</td>";
                    output += "<td>"+commentList[i].commentCreatedTime+"</td>";
                    output += "</tr>";
                }
                output += "</table>";
                document.getElementById('comment-list').innerHTML = output;
                document.getElementById('commentWriter').value='';
                document.getElementById('commentContents').value='';
    		},
    		error: function(){
    			console.log("실패");
    		}
    	});
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