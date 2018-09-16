<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 객체</h1>
	<p>
		자바스크립트에도 객체가 있다. (객체? )
	</p>
	<script>
		// Boolean 객체 >> true , false 자체가 객체라고 생각하면 된다.
		console.log(true.toString());		// ""+true
		
		// Number 객체
		var n=123456;
		console.log(typeof n);
		console.log(n.toString());
		
		console.log((123456).toString());
		
		console.log((123.456).toExponential());		// 지수 표기
		
		var d = 123.456789;
		console.log(d.toFixed(2));			// 소주점 이하 제한
		console.log(d.toFixed(3));
		console.log((25).toFixed(2));
		
		console.log((456289).toPrecision(3));
		console.log((456789).toPrecision(2));
		console.log((456.789).toPrecision(4));
		
		// toLocaleString()	-> 수치를 지역에 맞는 표기형태로 변경
		console.log((123456789).toLocaleString());		
		
	</script>
	
</body>
</html>