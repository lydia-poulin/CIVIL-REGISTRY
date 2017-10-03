<%-- 
    Document   : login
    Created on : Aug 12, 2017, 9:40:57 AM
    Author     : student29
--%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("submit")!=null)
{
    String login_uname=request.getParameter("login_uname");
    String login_pswd=request.getParameter("login_pswd");
    String rembr=request.getParameter("rembr");
    String str="insert into tbl_login(login_uname,login_pswd,rembr)values('"+login_uname+"','"+login_pswd+"','"+rembr+"')";
boolean b=obj.insert(str);
if(b==true)
 out.print("success");
else
out.print(str);
}

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
   
        <form>
            <h1>LOGIN</h1>
        <table border="1" align="center">
            <tr><td>Username:<input type="text" name="login_uname" id="login_uname" placeholder="Username/Cid"></td></tr>
            <tr><td>Password:<input type="password" name="login_pswd" id="login_pswd" placeholder="password"></td></tr>
            <tr><td><input type="checkbox" name="rembr" id="rembr">Remember Me</td></tr>    
            <tr><td><input type="submit" name="login" id="login" value="LogIn"></td></tr>
            <tr><td>Don't have an account?<a href="newreg.jsp">SignUp</a></td></tr>
            <tr><td>Forgotten Password?<a href="changepswd.jsp">ChangePassword</a></td></tr>
        </table>
        </form>

    </body>
</html>
