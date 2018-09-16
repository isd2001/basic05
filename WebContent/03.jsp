<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 연습</title>
</head>
<body>
	<h1>가입신청서</h1>
	<small>아래 양식에 맞춰 값을 설정하세요.<br/></small>
	
	<small>
		1.아이디는 영문숫자기반의 4~12자 (공백, 특수문자불가능 / 첫글자는 영문으로) <br/>
		2.비밀번호는 4~12자 
	</small><br/>
	
	<form>
		<p>
			<b>(*)Account ID :</b> <input type="text" onchange="checkId();" id="id"/><span></span>
		</p>
		<p>
			<b>(*)Password :</b> <input type="password" onkeyup="checkPw();" id="pw"/><span></span>
		</p>
		<button type="submit" id="confirm" disabled>확인</button>
	</form>
		
	<script>
	
	var ar = [false,false];
	var valid = function() {
		console.log("valid() activated");
		if(ar.includes(false)){
			document.getElementById("confirm").disabled=true;
		}else{
			document.getElementById("confirm").disabled=false;
		}
	};
	/*
	document.getElementById("id").onchange = function() {
		
	}
	*/
	var checkId = function() {
		console.log("checkId() activated");
		var check = document.getElementById("id").value;
		if(check.match(/^[a-zA-z]\w{3,11}$/) ==null || check.match(/^" "$/)!=null) {
			document.getElementsByTagName("span")[0].innerHTML = "양식에 맞게 작성해주세요.";
		}else{
			ajax();
		}
	};
	
	var checkPw = function(a) {
		console.log("checkPw() activated");
		var pw = document.getElementById("pw").value;;
		if(pw.match(/^\w{4,12}$/) ==null) {
			document.getElementsByTagName("span")[1].innerHTML = "양식에 맞게 작성해주세요.";
		}else{
			document.getElementsByTagName("span")[1].innerHTML = "passed";
			document.getElementsByTagName("span")[1].style.color = "green";
			ar[1]=true;
			valid();
		}
	};
	var ajax = function() {
		console.log("ajax() activated");	
		var req = new XMLHttpRequest();		
		req.open("get", "03ajax.jsp?id="+document.getElementById("id").value, true);
		
		req.onreadystatechange = function () {
			if(this.readyState==4){				
				console.log("resp = "+this.responseText);
				if(this.responseText.trim()=="true") {
					document.getElementsByTagName("span")[0].innerHTML = "이미사용중인 아이디 입니다."
					document.getElementsByTagName("span")[0].style.color = "red";
					ar[0]=false;
					valid();
				}else {
					document.getElementsByTagName("span")[0].innerHTML = "사용가능한 아이디 입니다."
					document.getElementsByTagName("span")[0].style.color = "green";
					ar[0]=true;
					valid();
				}
			}
		}
		req.send();
	};
	</script>
	
</body>
</html>