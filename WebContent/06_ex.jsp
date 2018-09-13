<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body style="text-align: center;">
	<h1>가입</h1>
	<p>
		아래 제공되는 양식에 데이터를 설정 후 가입 신청 바랍니다.<br/>
		☞  아이디는 영문숫자기반의 4~12자 (공백,특수문자 불가능 / 첫글자는 영문으로)<br/>
		☞ 닉네임은 한글로 구성된 3~8자 (공백,특수문자 불가능)<br/>
		☞ 비밀번호는 4~12자 로 일치시켜서 중복 확인<br/>
	</p>
	<form>
		<p>
			(#) 아이디 > <input type="text" id="toid" onchange="toidcheck(this);"/><span></span>
		</p>
		<p>
			(#) 닉네임 > <input type="text" id="nick" onchange="nickcheck(this);"/><span></span>
		</p>
		<p>
			(#) 비밀번호 > <input type="password" id="pw" onchange="pwcheck(this);"/><span></span><br/>
			(#) 비밀번호 재확인 > <input type="password" id="repw" onchange="pwcheck(this);"/><span></span>
		</p>
		<button type="submit">가입</button>
	</form>
	
	<script>
	var toidcheck = function(t){
		var e = /^[A-Za-z]$/;
		var ee = /^[A-Za-z]$/;
		var tid = document.getElementById("toid").value;
		console.log(tid);
		console.log(e.test(tid.charAt(0)));
		console.log(tid.test(ee));
		
	};
	//========================================
	var nickcheck = function(t){
		var e = /^[가-힇]{3,8}$/;
		var nick=document.getElementById("nick").value;
		console.log(e.test(nick));
		if (e.test(nick)) {
			
		}else{
			document.getElementsByTagName("span")[1].innerHTML="형식에 맞지 않습니다";
			document.getElementById("nick").style.color="red";
			//nick.style.color ="red";
		}
		
	};
	//========================================
	var pwcheck = function(t){
		var pw1=document.getElementById("pw").value;
		var pw2=document.getElementById("repw").value;
		
		
		
	}
		
	
	</script>
</body>
</html>