<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 function</h1>
	<p>
		function 이 어떤식으로 관리되는지 알아보기 위해서,
		매개변수도 없고 리턴밸류도 없는 function 을 설계해보았다.
	</p>
	<p>
		자바스크립트로 만들어낼 function 에 매개변수나 , 리턴값이 필요하다면 ..?
	</p>
	
	<button type="button" onclick="d(5);">자바스크립트 함수(number) 콜!</button>
	<button type="button" onclick="d('자바스크립트');">자바스크립트 함수(String) 콜!</button>
	
	<script>
		// 매개변수부분에 변수명만 적으면 됨.
		var f=function(a,b){
			console.log(a+">>"+typeof a);
			console.log(b+">>"+typeof b);
			//return typeof a == typeof b;
			return d;
		};
		
		function d(target){
			console.log(target + ">> "+ typeof target);
		}
	
		// 맞춰서 사용하겠지만
		f('조로','상디');
		f(2,"나미");
		f();					// 꼭그럴 필요는 없다.
		f(1,true,64.1,"가나다");
		
		var t =f(1,5);
		t("ㅎㅇㅎㅇ");
	
	</script>
	
</body>
</html>