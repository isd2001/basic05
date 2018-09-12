<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1 onmouseover="console.log('over event');">자바스크립트의 function</h1>
	<p>
		function 은 일반적으로 함수를 만들어 내는데 사용되고, 객체를 설계할때도 사용된다.
	</p>
	
	<p>
		함수를 함들때의 function 이던 , 객체를 만들때의 function 이던 두가지 형태로 설계가능하다.
		<small>설계된 function 은 script에서 사용되거나 html에서 event로 작동이된다.</small>
	</p>
	<% if(Math.random()>0.5){ %>
	<p>
		<textarea style="width: 400;resize: none; "onclick="move();"  readonly></textarea>
	</p>
	<script>
		var num=5;
		// num();				num은 function이 아니기 떄문에 error 출력.
		/*
		function move(){
			var b=window.confirm("댓글을 다시려면 로그인이 필요합니다.");
			if (b) {
				location.assign("index.jsp");
			}
		}
		*/
		var move=function(){
			var b=window.confirm("댓글을 다시려면 로그인이 필요합니다.");
			if (b) {
				location.assign("index.jsp");
			}
		}
		
		// 자바스크립트는 함수도 변수에 담아서 관리를 하게 된다.
		console.log(typeof move);
		console.log(move);		// 함수 내용이 출력됨.
		move();					// 함수를 담고있는 변수를 (); 로 call 을 하는거다.
		//num=move;
		//num();
		
	</script>
	<%}else{ %>
		<p>
		<textarea style="width: 400;resize: none;" ></textarea>
	</p>
	
	<%} %>
</body>
</html>