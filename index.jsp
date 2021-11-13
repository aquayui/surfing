<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" onclick="jump1()">1</button>
	<button type="button" onclick="jump2()">2</button>
	<button type="button" onclick="jump3()">3</button>
		
</body>
<script>
	function jump1(){		
		window.location.href='test02.jsp?clicktype=1';
	}
	function jump2(){		
		window.location.href='test02.jsp?clicktype=2';
	}
	function jump3(){		
		window.location.href='test02.jsp?clicktype=3';
	}
	

</script>
</html>
