<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String jksdflhsf=request.getParameter("jksdflhsf");

%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아래에는 아기 상어가 있어요


<%-- <jsp:include page="showShark.jsp" ></jsp:include> --%>
<%-- <jsp:include page="imageShow.jsp" ></jsp:include> --%>  
<jsp:include page="paramTest1.jsp" flush="true" >

<jsp:param value="호호호" name="jksdflhsf"/>

</jsp:include>

<%out.print(jksdflhsf); %>
</body>
</html>