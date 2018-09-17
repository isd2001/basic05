<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<ol>
		<li id="q1">
			[{"cnt":1,"group":"과일"},{"cnt":2,"group":"야채"}]
		</li>
		<li id="q2">
			{"result":true,"total":1,
			"detail":[{"serial":"deff","price":2},{"serial":"deq","price":22}]}
		</li>
		
	</ol>
	<button type="button" onclick="solve01();">q01파싱</button>
	<button type="button" onclick="solve02();">q02파싱</button>
	
	<script>
		var solve01=function(){
			var obj=JSON.parse(document.getElementById("q1").innerHTML);
			//console(obj+"/"+typeof obj);
			for (var i = 0; i < obj.length; i++) {
				console.log(obj[i].cnt+"/"+typeof obj[i].cnt);		// number
				console.log(obj[i].group+"/"+typeof obj[i].group);		// string
			}
		}
		var solve02=function(){
			var obj=JSON.parse(document.getElementById("q2").innerHTML);
			console.log(obj.result+"/"+typeof obj.result);	// boolean
			console.log(obj.total+"/"+typeof obj.total);	// number
			
			for (var i = 0; i < obj.detail.length; i++) {
				console.log(obj.detail[i].serial+"/"+typeof obj.detail[i].serial);	// string
				console.log(obj.detail[i].price+"/"+typeof obj.detail[i].price);	// number
			}
		}
		
		
	
	</script>

</body>
</html>