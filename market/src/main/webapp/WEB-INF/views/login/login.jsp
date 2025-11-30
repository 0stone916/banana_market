<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
%>

<%
    String contextPath = request.getContextPath();
    String alertMsg = (String)session.getAttribute("alertMsg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./resources/css/common.css">
<link rel="stylesheet" href="./resources/css/content.css">
<link rel="stylesheet" href="./resources/css/font.css">

<style>


#mem{

    width: 300px; background: #FF8B3D;  

    border-radius: 5px; 
    color: white; height: 35px;
   
    margin-top: 100px;
    height: 45px;

}

#login-form{
    position: relative;
    margin: auto;
    width: 300px;
  
}

#login-form input{
    margin: auto;
    border: 1px solid black;
    border-radius: 5px; 
    width: 300px;
    height: 45px;

}
#join {
    float: right;
    margin-top: 20px;
}
#join a {
    text-decoration: underline;
    
}

#closeBtn {
    position: absolute;
    top: 10px;
    right: 10px;
 
    color: black;
    border: none;
    border-radius: 5px;
    padding: 5px 10px;
    cursor: pointer;
}


</style>

</head>
<body>

    
    	<% if(alertMsg != null) { %>
			<script>
				alert("<%=alertMsg%>");
			</script>
			<% session.removeAttribute("alertMsg"); %>
		<% } %>

        <br>
        <br><br>

        <form accept-charset="UTF-8" action="<%=contextPath %>/login.me" id="login-form" method="post">

            <fieldset >
                <h1 align="center"><img src="resources/images/img/daangn_logo.png" alt="daangn logo"> <span class="sr-only"><span></a></h1>
                <label align="center">

                    아이디  <br><input type="text" name="userId"  required/>

                </label>
                <br>  <br>  <br>  <br>  <br>
                <label align="center">
                    비밀번호  <br><input type="password" name="userPwd" required/>
                </label>
                <br>
        
                <label  align= "center"   >
                    <button type="submit" id="mem">로그인</button>
                    <button id="join"><a href="<%=contextPath%>/enroll">회원가입</a> </button>

                </label>
                <br>
                <br><br><br><br><br><br>
                <hr>
            </fieldset>


        </form>
  


  

</body>
</html>