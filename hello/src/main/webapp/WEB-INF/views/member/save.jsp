<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>save</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous">
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

<style>
/* Custom CSS for centering the <div> */
.center-div {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 30vh; /* Adjust this value as needed to center vertically */
}
</style>
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

	<p>
	<div class="center-div">
		<form action="/member/save" method="post"
			onsubmit="return validateForm()">
			<input type="text" name="memberEmail" placeholder="이메일"
				id="memberEmail" onblur="emailCheck()">
			<p id="check-result"></p>
			<input type="password" name="memberPassword" placeholder="비밀번호">
			<input type="password" name="memberPasswordCheck"
				placeholder="비밀번호확인" id="memberPasswordCheck"
				onblur="passwordCheck()">
			<p>
			<p>
				<input type="text" name="memberName" placeholder="이름(6자이하로작성)"
					id="memberName" onblur="nameCheck()">
			<p id="name-check-result"></p>
			<select name="memberAge" id="memberAge">
				<option value="">나이 선택</option>
				<option value="9">10세 미만</option>
				<option value="10">10대</option>
				<option value="20">20대</option>
				<option value="30">30대</option>
				<option value="40">40대</option>
				<option value="50">50대 이상</option>
			</select> <input type="text" name="memberMobile"
				placeholder="전화번호 '-없이 숫자만 입력'" oninput="formatPhoneNumber(this)">
			<input type="submit" value="회원가입" id="signupButton" disabled>

		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
<script>

//enableSignupButton 함수에서 모든 필수 입력이 유효한 경우 버튼 활성화
// 모든 필수 입력이 유효할 경우 회원가입 버튼 활성화
function enableSignupButton() {
    const signupButton = document.getElementById("signupButton");
    const email = document.getElementById("memberEmail").value;
    const password = document.querySelector('input[name="memberPassword"]').value;
    const passwordCheck = document.querySelector('input[name="memberPasswordCheck"]').value;
    const name = document.querySelector('input[name="memberName"]').value;
    const age = document.getElementById("memberAge").value;
    const mobile = document.querySelector('input[name="memberMobile"]').value;

    const phoneNumber = mobile.replace(/\D/g, ''); // 숫자만 추출

    signupButton.disabled = !(email.trim() && password && passwordCheck && name && age && phoneNumber.length === 11);
}

// 이메일 입력값을 가져오고,
// 입력값을 서버로 전송하고 똑같은 이메일이 있는지 체크한 후
// 사용 가능 여부를 이메일 입력창 아래에 표시
 	const emailCheck = () => {
    const email = document.getElementById("memberEmail").value;
    const checkResult = document.getElementById("check-result");
    const signupButton = document.querySelector('input[type="submit"]'); // 회원가입 버튼 요소

    if (email.trim() === "") { // 입력값이 비어있을 경우
        checkResult.innerHTML = ""; // 메시지 초기화
        signupButton.disabled = true; // 버튼 비활성화
        return; // 함수 종료
    }

    // 한글 포함 여부 검사
    const isKorean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test(email);
    if (isKorean) {
        checkResult.style.color = "red";
        checkResult.innerHTML = "영문으로 입력해주시기 바랍니다";
        signupButton.disabled = true; // 버튼 비활성화
        return; // 함수 종료
    }

    console.log("입력한 이메일", email);
    $.ajax({
        type: "post",
        url: "/member/email-check",
        data: {
            "memberEmail": email
        },
        success: function(res) {
            console.log("요청성공", res);
            if (res == "ok") {
                console.log("사용가능한 이메일");
                checkResult.style.color = "green";
                checkResult.innerHTML = "사용가능한 이메일";
                //signupButton.disabled = false; // 버튼 활성화
            } else {
                console.log("이미 사용중인 이메일");
                checkResult.style.color = "red";
                checkResult.innerHTML = "이미 사용중인 이메일";
                signupButton.disabled = true; // 버튼 비활성화
            }
        },
        error: function(err) {
            console.log("에러발생", err);
        }
    });
    
	passwordCheck();
	
	 enableSignupButton();
}
 	const passwordCheck = () => {
 	    const password = document.querySelector('input[name="memberPassword"]').value;
 	    const passwordCheck = document.querySelector('input[name="memberPasswordCheck"]').value;
 	    const passwordCheckResult = document.getElementById("password-check-result");

 	    if (password === "" && passwordCheck === "") {
 	        passwordCheckResult.innerHTML = ""; // 비밀번호와 확인 필드가 둘 다 공백일 경우 메시지 초기화
 	        return;
 	    }

 	    if (password === passwordCheck) {
 	        passwordCheckResult.style.color = "green";
 	        passwordCheckResult.innerHTML = "비밀번호가 일치합니다";
 	    } else {
 	        passwordCheckResult.style.color = "red";
 	        passwordCheckResult.innerHTML = "비밀번호가 일치하지 않습니다";
 	    }
 	   enableSignupButton();
 	}
 	
 // 전화번호 입력 필드에 숫자만 입력 가능하도록 하고, 형식을 조정해주는 함수
 	function formatPhoneNumber(input) {
 	    // 숫자만 남기고 모든 문자 제거
 	    var cleaned = input.value.replace(/\D/g, '');

 	    // 01012345678 형식으로 전화번호를 변환
 	    if (cleaned.length === 10) {
 	        cleaned = cleaned.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
 	    } else if (cleaned.length > 10) {
 	        cleaned = cleaned.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
 	    }

 	    input.value = cleaned;
 	    
 	   enableSignupButton();
 	}
 	function validateForm() {
 	    const name = document.querySelector('input[name="memberName"]').value;

 	    if (name.trim() === "") {
 	        alert("이름을 입력해주세요.");
 	        return false; // 폼 제출을 막음
 	    }

 	    if (name.length > 6) {
 	        alert("이름은 6글자 이하로 입력해주세요.");
 	        return false; // 폼 제출을 막음
 	    }

 	    // 다른 필수 입력값의 유효성 검사도 여기에서 수행

 	    return true; // 폼 제출 허용
 	}
</script>
</html>