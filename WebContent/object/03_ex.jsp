<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body style="text-align: center;">
	<h2>쪽지전송</h2>
	<p>
		<b>수신자</b><br /> <input type="text"
			placeholder="여러명은 쉼표(,)로 구분 / 최대 4명" style="width: 210px;" onchange="set(this);" />
	</p>
	<p>
		<b>전송내용</b> (<span>0</span>/80) <br />
		<textarea style="width: 400px; height: 250px;"
			onkeyup="check(this.value);"></textarea>
	</p>
	<script>
		var set = function(a) {
			var v =a.value;
			var ar =v.split(",");
			if (ar.length>4) {
				window.alert("4명 초과");
				var str = ar[0]+","+ar[1]+","+ar[2]+","+ar[3];
				a.value=str;
			}

		};
		
		var check = function(b) {
			console.log(b);
			if (b.length > 80) {
				window.alert("초과");
				var t = b.substr(0, 80);
				document.getElementsByTagName("textarea")[0].value = t;
				document.getElementsByTagName("span")[0].innerHTML = 80;
			} else {
				var o = document.getElementsByTagName("span")[0].innerHTML;
				console.log(o);
				document.getElementsByTagName("span")[0].innerHTML = b.length;
			}

		};
	</script>
</body>
</html>