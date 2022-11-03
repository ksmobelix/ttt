<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
  request.setCharacterEncoding("utf-8");
  String sharkName=request.getParameter("sharkName");
  String imgName=request.getParameter("imgName");
  %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<hr>
<p>이름  <%= sharkName%>
<p>
아래가 아기상어 부분<p>
<img src="./img/<%=imgName %>">
<hr>
</body>
</html>