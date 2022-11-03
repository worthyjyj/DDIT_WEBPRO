<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
h1, p{
   border : 1px solid blue; 
   margin : 5px 20px; 
   padding : 10px; 
}


table{
   border : 5px double green; 
   margin : 50px auto;
}

td{
  width: 300px;
  height: 40px;
}
</style>

</head>
<body>
 <h1>JSP : Java Server Paging</h1>


 <p> java 언어를 이용하여 서버내에서 실행되는 프로그램 </p>
 <p>java언어는 &lt;%    %&gt;기호 사이에 기술</p>
 <p> 실행된 java변수를 출력할때는 &lt;%=    %&gt; 사이에 변수명을 기술</p> 

<%

request.setCharacterEncoding("UTF-8");

 //클라이언트 전송(요청)시 입력된 데이터를 가져온다. 
String userName = request.getParameter("name");
String userId = request.getParameter("id");
String userPass = request.getParameter("pass");
String userBir = request.getParameter("bir");
String userGender = request.getParameter("gender");
String userTel = request.getParameter("tel");
String usermail = request.getParameter("email");

String foods[] = request.getParameterValues("food");

String str = "";

for(int i=0; i<foods.length; i++){
	str += foods[i] + "<br>";	
}
String userAge = request.getParameter("age");

//DB와 연결 - CRUD 처리 
// 처리후 결과를 출력 

%>

<table border="1">
	<tr>
	 <td>이름</td>
	 <td><%= userName %></td>
	</tr>

	<tr>
	 <td>아이디</td>
	 <td><%= userId %></td>
	</tr>


	<tr>
	 <td>비밀번호</td>
	 <td><%= userPass %></td>
	</tr>
	
	
	<tr>
	 <td>성별</td>
	 <td><%= userGender %></td>
	</tr>


	<tr>
	 <td>나이</td>
	 <td><%= userAge %></td>
	</tr>
	
	<tr>
	 <td>좋아하는 음식</td>
	 <td><%= str %></td>
	</tr>
	
</table>

</body>
</html>