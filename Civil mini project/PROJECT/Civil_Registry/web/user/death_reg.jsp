<%-- 
    Document   : death_reg
    Created on : Sep 11, 2017, 11:02:37 AM
    Author     : student29
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%

if(request.getParameter("submit")!=null)
{
    String death_date=request.getParameter("death_date");
    String death_dplace=request.getParameter("death_dplace");
    String death_name=request.getParameter("death_name");
    String death_fhname=request.getParameter("death_fhname");
    String death_gender=request.getParameter("death_gender");
    String death_age=request.getParameter("death_age");
    String death_address=request.getParameter("death_address");
    String death_informer=request.getParameter("death_informer");
    String death_infoadd=request.getParameter("death_infoadd");
    String death_place=request.getParameter("death_place");
    String religion_id=request.getParameter("religion_id");
    String death_occ=request.getParameter("death_occ");
    String death_treatment=request.getParameter("death_treatment");
    String death_reason=request.getParameter("death_reason");
     String death_disease=request.getParameter("death_disease");
    String death_smoking=request.getParameter("death_smoking");
    String death_alcohol=request.getParameter("death_alcohol");
    
    
    String str="insert into tbl_death(death_date,death_dplace,death_name,death_fhname,death_gender,death_age,death_address,death_informer,death_infoadd,death_place,religion_id,death_occ,death_treatment,death_reason,death_disease,death_smoking,death_alcohol)"
            + "values('"+death_date+"','"+death_dplace+"','"+death_name+"','"+death_fhname+"','"+death_gender+"','"+death_age+"','"+death_address+"','"+death_informer+"','"+death_infoadd+"','"+death_place+"','"+religion_id+"','"+death_occ+"','"+death_treatment+"','"+death_reason+"','"+death_disease+"','"+death_smoking+"','"+death_alcohol+"')";
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
        <title>Death Registration</title>
    </head>
    <body>
    <center>
        <h1>Death Registration</h1>
        <form>
            <table border="1">
                <tr><td>Date of Death :</td><td><input type="date" name="death_date" id="death_date"></td></tr>
                <tr><td>Place of Death :</td><td><input type="text" name="death_dplace" id="death_dplace"></td></tr>
               <tr><td>Name of deceased :</td><td><input type="text" name="death_name" id="death_name"></td></tr>
                <tr><td>Father/Husband of deceased :</td><td><input type="text" name="death_fhname" id="death_fhname"></tr>
                <tr><td>Gender of deceased :</td><td><input type="radio" name="death_gender" id="death_gender">Male<input type="radio" name="death_gender" id="death_gender">Female</td></tr>
                <tr><td>Age of deceased :</td><td><input type="text" name="death_age" id="death_age"></td></tr>
                <tr><td>Address of deceased:</td><td><textarea type="text" name="death_address" id="death_address"></textarea></td></tr>
            
                <tr><td>Informants Name</td><td><input type="text" name="death_informer" id="death_informer"></td></tr>
                <tr><td>Informants Address</td><td><textarea type="text" name="death_infoadd" id="death_infoadd"></textarea></td></tr> 
           
                <tr><td>Place of death :</td><td><input type="text" name="death_place" id="death_place"></td></tr>
                <tr><td>Religion of deceased :</td><td><select name="religion_id" id="religion_id">
                            <option>--select--</option>
                             <%
                      String sel="select * from tbl_religion";
                       ResultSet rs=obj.select(sel);
                            while (rs.next())
                            { 
                            %>
                            <option value="<%=rs.getString("religion_id")%>"><%=rs.getString("religion_name")%></option>
                            <%
                            }
                            %>
                      
                        </select></td></tr>
                <tr><td>Occupation of deceased :</td><td><input type="text" name="death_occ" id="death_occ"></td></tr>
                <tr><td>Treatment given before death :</td><td><input type="text" name="death_treatment" id="death_treatment"></td></tr>
               <tr><td>Has the reason of death medically certified:</td><td><input type="radio" name="death_reason" id="death_reason">Yes<input type="radio" name="death_reason" id="death_reason">No</td></tr>
                <tr><td>Name of the Disease/Cause for Death:</td><td><input type="text" name="death_disease" id="death_disease"></td></tr>
                <tr><td>Addicted to Smoking (Yes/No) :</td><td><input type="radio" name="death_smoking" id="death_smoking">Yes<input type="radio" name="death_smoking" id="death_smoking">No</td></tr>
                 <tr><td>Addicted to Alcohol (Yes/No):</td><td><input type="radio" name="death_alcohol" id="death_alcohol">Yes<input type="radio" name="death_alcohol" id="death_alcohol">No</td></tr>
                <tr><td><input type="submit" name="submit" value="Submit"></td>
                <td><input type="reset" name="reset" value="Reset" ></td>
                </tr>
                   </table>
        </form>
             
    </center>
    </body>
</html>
