<%-- 
    Document   : newreg
    Created on : Oct 3, 2017, 2:14:52 PM
    Author     : student29
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%
if(request.getParameter("submit")!=null)
{
    String name=request.getParameter("name");
    String addr=request.getParameter("addr");
   String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String quali=request.getParameter("quali");
    String phno=request.getParameter("phno");
    String email=request.getParameter("email");
    String aadharno=request.getParameter("aadharno");
    String pswd=request.getParameter("pswd");
    String cpswd=request.getParameter("cpswd");
    
    String str="insert into tbl_registration(name,addr,dob,gender,quali,phno,email,aadharno,pswd,cpswd)values('"+name+"','"+addr+"','"+dob+"','"+gender+"','"+quali+"','"+phno+"','"+email+"','"+aadharno+"','"+pswd+"','"+cpswd+"')";
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
                <title>Registration</title>

    </head>
    <body>
    <center>
        <form>
       <h1 align="center"><font color="blue"><u>REGISTRATION FORM</u></font></h1>
       <br><br>
<table border="1">
<tr>
<td>Name:</td>
<td><input type="text" name="name" id="name" placeholder="Enter Name" required=""></td>
</tr>
<tr>
<td>Address:</td>
<td><textarea type="text" name="addr" id="addr"  placeholder="Enter Address" required=""></textarea></td>
</tr>

<tr>
    <td>DOB:</td>
    <td><input type="date" name="dob" id="dob" required=""</td>
</tr>
<tr>
<td>Gender:</td>
<td><input type="radio" name="gender" id="gender" value="Male" required="" >Male<input type="radio" name="gender" id="gender" value="Female" required="">Female</td>
</tr>
<tr>
<td>Qualification:</td>
<td><select name="quali" id="quali" required="">
		<option>--select--</option>
                <option>MBA</option>
		<option>MCA</option>
		<option>Mtech</option>
		<option>MSc CS</option>
		<option>BBA</option>
 		<option>BCA</option>
		<option>Btech</option>
		<option>BSc CS</option>
            </select></td>
</tr>
<tr>
    <td>Phone no:</td>
    <td><input type="text" name="phno" id="phno" placeholder="phone number"required=""</td>
</tr>
<tr>
<td>Email:</td>
<td><input type="email" name="email" id="email" placeholder="Enter Email" required=""></td>
</tr>
<tr>
    <td>Aadhar no:</td>
    <td><input type="text" name="aadharno" id="aadharno" placeholder="Aadhar number" required=""</td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="pswd" id="pswd" placeholder="password"  required=""></td>
</tr>
<tr>
<td>Confirm Password:</td>
<td><input type="password" name="cpswd" id="cpswd" placeholder="confirm password" required="" ></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="Submit" onclick="return reg()"></td>
<td><input type="reset" name="reset" value="Reset" onclick="return reg()"></td>
</tr>
</table>
        </form>
    </center>
    </body>
</html>
