<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>string 객체</h1>
	<p>
		자바스크립트의 string 역시, 객체형 데이터이고 조작함수들이 존재한다.
	</p>
	<input type="text" placeholder="input text" onchange="search(this.type, this.value);"/>
	<input type="checkbox" value="free" onchange="search(this.type, this.value);"/>
	<script>
		console.log(document.getElementsByTagName("input")[0].onchange);
	
		function search(type , val) {
			//console.log("type = " + type +" / " +typeof type);
			//console.log("val = " + val +" / " +typeof val);
			
			//length > 길이 (function이 아니다)
			console.log(val.length);
			//console.log(val.length());	x
			
			// javascript string 의 메서드는 자바 String 이랑 거의 비슷하다.
			
			// 0. 문자열 비교 == 로 처리 가능
			// 1. charAt(index) -> string
			console.log(val.charAt(0)+"/"+typeof val)
			// 2. charCodeAt(index) -> number
			console.log(val.charCodeAt(0)+"/"+typeof val)
			// 3. startswith , endsWith -> boolean
			// 4. indexOf, lastIndexOf -> number , includes
			console.log(val.indexOf("admin")+"//"+val.includes("admin"));
			// 5. toUpperCase() , toLowerCase()
			document.title="["+val.trim().toUpperCase()+"]";
			// 6. areplace() -> string (매개변수 2개 필요)
			console.log(val.replace("<","&lt;"));
			// 7. substr() , substring == sloce -> string  >> length , 끝 index 설정안하면 마지막까지 다 처리함.
			console.log(val.substr(3,2));		// index,length
			console.log(val.substring(3,5));	// from,end
			console.log(val.substring(5,3));	// from,end
			
			var ar="saan;mocking;te0506".split(";");
			for (var i = 0; i < ar.length; i++) {
				console.log(ar[i]);
			}
			
			
		}
	
	</script>
</body>
</html>