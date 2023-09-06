<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
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