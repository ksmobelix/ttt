<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="sec01.ex01.*, java.util.*"
    pageEncoding="UTF-8"%>
    
    <%
  request.setCharacterEncoding("UTF-8");
%>  

<jsp:useBean id="bgdxb" class="sec01.ex01.MemberBean" scope="page"></jsp:useBean>

<%-- <jsp:setProperty property="id" name="bgdxb" value="<%= request.getParameter("id") %>"/>
<jsp:setProperty property="pwd" name="bgdxb" value="<%= request.getParameter("pwd") %>"/>

<jsp:setProperty property="name" name="bgdxb" value="<%= request.getParameter("name") %>"/>
<jsp:setProperty property="email" name="bgdxb" value="<%= request.getParameter("email") %>"/> --%>

<%-- <jsp:setProperty property="id" name="bgdxb" param="id"/>
<jsp:setProperty property="pwd" name="bgdxb" param="pwd"/>
<jsp:setProperty property="name" name="bgdxb" param="name"/>
<jsp:setProperty property="email" name="bgdxb" param="email"/>  --%>
<%--<jsp:setProperty property="id" name="bgdxb" />
<jsp:setProperty property="pwd" name="bgdxb" />
<jsp:setProperty property="name" name="bgdxb"/>
<jsp:setProperty property="email" name="bgdxb" />  --%>

 <jsp:setProperty property="*" name="bgdxb" /> 


<%
String   id=request.getParameter("id");
String  pwd = request.getParameter("pwd");
String  name = request.getParameter("name");
String  email = request.getParameter("email");
//MemberBean bgdxb = new MemberBean(id,pwd,name,email);


bgdxb.setId(id);
bgdxb.setPwd(pwd);
bgdxb.setName(name);
bgdxb.setEmail(email);  

MemberDAO  memberDAO=new MemberDAO();
memberDAO.addMember(bgdxb);
List membersList = memberDAO.listMembers();	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
  <table align="center"  width="100%">
	 <tr align="center" bgcolor="#99ccff">
	      <td width="7%" >아이디kk</td>
	      <td width="7%">비밀번호</td>
	      <td width="5%" >이름</td>
	      <td width="11%" >이메일</td>
	      <td width="5%" >가입일</td>
	   </tr>
	<%
	   if(membersList.size()==0){
	%>
	  <tr>
	      <td colspan="5">
	        <p align="center"><b><span style="font-size:9pt;">
	                      등록된 회원이  없습니다.</span></b></p>
	      </td>
	  </tr>
	<%
	}else{
	   for( int i = 0; i < membersList.size(); i++ ) {
	      MemberBean bean = (MemberBean) membersList.get(i);
	%>
	   <tr align="center">
	       <td><jsp:getProperty property="id" name="bgdxb"/></td>
	       <td><jsp:getProperty property="pwd" name="bgdxb"/></td>
	       <td><jsp:getProperty property="name" name="bgdxb"/></td>
	       <td><jsp:getProperty property="email" name="bgdxb"/></td>
	       <td><jsp:getProperty property="joinDate" name="bgdxb"/></td>
	      
	   </tr>
	<%
	      } // end for
	
	   } // end if
	%>
	   <tr height="1" bgcolor="#99ccff">
	      <td colspan="5"></td>
	   </tr>
	</table>
</body>
</html>