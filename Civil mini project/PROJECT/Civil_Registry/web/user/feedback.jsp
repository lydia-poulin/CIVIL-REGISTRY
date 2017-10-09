<%-- 
    Document   : feedback
    Created on : Oct 9, 2017, 10:14:54 AM
    Author     : student29
--%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("submit")!=null)
{
    String fename=request.getParameter("fename");
    String femail=request.getParameter("femail");
   String feedback=request.getParameter("feedback");
    
    
    String str="insert into tbl_feedback(fename,femail,feedback)"
            + "values('"+fename+"','"+femail+"','"+feedback+"')";
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center"><font color="blue"><u>FEEDBACK</u></font></h1>
       <br><br>
        <table align="center" border="1">
            <tr>
                <td>Name</td><td><input type="text" name="fename" id="fename"></td>
            </tr>
             <tr>
                <td>Email</td><td><input type="email" name="femail" id="femail"></td>
            </tr>
            <tr>
                <td>Feedback</td><td><textarea type="text" name="feedback" id="feedback"></textarea></td>
        </tr>
      <tr><td><input type="submit" name="submit" value="Submit"></td>
                <td><input type="reset" name="reset" value="Reset" ></td>
                </tr>
        </table>
    
    </body>
</html>
