<%-- 
    Document   : death_reg
    Created on : Sep 11, 2017, 11:02:37 AM
    Author     : student29
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="db.db_connection"></jsp:useBean>
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
        <script>
            
            function validate()
            {
                var status="true";
                
                var deathplace=/^[a-zA-z]{4,20}$/;
                var dplace=document.getElementById('death_dplace').value;
               
                if((dplace.match(deathplace)))
                {
                    document.getElementById("valdplace").innerHTML="";
                }else
                { alert(dplace);
                    document.getElementById("valdplace").innerHTML="Invalid DeathPlace";
                    status="false";
                }
                
                var dname=/^[a-zA-z]{4,20}$/;
                var deathname=document.getElementById('death_name').value;
               
                if((deathname.match(dname)))
                {
                    document.getElementById("valdname").innerHTML="";
                }else
                { alert(deathname);
                    document.getElementById("valdname").innerHTML="Invalid Name";
                    status="false";
                }
                
                var fhname=/^[a-zA-z]{4,20}$/;
                var fhname1=document.getElementById('death_fhname').value;
               
                if((fhname1.match(fhname)))
                {
                    document.getElementById("valfhname").innerHTML="";
                }else
                { alert(fhname1);
                    document.getElementById("valfhname").innerHTML="Invalid F/HName";
                    status="false";
                }
                
                var age=/^[0-9]{2}$/;
                var dage=document.getElementById('death_age').value;
               
                if((dage.match(age)))
                {
                    document.getElementById("valdage").innerHTML="";
                }else
                { alert(dage);
                    document.getElementById("valdage").innerHTML="Invalid Age";
                    status="false";
                }
                
                
                var daddress=/^[a-zA-z 0-9]{4,20}$/;
                var address=document.getElementById('death_address').value;
               
                if((address.match(daddress)))
                {
                    document.getElementById("valaadd").innerHTML="";
                }else
                { alert(address);
                    document.getElementById("valaadd").innerHTML="Invalid Address";
                    status="false";
                }
                
                 var iname=/^[a-zA-z]{4,20}$/;
                var infoname=document.getElementById('death_informer').value;
               
                if((infoname.match(iname)))
                {
                    document.getElementById("valiname").innerHTML="";
                }else
                { alert(infoname);
                    document.getElementById("valiname").innerHTML="Invalid InformerName";
                    status="false";
                }
                
                var infoaddress=/^[a-zA-z 0-9]{4,20}$/;
                var iaddress=document.getElementById('death_infoadd').value;
                if((iaddress.match(infoaddress)))
                {
                    document.getElementById("valiadd").innerHTML="";
                }else
                { alert(iaddress);
                    document.getElementById("valiadd").innerHTML="Invalid Informer Address";
                    status="false";
                }
                
                
                var deceasedplace=/^[a-zA-z]{4,20}$/;
                var deplace=document.getElementById('death_place').value;
               
                if((deplace.match(deceasedplace)))
                {
                    document.getElementById("valplace").innerHTML="";
                }else
                { alert(deplace);
                    document.getElementById("valplace").innerHTML="Invalid Place Name";
                    status="false";
                }
                
                var occupation=/^[a-zA-z]{4,20}$/;
                var doccupation=document.getElementById('death_occ').value;
               
                if((doccupation.match(occupation)))
                {
                    document.getElementById("valdocc").innerHTML="";
                }else
                { alert(doccupation);
                    document.getElementById("valdocc").innerHTML="Invalid Occupation";
                    status="false";
                }
                
               var treatment=/^[a-zA-z]{2,20}$/;
                var dtreatment=document.getElementById('death_treatment').value;
               
                if((dtreatment.match(treatment)))
                {
                    document.getElementById("valtreatment").innerHTML="";
                }else
                { alert(dtreatment);
                    document.getElementById("valtreatment").innerHTML="Invalid Treatment";
                    status="false";
                }  
                
                var disease=/^[a-zA-z]{4,20}$/;
                var ddisease=document.getElementById('death_disease').value;
               
                if((ddisease.match(disease)))
                {
                    document.getElementById("valdisease").innerHTML="";
                }else
                { alert(ddisease);
                    document.getElementById("valdisease").innerHTML="Invalid Disease";
                    status="false";
                }  
                
                if(status==="false")
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
    <center>
        <h1>Death Registration</h1>
        <form>
            <table border="1">
                <tr><td>Date of Death :</td><td><input type="date" name="death_date" id="death_date"></td></tr>
                <tr><td>Place of Death :</td><td><input type="text" name="death_dplace" id="death_dplace"><div style="color: red" id="valdplace"></div></td></tr>
               <tr><td>Name of deceased :</td><td><input type="text" name="death_name" id="death_name"><div style="color: red" id="valdname"></div></td></tr>
               <tr><td>Father/Husband of deceased :</td><td><input type="text" name="death_fhname" id="death_fhname"><div style="color: red" id="valfhname"></div></td></tr>
                <tr><td>Gender of deceased :</td><td><input type="radio" name="death_gender" id="death_gender">Male<input type="radio" name="death_gender" id="death_gender">Female</td></tr>
                <tr><td>Age of deceased :</td><td><input type="text" name="death_age" id="death_age"><div style="color: red" id="valdage"></div></td></tr>
                <tr><td>Address of deceased:</td><td><textarea type="text" name="death_address" id="death_address"></textarea><div style="color: red" id="valaadd"></div></td></tr>
            
                <tr><td>Informants Name</td><td><input type="text" name="death_informer" id="death_informer"><div style="color: red" id="valiname"></div></td></tr>
                <tr><td>Informants Address</td><td><textarea type="text" name="death_infoadd" id="death_infoadd"></textarea><div style="color: red" id="valiadd"></div></td></tr> 
           
                <tr><td>Place of deceased :</td><td><input type="text" name="death_place" id="death_place"><div style="color: red" id="valplace"></div></td></tr>
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
                <tr><td>Occupation of deceased :</td><td><input type="text" name="death_occ" id="death_occ"><div style="color: red" id="valdocc"></div></td></tr>
                <tr><td>Treatment given before death :</td><td><input type="text" name="death_treatment" id="death_treatment"><div style="color: red" id="valtreatment"></div></td></tr>
               <tr><td>Has the reason of death medically certified:</td><td><input type="radio" name="death_reason" id="death_reason">Yes<input type="radio" name="death_reason" id="death_reason">No</td></tr>
                <tr><td>Name of the Disease/Cause for Death:</td><td><input type="text" name="death_disease" id="death_disease"><div style="color: red" id="valdisease"></div></td></tr>
                <tr><td>Addicted to Smoking (Yes/No) :</td><td><input type="radio" name="death_smoking" id="death_smoking">Yes<input type="radio" name="death_smoking" id="death_smoking">No</td></tr>
                 <tr><td>Addicted to Alcohol (Yes/No):</td><td><input type="radio" name="death_alcohol" id="death_alcohol">Yes<input type="radio" name="death_alcohol" id="death_alcohol">No</td></tr>
                <tr><td><input type="submit" name="submit" value="SUBMIT" onClick="return validate()"></td>
                <td><input type="reset" name="reset" value="RESET" ></td>
                </tr>
                   </table>
        </form>
             
    </center>
    </body>
</html>
