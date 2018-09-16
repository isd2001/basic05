<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 함수 및 객체</h1>
	<p>	
		스크립트 안 에서 별도의 설정없이 사용할수 있는 기본 글로벌 함수,변수 라는게 몇가지 있다.살펴보자
	</p>
	<script>
	// undefined
	var d;
	console.log(d==undefined);
	console.log(NaN);					// Not a Number
	console.log((v1*v2) == NaN);		// isNaN 으로 체크가 가능 , == 로 체크가 안된다.
	console.log(Infinity);				// 무한
	console.log(10/0== Infinity);		// isFinite 유한체크
	
	var v1=window.prompt("Input V1");
	var v2=window.prompt("Input V2");
	console.log(v1+v2);
	console.log(v1-v2);
	
	// parseInt , parseFloat
	console.log(parseInt("123"));			// String -> 정수부만 추출한 number
	console.log(parseInt("123.456"));		// 실수수치 문자열 -> 정수부만 추출
	console.log(parseInt(123.456));			// number형 데이터 -> 정수부만 추출
	
	console.log(parseFloat("123"));			// 정수형태 문자열 처리했을때 -> 실수부가 0이 붙거나 그러진 않음			
	console.log(parseFloat("123.456"));		// String -> 실수부를 포함한 number
	console.log(parseFloat(123.456));		// 큰의미 없음
		
	</script>

</body>
</html>