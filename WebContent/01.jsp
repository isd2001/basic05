<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1 ondblclick="change();">자바스크립트</h1>
	<p>
		만약에 HTML에 자바스크립트를 섞어서 응답을 보내고 싶다면,
		HTML 영역에서 그냥 작성하면 안되고 ,스크립트 영역을 잡고 작성을 해야 한다.
	</p>
	<p>
		작성해둔 스크립트는 두가지 형태로 작동되는데 ,
		별도의 함수처리안해둔 스크립트는 , HTML 문서 로딩 중에 작동되게 되있고 , 
		함수 처리해둔건 event 나 기타등등의 상황에서 호출에 의해 작동된다.
	</p>
	<script>
		var cnt=0;
		// document 객체는 javascript 내에서 사용할수 있는 객체로 HTML 제어에 사용되는 객체이다.
		// 이 객체가 가진 함수들은 따로 더 살펴보게 된다.
		document.title="JavaScript";
		
		function change() {
			cnt++;
			var p=window.prompt("new title");
			document.title=p+"("+cnt+")";
			console.log("cnt == "+cnt);			// 자바스크립트에서 기본출력 (브라우저 console에 출력된다.)
			// 개발자 모드로 확인할수 있다.   >> F12
			
		}
		
	</script>

</body>
</html>