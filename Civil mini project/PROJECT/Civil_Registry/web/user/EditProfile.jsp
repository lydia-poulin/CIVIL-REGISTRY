<%-- 
    Document   : EditProfile
    Created on : Oct 26, 2017, 2:41:27 PM
    Author     : student31
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
<!DOCTYPE html>
<%
    
    String editId="";
    String userquali="",userphno="",useremail="";
              if(request.getParameter("eid")!=null)
              {
                  String sel="select * from tbl_registration r,tbl_aadhardetails a where user_aadhar='"+request.getParameter("eid")+"'";
                  ResultSet rs=obj.select(sel);
                  if(rs.next())
                  {
                      editId=request.getParameter("eid");
                      
                      userquali=rs.getString("user_quali");
                      userphno=rs.getString("aadhar_mobile");
                      useremail=rs.getString("user_email");
                  }
            }
            if(request.getParameter("submit")!=null)
            {
               
               String quali=request.getParameter("quali");
               String phno=request.getParameter("phno");
               String email=request.getParameter("email");
        
               if(request.getParameter("hid")!="")
                {
                    String up="update tbl_registration,tbl_aadhardetails set user_quali='"+quali+"',aadhar_mobile='"+phno+"',user_email='"+email+"' where user_aadhar='"+request.getParameter("hid")+"'";
                    boolean b=obj.insert(up);
                    if(b==true)
                    {
                        out.println("success");
                        response.sendRedirect("UserProfile.jsp");
                    }
                    else
                    {
                        out.println(up);
                    }
                }
            }

%>
<html>
    <head>
        <title>CivilRegistry::EditProfile</title>
        <script>
            
            function validate()
            {
                var status="true";
                
                var username=/^[a-zA-z]{4,20}$/;
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
                var userquali=/^[a-zA-z]{2,20}$/;
                var quali=document.getElementById('quali').value;
               
                if((quali.match(userquali)))
                {
                    document.getElementById("valquali").innerHTML="";
                }else
                { alert(quali);
                    document.getElementById("valquali").innerHTML="Invalid qualification";
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
       <h1 align="center"><font color="blue"><u>EDIT PROFILE</u></font></h1>
        <input type="hidden" name="hid" value="<%=editId%>">
<table>
    <tr>
<td><br>Qualification:</td><td><br><input type="text" name="quali" id="quali" placeholder="Enter Qualification" required="" value="<%=userquali%>"><div style="color: red" id="valquali"></div></td>
</tr>
<tr>
    <td><br>Phone no:</td>
    <td><br><input type="text" name="phno" id="phno" placeholder="phone number"required=""value="<%=userphno%>"> <div style="color: red" id="valphno"></div></td>
</tr>
<tr>
<td><br>Email:</td>
<td><br><input type="email" name="email" id="email" placeholder="Enter Email" required=""value="<%=useremail%>"></td>
</tr>
<tr>
<td><br><input type="submit" name="submit" value="SAVE" onclick="return validate()"></td>
<td><br><input type="reset" name="reset" value="Reset" ></td>
</tr>
</table>
        </form>
    </center> 
    </body>
</html>
