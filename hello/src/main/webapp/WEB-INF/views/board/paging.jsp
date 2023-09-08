<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<title>paging</title>
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
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="/resources/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="/resources/images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="/resources/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets -->
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesoeet" href="/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<style>
table {
	border-collapse: collapse; /* 테이블 셀 사이의 간격을 없애고 테두리를 하나의 선으로 표시합니다. */
	margin: 0 auto;
}

table, th, td {
	border: 1px solid black; /* 테이블과 셀의 테두리를 설정합니다. */
}

th, td {
	padding: 6px; /* 셀 내부 패딩 설정 */
}

th {
	text-align: center;
}

.ContentsStyle {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	width: 500px;
}
</style>
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
			<div style="margin-right:15px">
				<a class="nav-link text-dark" href="/board/paging">게시판</a>
			</div>
			<div>
				<a class="nav-link text-dark" href="/board/save">글작성</a>
			</div>
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

	<div>
		<table class="table table-hover table-striped">
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성시간</th>
				<th>조회수</th>

			</tr>
			<c:forEach items="${boardList}" var="board">
				<tr>
					<td style="text-align: center;">${board.id}</td>
					<td style="text-align: center;">${board.boardWriter}</td>
					<td>${board.boardTitle}</td>
					<td class="contentsStyle"><c:set var="maxContentLength"
							value="30" /> <c:choose>
							<c:when
								test="${fn:length(board.boardContents) > maxContentLength}">
								<a href="/board?id=${board.id}&page=${paging.page}">${fn:substring(board.boardContents, 0, maxContentLength)}...</a>
							</c:when>
							<c:otherwise>
								<a href="/board?id=${board.id}&page=${paging.page}">${board.boardContents}</a>
							</c:otherwise>
						</c:choose></td>
					<td style="text-align: center;">${board.boardCreatedTime}</td>
					<td style="text-align: center;">${board.boardHits}</td>

				</tr>
			</c:forEach>
		</table>
	</div>


	<div style="text-align: center;">

		<c:choose>
			<%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
			<c:when test="${paging.page<=1}">
				<span class="btn btn-secondary disabled">이전</span>
			</c:when>
			<%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
			<c:otherwise>
				<a class="btn btn-primary"
					href="/board/paging?page=${paging.page-1}">이전</a>
			</c:otherwise>
		</c:choose>

		<%--  for(int i=startPage; i<=endPage; i++)      --%>
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i"
			step="1">
			<c:choose>
				<%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
				<c:when test="${i eq paging.page}">
					<span class="btn btn-info">${i}</span>
				</c:when>

				<c:otherwise>
					<a class="btn btn-primary" href="/board/paging?page=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<c:choose>
			<c:when test="${paging.page>=paging.maxPage}">
				<span class="btn btn-secondary disabled">다음</span>
			</c:when>
			<c:otherwise>
				<a class="btn btn-primary"
					href="/board/paging?page=${paging.page+1}">다음</a>
			</c:otherwise>
		</c:choose>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
<script>
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