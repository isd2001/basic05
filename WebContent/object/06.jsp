<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 스크립트</title>
</head>
<body>
	<h2> 자바스크립트의 RegExp 객체 </h2>
	<p>
		자바스크립트에서도 정규식 객체를 사용 할수 있다.
		용도는 패턴 체크를 하는데 있다. (자바의 정규식이랑 용도는 같다)
	</p>
	<script>
		var r1 = new RegExp("[가-힇]{3,}");
		var r11 = /[가-횧]{3,}/;
		var r2 = new RegExp("\\w{2,8}");
		var r22 = /\w{2,8}/;
		
		// 함수는 exec(string) > return타입이string , 정규식에 맞는지 문자열이 나옴 , 없으면 null
		// test(string) > return타입 boolean , 정규식에 맞는 부분일 있는지 없는지
		console.log(r1.exec("abcde"));
		console.log(r11.exec("가나다라마바사"));
		console.log("==========================");
		console.log(r2.test("abcde"));
		console.log(r2.test("d"));
		console.log(r22.test("가나다aaa라마바사"));
		
		var r3 = new RegExp("^[가-힇]{3,}$");		// ^ 시작 , $ 끝
		var r33 = /^\w{2,8}$/;
		console.log("==========================");
		console.log(/^\w{2,8}$/.test("a가나다c"));
		console.log(r1.test("a가나다c"));
		
		//=============================================
		// script string 객체의 match
		console.log("가나다라".match(/^[가-힇]{2,}$/)!=null);
		console.log("".match(/^\w{2,8}$/)!=null);
		
		
	</script>

</body>
</html>