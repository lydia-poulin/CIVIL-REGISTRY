<%-- 
    Document   : AadharDetails
    Created on : Oct 28, 2017, 11:44:52 AM
    Author     : student31
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
    String phno=request.getParameter("phno");
    String email=request.getParameter("email");
    String aadharno=request.getParameter("aadharno");
    String str="insert into tbl_aadhardetails(aadhar_number,aadhar_name,aadhar_dob,aadhar_gender,aadhar_mobile,aadhar_email,aadhar_address) values('"+aadharno+"','"+name+"','"+dob+"','"+gender+"','"+phno+"','"+email+"','"+addr+"')";
boolean b=obj.insert(str);
if(b==true)
 out.print("success");
else
out.print(str);
}

%>
<html>
    <head>
        <title>CivilRegistry::AadharDetails</title>
        <script>
            
            function validate()
            {
                var status="true";
                
                var username=/^[a-zA-z]{3,20}$/;
                var name=document.getElementById('name').value;
               
                if((name.match(username)))
                {
                    document.getElementById("valname").innerHTML="";
                }else
                { alert(name);
                    document.getElementById("valname").innerHTML="Invalid name";
                    status="false";
                }
                
                var useraddress=/^[a-zA-z 0-9]{4,20}$/;
                var address=document.getElementById('addr').value;
               
                if((address.match(useraddress)))
                {
                    document.getElementById("valaddress").innerHTML="";
                }else
                { alert(address);
                    document.getElementById("valaddress").innerHTML="Invalid Address";
                    status="false";
                }
                
                 var userphno=/^[0-9]{10}$/;
                var phno=document.getElementById('phno').value;
               
                if((phno.match(userphno)))
                {
                    document.getElementById("valphno").innerHTML="";
                }else
                { alert(phno);
                    document.getElementById("valphno").innerHTML="Invalid Phone Number";
                    status="false";
                }
                
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
        
    </head>
    <body>
        <center>
        <form>
       <h1 align="center"><font color="blue"><u>REGISTRATION FORM</u></font></h1>
<table>
    <tr>
    <td><br>Aadhar no:</td>
    <td><br><input type="text" name="aadharno" id="aadharno" placeholder="Aadhar number" required=""><div style="color: red" id="valaadhar"></div></td>
</tr>
<tr>
<td><br>Name:</td>
<td><br><input type="text" name="name" id="name" placeholder="Enter Name" required=""><div style="color: red" id="valname"></div></td>
</tr>
<tr>
    <td><br>DOB:</td>
    <td><br><input type="date" name="dob" id="dob" required=""</td>
</tr>
<tr>
<td><br>Gender:</td>
<td><br><input type="radio" name="gender" id="gender" value="Male" required="" >Male<input type="radio" name="gender" id="gender" value="Female" required="">Female</td>
</tr>
<tr>
    <td><br>Phone no:</td>
    <td><br><input type="text" name="phno" id="phno" placeholder="phone number"required=""> <div style="color: red" id="valphno"></div></td>
</tr>
<tr>
<td><br>Email:</td>
<td><br><input type="email" name="email" id="email" placeholder="Enter Email" required=""></td>
</tr>

<tr>
<td><br>Address:</td>
<td><br><textarea type="text" name="addr" id="addr"  placeholder="Enter Address" required=""></textarea><div style="color: red" id="valaddress"></div></td>
</tr>
<tr>
<td><br><input type="submit" name="submit" value="SAVE" onclick="return validate()"></td>
<td><br><input type="reset" name="reset" value="RESET" ></td>
</tr>
</table>
        </form>
    </center>
    </body>
</html>
