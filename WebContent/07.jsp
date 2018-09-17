<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>JSON sample</h1>
	<ul>
		<li id="s1">432</li>
		<li id="s2">true</li>
		<li id="s3">"멘트"</li>
		<li id="s4">["월","화","수"]</li>
		<li id="s5">{"name":"윤형호","age":19,"admin":true}</li>
	</ul>
	<p>
		JSON 문자열 만들때 , string 형태 데이터 반드시 "" 로 처리해두어야하고,
		객체의 키값(변수명) 은 반드시 string 으로 처리만 가능
	</p>
	<p>
		Q. 객체 배열 형태나 , 객체의 배열을 배류로 갖는 형태는 어떻게 될까? 
	</p>
	<script>
		var z1=document.getElementById("s1").innerHTML;
		var pa1=JSON.parse(z1);
		console.log(pa1+"/"+typeof pa1);
		//==================================================
		var z2=document.getElementById("s2").innerHTML;
		var pa2=JSON.parse(z2);
		console.log(z2+"/"+typeof pa2);
		//==================================================
		var z3=document.getElementById("s3").innerHTML;
		var pa3=JSON.parse(z3);
		console.log(z3+"/"+typeof pa3);
		//==================================================
		var z5=document.getElementById("s5").innerHTML;
		var pa5=JSON.parse(z5);
		console.log(pa5.name);
		console.log(pa5.age);
		console.log(pa5.admin);
		//==================================================
	</script>


</body>
</html>