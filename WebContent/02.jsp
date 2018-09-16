<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스트립트</title>
</head>
<body>
	<h1>XMLHttpRequest</h1>
	<p>
		xhr을 이용한 ajax는 비동기true/동기false 를 설정해서 쓸수가 있다.
	</p>
	<p>
		비동기(true) 같은 경우는 사용자가 ajax가 작동하는 동안  HTML을 사용하는데 있어서 제약이 없다.
		반면 동기(false) 설정시엔 사용자 HTML에 응답이 날라올때까지 지연이 발생하게 돼있다.
	</p>
	<p>
		false 처리해서 동기방식을 했다면 send 이후 responseText 를 확인하면 응답이 들어가져 있기 대문에
		응답처리가 단순가지만, true처리해서 비동기를 했다면 readyState를 체크해야 한다.
	</p>
	<button type="button" onclick="ajax();">AJAX</button>
	<script>
		var ajax = function() {
			var req = new XMLHttpRequest();
			console.log(req.readyState); // xhr 상태값인데 0 ~ 4 까지 존재함
			console.log("=================");
			req.open("get", "02ajax.jsp", true);
			
			req.onreadystatechange = function () {
				console.log("function.."+this.readyState);
				if(this.readyState==4){
					console.log("resp = "+this.responseText);
					if(this.responseText=="true") {
						window.alert("GOOODDD!");
					}else {
						window.alert("BAAADDDD!");
					}
				}
			}
			
			req.send();
 			console.log(req.readyState); // 2:요청지도착 / 3:응답수신시작 / 4:응답수신완료
 			console.log("=================");
		};
	</script>
</body>
</html>