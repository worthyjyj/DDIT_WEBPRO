<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
h1{
  border : 1px solid pink;
  color : red;
}

p,div{
 border : 1px dashed blue;
 margin : 20px;
 padding : 20px; 
}

</style>
</head>
<body>
 <h1>JSP : Java Server Page</h1>
 
 <%
 
  request.setCharacterEncoding("UTF-8");
   //전송시 입력한 값을 받기
  String userName = request.getParameter("name");
  String userAddr = request.getParameter("addr");
  String userMail = request.getParameter("email");
  String userGender = request.getParameter("gender");
  String userArea = request.getParameter("area"); //enter 기호가 포함
  
  //db연결 하여 저장한다.
 
  
  //userArea의 enter기호를 출력시 <br>태그로 변환 
  userArea=userArea.replaceAll("\r\n", "<br>");
  
  
  /*\r\n --> 엔터기호*/ 
 %>
 
 <p><%= userName %>님이 남겨주신 글입니다.</p>
 <div><%= userArea %></div>
 
</body>
</html>