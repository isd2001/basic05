<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body style="text-align: center;">
	<h2>사용자연락처</h2>
	<p>
		고객님의 핸드폰 번호를 입력하신후 <button>전송</button> 을 눌러주세요.
	</p>
	<p>
		℡ >  <input type="text" onkeyup="phFormat(this);"/> <button>전송</button>
	</p>
	<script>
		var phFormat = function(t) {
			var str = t.value;
			while(str.includes("-")) {
				str = str.replace("-","");
			}
			console.log(str);
			if(str.length<=3) {
				t.value = str;				
			}else if(str.length>=4 && str.length<=7) {
				t.value = str.substr(0,3)+"-"+str.substr(3);
			}else {
				t.value = str.substr(0,3)+"-"+str.substr(3,4)+"-"+ str.substr(7);
			}
			
			
		}
	
	</script>
</body>
</html>