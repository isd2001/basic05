<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Script</title>
</head>
<body>
	<h1>JAVA Script</h1>
	<p>
		HTML / css 와 더불어 웹 어플 구현시 사용되는 프로트언어로 분류되는 자바스크립트 라는걸 공부해보자 !!
		사용 해보고 어떤식으로 활용되는지에 대해서 알아보자.
	</p>
	<p>
		이름과는 별개로 자바와는 전혀 상관이없는 언어 이다.
		<small>(일부 문법적 유사함은 있지만 , 모든 프로그래밍 언어가 갖는 유사성정도이다.)</small>
	</p>
	<p>
		자바 스크립트의 주 용도는 HTML 에 일어난는 일들을 감지해서,
		이벤트 제어를 한다거나 혹은 HTML에 변화를 주게 하는 작업을 정도이다.
	</p>
	<p>
		프로그래밍 언어를 공부한적이 없다면 , 배우기 까다로울수도 있지만 , 굳이 자바스크립트가 아니더라도,
		타 언어를 해본적이 있으면 학습하는데 큰 어려움은 없다.
	</p>
	<p>
		데이터 종류와 ,연산자 ,(if,switch,for,while 똑같다=생략),글로벌 함수, 사용할수 있는 객체들에 대한
		학습을 하나씩 해보면서 자바스크립트를 알아가보자!
	</p>
	
	<button type="button" onclick="understand();">이해함?</button>
	<script>
		function understand() {
			if (window.confirm("이해가십니까???")) {
				var p=document.getElementsByTagName("p");
				for (var i = 0; i < p.length; i++) {
					p[i].style.color="white";
				}
			}else{
				var p=document.getElementsByTagName("p");
				for (var i = 0; i < p.length; i++) {
					p[i].style.color="red";
				}
			}
		}
	
	</script>


</body>
</html>