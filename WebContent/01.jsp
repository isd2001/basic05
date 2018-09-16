<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트</h1>
	<p>
		이번에 살펴볼 객체는 XMLHttoRequest 라는 객체이다. <br/>
		이 객체는 중요하다. AJAX 라는걸 할대 사용된다.
	</p>
	<h2>AJAX (Asynchronous JavaScript And XML) ?</h2>
	<p>
		Ajax는 자바스크립트를 이용한 서버측과 데이터를 주고받는 비동기 통신 작업이다. 
	</p>
	<input type="text" id="txt"/>
	<button type="button" id="req">AJAX</button>
	<script>
		document.getElementById("req").onclick = function() {
			console.log(this.type + "/" + this.id +"/" + this.innerHTML);
			var val = document.getElementById("txt").value;
			//==========================================================
			var xhr = new XMLHttpRequests("true"); // 서버측과 데이터 통신을 하는 객체
			xhr.open("get", "01ajax.jsp?word="+val, true); // 요청방식, 목적지, 비동기 설정(true=비동기 / false = 동기)
			xhr.send();
			// true로 설정해서 사용하는게 권장인데, 응답처리가 힘듬
			// false 는 비권장 이지만, 응답처리가 쉬움.
			console.log("xhr.responseText = "+xhr.responseText);
			console.log(xhr.responseText.trim()=="response");
			
		};
	
	
	</script>
	
</body>
</html>