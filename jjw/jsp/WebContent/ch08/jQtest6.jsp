<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Ajax메소드 - $.get()</title>
<style type="text/css">
	#result{
		width : 200px;
		height : 200px;
		border : 5px double #6699FF;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#b1").click(function(){//[결과]버튼을 클릭하면 자동실행
			//xhrTest3.txt를 get방식으로 요청
			$.get("xhrTest3.txt", function(data,status){
				//data: xhrTest3.txt의 내용 + status: 처리상태=> resultStr에 저장
				var resultStr = "데이터: " + data + "/n처리상태: " + status;
				//resultStr내용을 <div id="result">에 표시
				$("#result").text(resultStr);
			});
		});
	});		
</script>
</head>
<body>
	<button id="b1">결과</button>
	<div id="result"></div>
</body>
</html>