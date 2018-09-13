<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body style="text-align: center;">
	<h2>사용자 연락처</h2>
	<p>
		고객님의 핸드폰 번호를 입력하신 후 <button>전송</button> 을 눌러주세요.
	</p>
	<p>
		<select>
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="018">018</option>
			<option value="02">02</option>
		</select> -
		<input style="width: 100px;" type="text" onchange="save(this.value);"/> - 
		<input style="width: 100px;" type="text" onchange="save(this.value);"/>
		
		<button>전송</button>
	</p>
	<hr/>
	<p>
		<span>-입력값없음-</span>
	</p>
	
	
	<script>
	//var list = new Array();
	
	var save = function(target){
		var t = target.value;
		if (t.length==4) {
			
		}
			t=result;
		
	};
	
	
	</script>

</body>
</html>