<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery 이벤트처리</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("p").mouseenter(function(){//<p>엘리먼트에 마우스포인터를 위치시키면 자동실행
			$(this).text("왔구려, 마우스포인터!!!");
		});
		$("p").mouseleave(function(){//<p>엘리먼트에서 마우스포인터가 나가면 자동실행
			$(this).text("돌아와 마우스포인터!!!");
		});
		$("button").dblclcik(function(){//<button>엘리먼트를 더블클릭하면 자동실행
			$(this).css("background-color", "#00ff00");
		});
	});
</script>
</head>
<body>
 <p>마우스 포인터를 여기에!!</p>
 <button>더블클릭 하셩.</button>
</body>
</html>

