<%-- 
    Document   : login
    Created on : Aug 12, 2017, 9:40:57 AM
    Author     : student29
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <script>
     function validate()
            {
                var status="true";
                          
                 var useraadhar=/^[0-9]{12}$/;
                var aadhar=document.getElementById('aadharno').value;
               
                if((aadhar.match(useraadhar)))
                {
                    document.getElementById("valaadhar").innerHTML="";
                }else
                { alert(aadhar);
                    document.getElementById("valaadhar").innerHTML="Invalid Aadhar Number";
                    status="false";
                }
                
                var userpwd=/^[a-zA-z 0-9]{6,12}$/;
                var pwd=document.getElementById('pswd').value;
               
                if((pwd.match(userpwd)))
                {
                    document.getElementById("valpswd").innerHTML="";
                }else
                { alert(pwd);
                    document.getElementById("valpswd").innerHTML="Invalid Password";
                    status="false";
                }
                 
                if(status=="false")
                {
                    return false;
                }
                else
                {
                    return true;
                }
                
            }
            
        </script>
    </head>
    <body>
   <%
                String submit=request.getParameter("login");
        if(submit!=null)
        {
               String aadhar=request.getParameter("aadhar");
               String password=request.getParameter("pswd");

             
            String sel="select * from tbl_registration where user_aadhar='"+aadhar+"' and user_pwd='"+password+"' ";
                 
            String sel1="select * from tbl_login where login_aadhar='"+aadhar+"' and login_pwd='"+password+"' ";
          
             ResultSet rs=obj.select(sel);
             ResultSet rs1=obj.select(sel1);
            
           if(rs.next())
            {
            response.sendRedirect("../User/UserHomePage.jsp");
            }
           else if(rs1.next())
            {
            response.sendRedirect("../Admin/HomePage.jsp");
            }
        else
            {
             response.sendRedirect("newreg.jsp");
            }
        }
        
        
           
          
        
                 %> 
        <form>
            <h1>LOGIN</h1>
        <table border="1" align="center">
            <tr><td>Username</td></tr>
            <tr><td><input type="text" name="aadhar" id="aadhar" placeholder="Aadhar Number"><div style="color: red" id="valaadhar"></div></td></tr>
            <tr><td>Password</td></tr>
            <tr><td><input type="password" name="pswd" id="pswd" placeholder="password"><div style="color: red" id="valpswd"></div></td></tr>
            <tr><td><input type="checkbox" name="rembr" id="rembr">Remember Me</td></tr>    
            <tr><td><input type="submit" name="login" id="login" value="LogIn" onClick="return validate()"></td></tr>
            <tr><td>Don't have an account?<a href="UserReg.jsp">SignUp</a></td></tr>
            <tr><td>Forgotten Password?<a href="changepswd.jsp">ChangePassword</a></td></tr>
        </table>
        </form>

    </body>
</html>
