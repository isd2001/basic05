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
		아래 제공되는 양식에 데이터를 설정 후 가입 신청 바랍니다.<br /> ☞ 아이디는 영문숫자기반의 4~12자 (공백,특수문자
		불가능 / 첫글자는 영문으로)<br /> ☞ 닉네임은 한글로 구성된 3~8자 (공백,특수문자 불가능)<br /> ☞
		비밀번호는 4~12자 로 일치시켜서 중복 확인<br /> 모든 조건을 만족하면 신청서버튼이 <b>활성화</b> 됩니다.
	</p>
	<form>
		<p>
			(#) 아이디 > <input type="text" id="toid" onchange="toidcheck();" /><br />
			<span></span> <br />
		</p>
		<p>
			(#) 닉네임 > <input type="text" id="nick" onchange="nickcheck();" /><br />
			<span></span> <br />
		</p>
		<p>
			(#) 비밀번호 > <input type="password" id="pass1"
				onchange="pw1check();" /><br /> (#) 비밀번호 재확인 > <input
				type="password" id="pass2" onchange="pw2check();" /><br /> <span
				style="color: red;"></span> <br />
		</p>
		<hr />
		<button type="submit" id="sbt" disabled>가입</button>
	</form>

	<script>
		var ar = [ toidcheck, nickcheck,pw1check,pw2check];
		console.log(ar);
		var vaild = function() {
			console.log(ar);
			if (ar.includes(false)) {
				document.getElementById("sbt").disabled = true;
			} else {
				document.getElementById("sbt").disabled = false;
			}
		}

		//======================================			
		var toidcheck = function() {
			var e = /^[A-Za-z]$/;
			var ee = /^[A-Za-z0-9]{4,12}$/;
			var tid = document.getElementById("toid").value;

			if (e.test(tid.charAt(0)) && ee.test(tid)) {
				document.getElementsByTagName("span")[0].innerHTML = "";
				document.getElementById("toid").style.color = "black";
				return true;
			} else {
				document.getElementsByTagName("span")[0].innerHTML = "-형식에 맞지 않습니다-";
				document.getElementById("toid").style.color = "red";
				return false;
			}

		};
		//========================================
		var nickcheck = function() {
			var e = /^[가-힇]{3,8}$/;
			var nick = document.getElementById("nick").value;
			console.log(e.test(nick));
			if (e.test(nick)) {
				document.getElementsByTagName("span")[1].innerHTML = "";
				document.getElementById("nick").style.color = "black";
				return true;
			} else {
				document.getElementsByTagName("span")[1].innerHTML = "-형식에 맞지 않습니다-";
				document.getElementById("nick").style.color = "red";
				return false;
			}

		};//end function
		//========================================
		var pw1check = function() {
			var pw1 = document.getElementById("pass1").value;
			var pw2 = document.getElementById("pass2").value;
			var e = /^[가-힇ㄱ-ㅎㅏ-ㅣa-zA-Z0-9]{4,12}$/;

			if (pw1 != null || pw2 == null) {
				document.getElementsByTagName("span")[2].innerHTML = "";
			} else if (pw1 == pw2) {
				if (e.test(pw1) != e.test(pw2)) {
					document.getElementsByTagName("span")[2].innerHTML = "-형식에 맞지 않습니다-";
					return false;
				} else {
					document.getElementsByTagName("span")[2].innerHTML = "";
					return true;
					if (pw1 != pw2) {
						document.getElementsByTagName("span")[2].innerHTML = "-형식에 맞지 않습니다-";
						return false;
					}
				}
			}
		}

		//========================================
		var pw2check = function() {
			var pw1 = document.getElementById("pass1").value;
			var pw2 = document.getElementById("pass2").value;
			var e = /^[가-힇ㄱ-ㅎㅏ-ㅣa-zA-Z0-9]{4,12}$/;

			console.log(e.test(pw1));
			console.log(e.test(pw2));

			if (pw1 == pw2) {
				if (e.test(pw1) != e.test(pw2)) {
					document.getElementsByTagName("span")[2].innerHTML = "-형식에 맞지 않습니다-";
					return false;
				} else {
					document.getElementsByTagName("span")[2].innerHTML = "";
					vaild();
					return true;
				}
			} else {
				document.getElementsByTagName("span")[2].innerHTML = "-형식에 맞지 않습니다-";
				return false;
			}

		};//end function
	</script>
</body>
</html>
