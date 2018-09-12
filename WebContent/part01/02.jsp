<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 스크립트</title>
</head>
<body>
	<h1>자바스크립트의 데이터 종류 및 선언법</h1>
	<p>
		여타 프로그래밍 언어와 유사하게 기본적으로 사용할수 있는 데이터 종류가 있다.<br /> 이 데이터들은 물론 변수로 관리할수도
		있다.
	</p>
	<ul>
		<li>true,false 라는 boolean 타입의 데이터</li>
		<li>[1,3.14]와 같은 number 타입의 데이터</li>
		<li>["문자열",'01073739786']와 같은 String 타입의 데이터가 기본 데이터</li>
	</ul>
	<p>위의 데이터 종류에 따라서 타입선업이 필요한건 아니고 , var 타입의 변수로 선언해서 사용하면 된다.</p>
	<script>
	
	function intro(){
	
		var data;
		console.log(data+" >> "+typeof data);
		data = true;
		data = !data;
		console.log(data+" >> "+typeof data);
		data = 11;
		console.log(data+" >> "+typeof data);
		data = 3.1245;
		data *= 3;
		console.log(data+" >> "+typeof data);
		
		data = "Javascript";  	// JSON에 의한 정식 표기
		console.log(data+" >> "+typeof data);
		data = '자바스크립트';		// 문자열데이터를 홀따옴표 표현 가능
		console.log(data+" >> "+typeof data);
		
		// 연산중에 자바와 비교해서 다른연산이 일어나는 것만 짚어보면
		// 1. number div 연산이 몫연산이 아니다. (mod 연산은 같은)
		console.log(279 / 6);
		console.log(279 % 6);
		console.log(10/3);
		console.log(10%3);
		
		// 2. = , -= , += , /= 이런건 다 같고 , String data 의 +,+= 연산도 같다.
		data += "!!!!!";
		console.log(data+" >> "+typeof data);
		
		// 2-1. String 데이터가 + 연산이 아니면 , number로 처리가 되버림.
		console.log("3213"-13);
		console.log("3213"+13);
		console.log("123"*"123");		//NaN
		console.log("가가가"*"나나나");		//NaN
		
		// 3. 비교연산(==,!=,>=,<=,>,<,&&,||,!) 도 다 같지만 , 문자열도 == 로 동등비교처리됨.
		var p=window.prompt("input password?");
		console.log(typeof p);
		console.log(p=="1q2w3e");
		// number 와 string 간은 변환 없이 비교됨.
		console.log("1234"==1234);
		
		// 논리연산에 추가적으로 존재하는게 ===,!==
		console.log("1234"===1234);			// 값도 값고 , 타입까지 같은지
		console.log("1234"!==1234);
		
		// 4. 3항연산 가능
		var c = p == "1q2w3e" ? "okay" : "no!!";
		console.log(c);	
	}
	
	intro();
		
	</script>
</body>
</html>