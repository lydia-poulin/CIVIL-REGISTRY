<%-- 
    Document   : pancard.jsp
    Created on : Sep 16, 2017, 10:28:37 AM
    Author     : student29
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.db_connection" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("submit")!=null)
{
    String pass_applying=request.getParameter("pass_applying");
    String pass_reason=request.getParameter("pass_reason");
    String pass_apptype=request.getParameter("pass_apptype");
    String pass_booklet=request.getParameter("pass_booklet");
    String pass_validity=request.getParameter("pass_validity");
    
    String pass_name=request.getParameter("pass_name");
    String pass_surname=request.getParameter("pass_surname");
    String pass_dob=request.getParameter("pass_dob");
    String pass_birthplace=request.getParameter("pass_birthplace");
    String district_id=request.getParameter("district_id");
    String pass_country=request.getParameter("pass_country");
    String pass_gender=request.getParameter("pass_gender");
    String pass_mstatus=request.getParameter("pass_mstatus");
    String pass_citizenship=request.getParameter("pass_citizenship");
    String pass_panno=request.getParameter("pass_panno");
    String pass_voterid=request.getParameter("pass_voterid");
    String pass_emptype=request.getParameter("pass_emptype");
    String pass_emporg=request.getParameter("pass_emporg");
    String pass_education=request.getParameter("pass_education");
     String pass_aadharno=request.getParameter("pass_aadharno");
    String pass_idmarks=request.getParameter("pass_idmarks");
    
      String pass_fname=request.getParameter("pass_fname");
    String pass_mname=request.getParameter("pass_mname");
    String pass_gname=request.getParameter("pass_gname");
    String pass_spousename=request.getParameter("pass_spousename");
    String pass_address=request.getParameter("pass_address");
    String pass_police=request.getParameter("pass_police");
    String pass_mobno=request.getParameter("pass_mobno");
    String pass_email=request.getParameter("pass_email");
    
   String pass_frefname=request.getParameter("pass_frefname");
    String pass_frefaddress=request.getParameter("pass_frefaddress");
    String pass_frefmobno=request.getParameter("pass_frefmobno");
    String pass_srefname=request.getParameter("pass_srefname");
    String pass_srefaddress=request.getParameter("pass_srefaddress");
     String pass_srefmobno=request.getParameter("pass_srefmobno"); 
     
String str="insert into tbl_passport1(pass_applying,pass_reason,pass_apptype,pass_booklet,pass_validity)"
        + "values('"+pass_applying+"','"+pass_reason+"','"+pass_apptype+"','"+pass_booklet+"','"+pass_validity+"')";
boolean b=obj.insert(str);
if(b==true)
 out.print("");
else
out.print(str);
String str1="insert into tbl_passport2(pass_name,pass_surname,pass_dob,pass_birthplace,district_id,pass_country,pass_gender,pass_mstatus,pass_citizenship,pass_panno,pass_voterid,pass_emptype,pass_emporg,pass_education,pass_aadharno,pass_idmarks)"
            + "values('"+pass_name+"','"+pass_surname+"','"+pass_dob+"','"+pass_birthplace+"','"+district_id+"','"+pass_country+"','"+pass_gender+"','"+pass_mstatus+"','"+pass_citizenship+"','"+pass_panno+"','"+pass_voterid+"','"+pass_emptype+"','"+pass_emporg+"','"+pass_education+"','"+pass_aadharno+"','"+pass_idmarks+"')";
boolean b1=obj.insert(str1);
if(b1==true)
 out.print("");
else
out.print(str1);
String str2="insert into tbl_passport3(pass_fname,pass_mname,pass_gname,pass_spousename,pass_address,pass_police,pass_mobno,pass_email)"
        + "values('"+pass_fname+"','"+pass_mname+"','"+pass_gname+"','"+pass_spousename+"','"+pass_address+"','"+pass_police+"','"+pass_mobno+"','"+pass_email+"')";
boolean b2=obj.insert(str2);
if(b2==true)
 out.print("");
else
out.print(str2);
String str3="insert into tbl_passport4(pass_frefname,pass_frefaddress,pass_frefmobno,pass_srefname,pass_srefaddress,pass_srefmobno)"
        + "values('"+pass_frefname+"','"+pass_frefaddress+"','"+pass_frefmobno+"','"+pass_srefname+"','"+pass_srefaddress+"','"+pass_srefmobno+"')";

boolean b3=obj.insert(str3);
if(b3==true)
 out.print("success");
else
out.print(str3);
}
%>
<html>
    <head>
         <script>
            
            function validate()
            {
                var status="true";
                
                var passname=/^[a-zA-z]{4,20}$/;
                var pname=document.getElementById('pass_name').value;
               
                if((pname.match(passname)))
                {
                    document.getElementById("valpass_name").innerHTML="";
                }else
                { alert(pname);
                    document.getElementById("valpass_name").innerHTML="Invalid FirstName";
                    status="false";
                }
                
                var surname=/^[a-zA-z]{4,20}$/;
                var sname=document.getElementById('pass_surname').value;
               
                if((sname.match(surname)))
                {
                    document.getElementById("valpass_surname").innerHTML="";
                }else
                { alert(sname);
                    document.getElementById("valpass_surname").innerHTML="Invalid SurName";
                    status="false";
                }
                
                
                var birthplace=/^[a-zA-z]{4,20}$/;
                var bplace=document.getElementById('pass_birthplace').value;
               
                if((bplace.match(birthplace)))
                {
                    document.getElementById("valpass_birthplace").innerHTML="";
                }else
                { alert(bplace);
                    document.getElementById("valpass_birthplace").innerHTML="Invalid BirthPlace";
                    status="false";
                }
                var passcountry=/^[a-zA-z 0-9]{4,20}$/;
                var country=document.getElementById('pass_country').value;
               
                if((country.match(passcountry)))
                {
                    document.getElementById("valpass_country").innerHTML="";
                }else
                { alert(country);
                    document.getElementById("valpass_country").innerHTML="Invalid Country";
                    status="false";
                }
                var passpanno=/^[a-zA-z 0-9]{4,20}$/;
                var panno=document.getElementById('pass_panno').value;
               
                if((panno.match(passpanno)))
                {
                    document.getElementById("valpass_panno").innerHTML="";
                }else
                { alert(panno);
                    document.getElementById("valpass_panno").innerHTML="Invalid PanNumber";
                    status="false";
                }
                var passvoterid=/^[a-zA-z 0-9]{4,20}$/;
                var voterid=document.getElementById('pass_voterid').value;
               
                if((voterid.match(passvoterid)))
                {
                    document.getElementById("valpass_voterid").innerHTML="";
                }else
                { alert(voterid);
                    document.getElementById("valpass_voterid").innerHTML="Invalid VoterId";
                    status="false";
                }
                 var passemporg=/^[a-zA-z]{4,20}$/;
                var emporg=document.getElementById('pass_emporg').value;
               
                if((emporg.match(passemporg)))
                {
                    document.getElementById("valpass_emporg").innerHTML="";
                }else
                { alert(emporg);
                    document.getElementById("valpass_emporg").innerHTML="Invalid employee";
                    status="false";
                }
                
                 var passaadharno=/^[0-9]{12}$/;
                var aadharno=document.getElementById('pass_aadharno').value;
               
                if((aadharno.match(passaadharno)))
                {
                    document.getElementById("valpass_aadharno").innerHTML="";
                }else
                { alert(aadharno);
                    document.getElementById("valpass_aadharno").innerHTML="Invalid Aadhar Number";
                    status="false";
                }
                
                 var passidmarks=/^[a-zA-z]{4,20}$/;
                var idmarks=document.getElementById('pass_idmarks').value;
               
                if((idmarks.match(passidmarks)))
                {
                    document.getElementById("valpass_idmarks").innerHTML="";
                }else
                { alert(idmarks);
                    document.getElementById("valpass_idmarks").innerHTML="Invalid IdentificationMark";
                    status="false";
                }
                
                var passfname=/^[a-zA-z]{4,20}$/;
                var pfname=document.getElementById('pass_fname').value;
               
                if((pfname.match(passfname)))
                {
                    document.getElementById("valpass_fname").innerHTML="";
                }else
                { alert(pfname);
                    document.getElementById("valpass_fname").innerHTML="Invalid FatherName";
                    status="false";
                }
                
                var passmname=/^[a-zA-z]{4,20}$/;
                var pmname=document.getElementById('pass_mname').value;
               
                if((pmname.match(passmname)))
                {
                    document.getElementById("valpass_mname").innerHTML="";
                }else
                { alert(pmname);
                    document.getElementById("valpass_mname").innerHTML="Invalid MotherName";
                    status="false";
                }
                
                var passgname=/^[a-zA-z]{4,20}$/;
                var pgname=document.getElementById('pass_gname').value;
               
                if((pgname.match(passgname)))
                {
                    document.getElementById("valpass_gname").innerHTML="";
                }else
                { alert(pgname);
                    document.getElementById("valpass_gname").innerHTML="Invalid GuardianName";
                    status="false";
                }
                
                var passspousename=/^[a-zA-z]{4,20}$/;
                var pspousename=document.getElementById('pass_spousename').value;
               
                if((pspousename.match(passspousename)))
                {
                    document.getElementById("valpass_spousename").innerHTML="";
                }else
                { alert(pspousename);
                    document.getElementById("valpass_spousename").innerHTML="Invalid SpouseName";
                    status="false";
                }
                
                var passaddress=/^[a-zA-z]{4,20}$/;
                var paddress=document.getElementById('pass_address').value;
               
                if((paddress.match(passaddress)))
                {
                    document.getElementById("valpass_address").innerHTML="";
                }else
                { alert(paddress);
                    document.getElementById("valpass_address").innerHTML="Invalid Address";
                    status="false";
                }
                
                var passpolice=/^[a-zA-z]{4,20}$/;
                var ppolice=document.getElementById('pass_police').value;
               
                if((ppolice.match(passpolice)))
                {
                    document.getElementById("valpass_police").innerHTML="";
                }else
                { alert(ppolice);
                    document.getElementById("valpass_police").innerHTML="Invalid PoliceDetails";
                    status="false";
                }
                
                var passmobno=/^[a-zA-z]{4,20}$/;
                var pmobno=document.getElementById('pass_mobno').value;
               
                if((pmobno.match(passmobno)))
                {
                    document.getElementById("valpass_mobno").innerHTML="";
                }else
                { alert(pmobno);
                    document.getElementById("valpass_mobno").innerHTML="Invalid MobNumber";
                    status="false";
                }
                
                 var passemail=/^[a-zA-z]{4,20}$/;
                var pemail=document.getElementById('pass_email').value;
               
                if((pemail.match(passemail)))
                {
                    document.getElementById("valpass_email").innerHTML="";
                }else
                { alert(pemail);
                    document.getElementById("valpass_email").innerHTML="Invalid EmailId";
                    status="false";
                }
                     
                var passfrefname=/^[a-zA-z]{4,20}$/;
                var pfrefname=document.getElementById('pass_frefname').value;
               
                if((pfrefname.match(passfrefname)))
                {
                    document.getElementById("valpass_frefname").innerHTML="";
                }else
                { alert(pfrefname);
                    document.getElementById("valpass_frefname").innerHTML="Invalid RefName1";
                    status="false";
                }
                
                  var passfrefaddress=/^[a-zA-z]{4,20}$/;
                var pfrefaddress=document.getElementById('pass_frefaddress').value;
               
                if((pfrefaddress.match(passfrefaddress)))
                {
                    document.getElementById("valpass_frefaddress").innerHTML="";
                }else
                { alert(pfrefaddress);
                    document.getElementById("valpass_frefaddress").innerHTML="Invalid RefAddress1";
                    status="false";
                }
                
                var passfrefmobno=/^[a-zA-z]{4,20}$/;
                var pfrefmobno=document.getElementById('pass_frefmobno').value;
               
                if((pfrefmobno.match(passfrefmobno)))
                {
                    document.getElementById("valpass_frefmobno").innerHTML="";
                }else
                { alert(pfrefmobno);
                    document.getElementById("valpass_frefmobno").innerHTML="Invalid RefMobNo1";
                    status="false";
                }
                
                var passsrefname=/^[a-zA-z]{4,20}$/;
                var psrefname=document.getElementById('pass_srefname').value;
               
                if((psrefname.match(passsrefname)))
                {
                    document.getElementById("valpass_srefname").innerHTML="";
                }else
                { alert(psrefname);
                    document.getElementById("valpass_srefname").innerHTML="Invalid RefName2";
                    status="false";
                }
                
                  var passsrefaddress=/^[a-zA-z]{4,20}$/;
                var psrefaddress=document.getElementById('pass_srefaddress').value;
               
                if((psrefaddress.match(passsrefaddress)))
                {
                    document.getElementById("valpass_srefaddress").innerHTML="";
                }else
                { alert(psrefaddress);
                    document.getElementById("valpass_srefaddress").innerHTML="Invalid RefAddress2";
                    status="false";
                }
                
                var passsrefmobno=/^[a-zA-z]{4,20}$/;
                var psrefmobno=document.getElementById('pass_srefmobno').value;
               
                if((psrefmobno.match(passsrefmobno)))
                {
                    document.getElementById("valpass_srefmobno").innerHTML="";
                }else
                { alert(psrefmobno);
                    document.getElementById("valpass_srefmobno").innerHTML="Invalid RefMobNo2";
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
        <title>Passport</title>
    </head>
    <body>
    <center>
        <form>
        <h1>Passport Application Form</h1>
        <table border="1">
            <tr><th>1. Service required :</th></tr>
            <tr><td>1.1 Applying for :</td><td><input type="radio" name="pass_applying" id="pass_applying">Fresh Passport<input type="radio" name="pass_applying" id="pass_applying">Re-issue Passport</td></tr>
            <tr><td>1.2 If Re-issue specify reason :</td>
                            <td><select name="pass_reason" id="pass_reason">
                                    <option>--select--</option>
                                    <option>Validity Expired within 3 years/ Due to Expire</option>
                                    <option>Validity Expired more than 3 years ago</option>
                                    <option>Change in Existing Personal Particulars</option>
                                    <option>Exhaustion of Pages</option>
                                    <option>Lost Passport</option>
                                    <option>Damaged Passport</option>    
                                </select></td></tr>
            <tr><td>1.4 Type of Application</td><td><input type="radio" name="pass_apptype" id="pass_apptype">Normal<input type="radio" name="pass_apptype" id="pass_apptype">Tatkaal</td></tr>
            <tr><td>1.5 Type of Passport Booklet</td><td><input type="radio" name="pass_booklet" id="pass_booklet">36 pages<input type="radio" name="pass_booklet" id="pass_booklet">60 pages</td></tr>
            <tr><td>1.6 Validity Required<br>(For minors between 15 and 18 years)</td><td><input type="radio" name="pass_validity" id="pass_validity">10 Years<input type="radio" name="pass_validity" id="pass_validity">Up to age 18</td></tr>
        
            <tr><th>2. Applicants details :</th></tr>
            <tr><td>2.1 Applicants Name :</td></tr>
            <tr><td>First name:</td><td><input type="text" name="pass_name" id="pass_name"><div style="color: red" id="valpass_name"></div></td></tr>
            <tr><td>Surname :</td><td><input type="text" name="pass_surname" id="pass_surname"><div style="color: red" id="valpass_surname"></div></td></tr>
            <tr><td>2.2 Date of birth :</td><td><input type="date" name="pass_dob" id="pass_dob"></td></tr>
            <tr><td>2.3 Place of birth :</td><td><input type="text" name="pass_birthplace" id="pass_birthplace"><div style="color: red" id="valpass_birthplace"></div></td></tr>
            <tr><td>2.4 District :</td><td><select name="district_id" id="district_id">
                <option>--select--</option>
                             <%
                      String sel="select * from tbl_district";
                       ResultSet rs=obj.select(sel);
                            while (rs.next())
                            { 
                            %>
                            <option value="<%=rs.getString("district_id")%>"><%=rs.getString("state_id")%><%=rs.getString("district_name")%></option>
                            <%
                            }
                            %>
                      
                        </select></td></tr>
            <tr><td>2.5 Country :</td><td><input type="text" name="pass_country" id="pass_country"><div style="color: red" id="valpass_country"></div></td></tr>
            <tr><td>2.6 Gender :</td><td><input type="radio" name="pass_gender" id="pass_gender">Male
                                         <input type="radio" name="pass_gender" id="pass_gender">Female
                                         <input type="radio" name="pass_gender" id="pass_gender">Transgender
                                    </td></tr>
            <tr><td>2.7 Marital Status :</td><td><input type="radio" name="pass_mstatus" id="pass_mstatus">Single
                                                <input type="radio" name="pass_mstatus" id="pass_mstatus">Married
                                                <input type="radio" name="pass_mstatus" id="pass_mstatus">Divorced
                                                <br><input type="radio" name="pass_mstatus" id="pass_mstatus">Widow/Widower
                                                <input type="radio" name="pass_mstatus" id="pass_mstatus">Separated
                                             </td></tr>
            <tr><td>2.8 Citizenship of India by :</td><td><input type="radio" name="pass_citizenship" id="pass_citizenship">Birth
                                                     <input type="radio" name="pass_citizenship" id="pass_citizenship">Descent
                                                     <input type="radio" name="pass_citizenship" id="pass_citizenship">Registration/Naturalization
                                                     </td></tr>
            <tr><td>2.9 PAN No :</td><td><input type="text" name="pass_panno" id="pass_panno"><div style="color: red" id="valpass_panno"></div></td></tr>
            <tr><td>2.10 Voter's ID :</td><td><input type="text" name="pass_voterid" id="pass_voterid"><div style="color: red" id="valpass_voterid"></div></td></tr>
            <tr><td>2.11 Employment Type :</td><td><select name="pass_emptype" id="pass_emptype">
                                    <option>--select--</option>
                                    <option>PSU</option>
                                    <option>Government</option>
                                    <option>Statutory Body</option>
                                     <option>Retired Government Servant</option>
                                    <option>Self Employed</option>
                                    <option>Retired-Private Service</option>
                                     <option>Student</option>
                                    <option>Not Employed</option>
                                    <option>Homemaker</option>
                                    <option>Private</option>
                                    <option>Others</option>
                                    
                                        </select></td></tr>
            <tr><td>2.12 If employed in Government/<br> Statutory Body/ PSU, <br>specify organization name :</td><td><input type="text" name="pass_emporg" id="pass_emporg"><div style="color: red" id="valpass_emporg"></div></td></tr>
            <tr><td>2.13 Educational Qualification :</td><td><input type="radio" name="pass_education" id="pass_education">7th pass or less
                                                            <input type="radio" name="pass_education" id="pass_education">Between 8th and 9th Standard
                                                            <br><input type="radio" name="pass_education" id="pass_education">10th pass and above
                                                             <input type="radio" name="pass_education" id="pass_education">Graduate and above
                                                            </td></tr>
           
            <tr><td>2.14 Aadhaar Number :</td><td><input type="text" name="pass_aadharno" id="pass_aadharno"><div style="color: red" id="valpass_aadharno"></div></td></tr>
            <tr><td>2.15 Visible Distinguishing Mark :</td><td><input type="text" name="pass_idmarks" id="pass_idmarks"><div style="color: red" id="valpass_idmarks"></div></td></tr>
       
                <tr><th>3. Family Details :</th></tr>
                <tr><td>3.1 Father's Given Name :</td><td><input type="text" name="pass_fname" id="pass_fname"><div style="color: red" id="valpass_fname"></div></td></tr>
                <tr><td>3.2 Mother's Given Name :</td><td><input type="text" name="pass_mname" id="pass_mname"><div style="color: red" id="valpass_mname"></div></td></tr>
                <tr><td>3.3 Legal Guardian's Given Name :</td><td><input type="text" name="pass_gname" id="pass_gname"><div style="color: red" id="valpass_gname"></div></td></tr>
                <tr><td>3.4 Spouse's Given Name</td><td><input type="text" name="pass_spousename" id="pass_spousename"><div style="color: red" id="valpass_spousename"></div></td></tr>
                <tr><td>3.5 Applicants Address :</td></tr>
                <tr><td>House No. and Street Name :</td><td><textarea type="text" name="pass_address" id="pass_address"></textarea><div style="color: red" id="valpass_address"></div></td></tr>
                <tr><td>Police station :</td><td><input type="text" name="pass_police" id="pass_police"><div style="color: red" id="valpass_police"></div></td></tr>
                <tr><td>Mobile number :</td><td><input type="text" name="pass_mobno" id="pass_mobno"><div style="color: red" id="valpass_mobno"></div></td></tr>
                <tr><td>E-mail Id :</td><td><input type="email" name="pass_email" id="pass_email"><div style="color: red" id="valpass_email"></div></td></tr>
        
            <tr><th>6. References in your Village or Town or City :</th></tr>
            <tr><td>6.1 First Reference :</td></tr>
            <tr><td>Name :</td><td><input type="text" name="pass_frefname" id="pass_frefname"><div style="color: red" id="valpass_frefname"></div></td></tr>
            <tr><td>Address :</td><td><textarea type="text" name="pass_frefaddress" id="pass_frefaddress"></textarea><div style="color: red" id="valpass_frefaddress"></div></td></tr>
            <tr><td>Mobile Number :</td><td><input type="text" name="pass_frefmobno" id="pass_frefmobno"><div style="color: red" id="valpass_frefmobno"></div></td></tr>
            <tr><td>6.2 Second Reference :</td></tr>
            <tr><td>Name :</td><td><input type="text" name="pass_srefname" id="pass_srefname"><div style="color: red" id="valpass_srefname"></div></td></tr>
            <tr><td>Address :</td><td><textarea type="text" name="pass_srefaddress" id="pass_srefaddress"></textarea><div style="color: red" id="valpass_srefaddress"></div></td></tr>
            <tr><td>Mobile Number :</td><td><input type="text" name="pass_srefmobno" id="pass_srefmobno"><div style="color: red" id="valpass_srefmobno"></div></td></tr>
           
         <tr><td><input type="submit" name="submit" value="Submit" onClick="return validate()"></td>
                <td><input type="reset" name="reset" value="Reset" ></td>
                </tr>
        
        </table>
                           
        </form>
    
    </center>
    </body>
</html>
