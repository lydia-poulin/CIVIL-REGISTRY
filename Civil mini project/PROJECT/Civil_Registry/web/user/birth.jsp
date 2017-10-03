<%-- 
    Document   : birth.jsp
    Created on : Sep 23, 2017, 2:01:39 PM
    Author     : student32
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%  
   
   
    if(request.getParameter("submit")!=null)
    {
        String dob=request.getParameter("dob");
        String gender=request.getParameter("M");
        String child=request.getParameter("name");
        String father=request.getParameter("fname");
        String mother=request.getParameter("mname");
        String address=request.getParameter("address");
        String pob=request.getParameter("pob");
        String hospital=request.getParameter("hos");
        String weight=request.getParameter("weight");
        String town=request.getParameter("town");
        String religion=request.getParameter("religion");
        String district=request.getParameter("district");
        String focc=request.getParameter("focc");
        String mocc=request.getParameter("mocc");
        String fedu=request.getParameter("fedu");
        String medu=request.getParameter("medu");
        String mage=request.getParameter("age");
        String delivery=request.getParameter("d");
        String duration=request.getParameter("duration");
     
         String str="insert into tbl_birth1(birth_dob,birth_gender,birth_child,birth_father,birth_mother,birth_address,birth_pob,birth_hospital,birth_weight)values('"+dob+"','"+gender+"','"+child+"','"+father+"','"+mother+"','"+address+"','"+pob+"','"+hospital+"','"+weight+"')";      
        boolean b=obj.insert(str);
        if(b==true)
            out.print("success");
        else
            out.print(str);
        
         String str1="insert into tbl_birth2( birth_town,religion_id,district_id,birth_focc,birth_mocc,birth_fedu,birth_medu,birth_mage,birth_delivery,birth_duration)values('"+town+"','"+religion+"','"+district+"','"+focc+"','"+mocc+"','"+fedu+"','"+medu+"','"+mage+"','"+delivery+"','"+duration+"')";
        boolean b1=obj.insert(str1);
        if(b1==true)
            out.print("success");
        else
            out.print(str1);  
    }
    
    
    %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Birth</title>      
<font color="blue">
<h1 align="center"><u>BIRTH CERTIFICATE</u></h1></font>
    </head>
    <body>
         <form>
        <table border="0" align="center">
            <tr><td><b><i><u>Child Details</u></i></b></td>
</tr>
<tr>
    <td><br>Date of Birth:</td><td><br>
	<input type="date" id="dob"name="dob" placeholder="Enter the DOB"></td></tr><br>

<tr><td><br>Gender:</td><td><br>
	<input type="radio"id="m" name="M"value="male">M
        <input type="radio"id="m" name="M"value="female">F </td></tr>
<tr>
    <td><br>Name of Child:</td>
    <td><br><input type="text" id="name" name="name" placeholder="Enter the  child name"></td>
</tr>
<tr><td><br>Name of Father:</td>
    <td><br><input type="text" id="fname" name="fname" placeholder="Enter the father name"></td>
</tr>
<tr><td><br>Name of Mother:</td>
    <td><br><input type="text" id="mname" name="mname" placeholder="Enter the mother name"></td></tr>

<tr><td><br>Address:</td><td><br>
	<textarea type="text" id="address" name="address" placeholder="Enter the address"></textarea></td></tr>

<tr><td><br>Place of Birth:</td>
    <td><br><input type="text" id="pob" name="pob" placeholder="Enter the place"></td>
</tr>
<tr><td><br>Hospital Details:</td>
    <td><br><input type="text" id="hospital" name="hos" placeholder="Enter the hospital"></td>
</tr>
<tr><td><br>Birth Weight:</td>
    <td><br><input type="text" id="weight" name="weight" placeholder="Enter the weight"></td>
</tr>
                  
<tr><td><br><b><i><u>Family Details</u></i></b></td>
</tr>
<tr><td><br>Town/Village of Mother:</td>
    <td><br><input type="text" id="town" name="town" placeholder="Enter the town"></td>
</tr>

<tr>
<td><br>Religion:</td><td><br><select name="religion" id="religion">
                       <option value="religion">--select--</option>
                      
               <%
               String sel="select * from tbl_religion";
               ResultSet rs=obj.select(sel);
               while(rs.next())
                {
                  %>
                  <option value="<%=rs.getString("religion_id")%>"><%=rs.getString("religion_name")%>
                        </option>
                        <%
               }
                   %>
                   
                   </select>
               </td></tr>
<tr>
<td><br>District Name:</td><td><br><select name="district" id="district">
                       <option value="district">--select--</option>
                      
               <%
               String sel1="select * from tbl_district";
               ResultSet rs1=obj.select(sel1);
               while(rs1.next())
                {
                  %>
                  <option value="<%=rs1.getString("district_id")%>"><%=rs1.getString("district_name")%>
                        </option>
                        <%
               }
                   %>
                   
                   </select>
               </td></tr>

<tr><td><br>Father Occupation</td>
<td><br><select name="focc" id=qual>
	<option value=s>--select--</option>
	<option>Employee</option>
	<option>Farmer</option>
    </select></td></tr>
<tr><td><br>Mother Occupation</td>
<td><br><select name="mocc" id=qual2>
	<option value=s>--select--</option>
	<option>Employee</option>
	<option>Housewife</option>
    </select></td></tr>
<tr><td><br>Father Education</td>
<td><br><select name="fedu" id=qual3>
	<option value=s>--select--</option>
	<option>Tenth</option>
        <option>Plus Two</option>
        <option>Graduate</option>
        <option>Post Graduate</option>
        <option>PhD</option>
    </select></td></tr>
<tr><td><br>Mother Education</td>
<td><br><select name="medu" id=qual4>
	<option value=s>--select--</option>
	<option>Tenth</option>
        <option>Plus Two</option>
        <option>Graduate</option>
        <option>Post Graduate</option>
        <option>PhD</option>
    </select></td></tr>
<tr><td><br>Age of Mother:</td><td><br>
	<input type="text" id="age" name="age" placeholder="Enter the age">
    </td></tr>
<tr><td><br>Method of Delivery:</td><td><br>
	<input type="radio" id="d" name="d" value="natural" >natural
        <input type="radio" id="d" name="d" value="caesarean">caesarean
    </td></tr>
<tr><td><br>Duration of Pregnancy:</td><td><br>
        <input type="text" id="duration" name="duration" ></td></tr>
<tr> <td><br><input type="submit" name="submit" value="SUBMIT"></td>
             <td><br><input type="submit" name="submit" value="RESET"></td>
   
</tr>
</table>
        </form>
    </body>
</html>

