<%-- 
    Document   : apply
    Created on : Oct 9, 2017, 10:21:39 AM
    Author     : student29
--%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("submit")!=null)
{
    String aname=request.getParameter("aname");
    String aaddress=request.getParameter("aaddress");
   String post=request.getParameter("post");
    String aplace=request.getParameter("aplace");
    String aemail=request.getParameter("aemail");
    String aphno=request.getParameter("aphno");
   String check=request.getParameter("check");
    String certi_type=request.getParameter("certi_type");
    
    String str="insert into tbl_apply(aname,aaddress,post,aplace,aemail,aphno,check,certi_type)"
            + "values('"+aname+"','"+aaddress+"','"+post+"','"+aplace+"','"+aemail+"','"+aphno+"','"+check+"','"+certi_type+"')";
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
        <h1 align="center"><font color="blue"><u>APPLY</u></font></h1>
       <br><br>
        <table align="center" border="1">
     <td>Name:</td>
<td><input type="text" name="aname" id="aname"  required=""></td>
</tr>
<tr>
<td>Address:</td>
<td><textarea type="text" name="aaddress" id="aaddress"   required=""></textarea></td>
</tr>
<tr>
 <td>Post code</td>
<td><input type="text" name="post" id="post"  required=""></td>
</tr>
<tr>
 <td>Place</td>
<td><input type="text" name="aplace" id="aplace"  required=""></td>
</tr>
<tr>
 <td>Email</td>
<td><input type="email" name="aemail" id="aemail"  required=""></td>
</tr>
<tr>
 <td>Phno</td>
<td><input type="text" name="aphno" id="aphno"  required=""></td>
</tr>
<tr>
<td><input type="checkbox" name="check" id="check"  required=""></td>
<td>I accept terms and conditions</td>
</tr>
<tr>
 <td>Certificate type</td>
         <td><select name="certi_type" id="certi_type"  required="">
     <option value="0">--select--</option>
                                    <option value="Birth Certificate">Birth Certificate</option>
                                    <option value="Marriage Certificate">Marriage Certificate</option>
                                    <option value="Death Certificate">Death Certificate</option>
                                    <option value="Pancard">Pancard</option>
                                    <option value="Passport">Passport</option>
                                    
     </select></td>
</tr>
 <tr><td><input type="submit" name="submit" value="Submit"></td>
                <td><input type="reset" name="reset" value="Reset" ></td>
                </tr>
    </table>
    </body>
</html>
