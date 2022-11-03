<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8"); %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 안녕하세요. Hi Media 입니다!!!
<br>

<jsp:include page="ksm_image.jsp">
<jsp:param value="상어가족" name="name"/>
<jsp:param value="babyShark.jpg" name="imgName"/>
</jsp:include>

</body>
</html>