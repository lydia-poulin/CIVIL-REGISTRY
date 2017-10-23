<%-- 
    Document   : feedback
    Created on : Oct 9, 2017, 10:14:54 AM
    Author     : student29
--%>
<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("submit")!=null)
{
    String fename=request.getParameter("fename");
    String femail=request.getParameter("femail");
    String feedback=request.getParameter("feedback");
    
    
    String str="insert into tbl_feedback(feed_username,feed_email,feed_feedback) values('"+fename+"','"+femail+"','"+feedback+"')";
    boolean b=obj.insert(str);
    if(b==true)
   out.print("success");
    else
    out.print(str);
}

%>
<html>
    <head>
        <script>
            
            function validate()
            {
                var status="true";
                
                var username=/^[a-zA-z]{4,20}$/;
                var name=document.getElementById('fename').value;
               
                if((name.match(username)))
                {
                    document.getElementById("valname").innerHTML="";
                }else
                { alert(name);
                    document.getElementById("valname").innerHTML="Invalid name";
                    status="false";
                }
                
                var userfeedback=/^[a-zA-z 0-9]{4,20}$/;
                var feedback=document.getElementById('feedback').value;
               
                if((feedback.match(userfeedback)))
                {
                    document.getElementById("valfeedback").innerHTML="";
                }else
                { alert(feedback);
                    document.getElementById("valfeedback").innerHTML="Invalid Address";
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
            <style>
.button {
    background-color: #f44336; /* Red */
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 2px;
    cursor: pointer;
}
.button {border-radius: 12px;}
.button1 {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 2px;
    cursor: pointer;
}
.button1 {border-radius: 12px;}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CivilRegistry::FeedBack</title>
    </head>
    <body>
        <form>
        <h1 align="center"><font color="blue"><u>FEEDBACK</u></font></h1>
       <br><br>
        <table align="center" border="1">
            <tr>
                <td>Name</td><td><input type="text" name="fename" id="fename"><div style="color: red" id="valname"></div></td>
            </tr>
             <tr>
                <td>Email</td><td><input type="email" name="femail" id="femail"></td>
            </tr>
            <tr>
                <td>Feedback</td><td><textarea type="text" name="feedback" id="feedback"></textarea><div style="color: red" id="valfeedback"></div></td>
        </tr>
      <tr><td><input type="submit" name="submit" class="button" value="Submit"onclick="return validate()"></td>
                <td><input type="reset" name="reset" class="button1" value="Reset" ></td>
                </tr>
        </table>
    </form>
    </body>
</html>
