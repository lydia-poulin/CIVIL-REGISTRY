<%-- 
    Document   : user_registration
    Created on : Sep 11, 2017, 10:38:51 AM
    Author     : student30
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<!DOCTYPE html>

<%
if(request.getParameter("submit")!=null)
{
    String name=request.getParameter("name");
    String addr=request.getParameter("addr");
    String gender=request.getParameter("gender");
    String dob=request.getParameter("dob");
    String quali=request.getParameter("quali");
    String phno=request.getParameter("phno");
    String email=request.getParameter("email");
    String aadharno=request.getParameter("aadharno");
    String pswd=request.getParameter("pswd");
    String cpswd=request.getParameter("cpswd");
    String str="insert into tbl_registration(user_name,user_address,user_gender,user_dob,user_quali,user_phno,user_email,user_aadhar,user_pwd,user_cpwd)values('"+name+"','"+addr+"','"+gender+"','"+dob+"','"+quali+"','"+phno+"','"+email+"','"+aadharno+"','"+pswd+"','"+cpswd+"')";
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
                var name=document.getElementById('name').value;
               
                if((name.match(username)))
                {
                    document.getElementById("valname").innerHTML=""
                }else
                { alert(name);
                    document.getElementById("valname").innerHTML="Invalid name";
                    status="false";
                }
                
                var useraddress=/^[a-zA-z 0-9]{4,20}$/;
                var address=document.getElementById('addr').value;
               
                if((address.match(useraddress)))
                {
                    document.getElementById("valaddress").innerHTML=""
                }else
                { alert(address);
                    document.getElementById("valaddress").innerHTML="Invalid Address";
                    status="false";
                }
                
                 var userphno=/^[0-9]{10}$/;
                var phno=document.getElementById('phno').value;
               
                if((phno.match(userphno)))
                {
                    document.getElementById("valphno").innerHTML=""
                }else
                { alert(phno);
                    document.getElementById("valphno").innerHTML="Invalid Phone Number";
                    status="false";
                }
                
                 var useraadhar=/^[0-9]{12}$/;
                var aadhar=document.getElementById('aadharno').value;
               
                if((aadhar.match(useraadhar)))
                {
                    document.getElementById("valaadhar").innerHTML=""
                }else
                { alert(aadhar);
                    document.getElementById("valaadhar").innerHTML="Invalid Aadhar Number";
                    status="false";
                }
                
                var userpwd=/^[a-zA-z 0-9]{6,12}$/;
                var pwd=document.getElementById('pswd').value;
               
                if((pwd.match(userpwd)))
                {
                    document.getElementById("valpwd").innerHTML=""
                }else
                { alert(pwd);
                    document.getElementById("valpwd").innerHTML="Invalid Password";
                    status="false";
                }
                
               var usercpwd=/^[a-zA-z 0-9]{6,12}$/;
                var cpwd=document.getElementById('cpswd').value;
               
                if((cpwd.match(usercpwd)))
                {
                    document.getElementById("valcpwd").innerHTML=""
                }else
                { alert(cpwd);
                    document.getElementById("valcpwd").innerHTML="Invalid Confirm Password";
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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        

<title> Registration form</title>

</head>
<body>
    <center>
        <form>
       <h1 align="center"><font color="blue"><u>REGISTRATION FORM</u></font></h1>
       <br><br>
<table border="1">
<tr>
<td>Name:</td>
<td><input type="text" name="name" id="name" placeholder="Enter Name" required=""><div style="color: red" id="valname"></div></td>
</tr>
<tr>
<td>Address:</td>
<td><textarea type="text" name="addr" id="addr"  placeholder="Enter Address" required=""></textarea><div style="color: red" id="valaddress"></div></td>
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
    <td><input type="text" name="phno" id="phno" placeholder="phone number"required=""> <div style="color: red" id="valphno"></div></td>
</tr>
<tr>
<td>Email:</td>
<td><input type="email" name="email" id="email" placeholder="Enter Email" required=""></td>
</tr>
<tr>
    <td>Aadhar no:</td>
    <td><input type="text" name="aadharno" id="aadharno" placeholder="Aadhar number" required=""><div style="color: red" id="valaadhar"></div></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="pswd" id="pswd" placeholder="password"  required=""><div style="color: red" id="valpwd"></div></td>
</tr>
<tr>
<td>Confirm Password:</td>
<td><input type="password" name="cpswd" id="cpswd" placeholder="confirm password" required="" ><div style="color: red" id="valphno"></div></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="Submit" onclick="return validate()"></td>
<td><input type="reset" name="reset" value="Reset" ></td>
</tr>
</table>
        </form>
    </center>
</body>
</html>

