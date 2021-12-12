<%-- 
    Document   : index
    Created on : Nov 28, 2021, 5:29:35 AM
    Author     : this pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <title>Registration form</title>
     <center style="color:white;background-color:black"><b><font size="20">LIBRARY REGISTRATION FORM</font></b>
     </center>
       <br>
<style>
form{
width:50%;
}
<!--form{width:33em}fieldset{padding:1ex}-->

</style>

</head>
   <body background="l.png">
<center>
<form style="background-color:black" action="register_detail.jsp" method="post">

<fieldset> 
      <legend style="color:white"><b><font size="5">Registration</font><b></legend> 

      <table style="background-color:#ffffcc;" align="center">
<tr><td><center>
<p><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" 
          style="display: none;"></p>
<p><label for="file" style="cursor: pointer;"><img align="right">Upload Photo</label></p>

<p><img id="output" width="100" height="100" /></p>
<script>
var loadFile = function(event) {
	 var image = document.getElementById('output');
	 image.src = URL.createObjectURL(event.target.files[0]);
};
</script></center></td></tr>
<tr><td><font size="4">&nbsp First Name :</td></font><td><input type="text" name="F_name" 
         placeholder="Enter First Name"></td></tr>
<tr><td><font size="4">&nbsp Middle Name :</td></font><td><input type="text" name="M_name" 
         placeholder="Enter Middle Name"></td></tr>
    <tr><td><font size="4">&nbsp Last Name :</td></font><td><input type="text" name="L_name"
         placeholder="Enter Last Name"></td></tr>
<tr><td><font size="4">&nbsp D.O.B :</td></font><td><input type="date" name="dob"></td></tr>
<tr><td><font size="4">&nbsp Gender :</td></font><td>
    <input type ="radio" name ="gender" value ="Male"> Male
    <input type ="radio" name ="gender" value = "Female"> Female
    <input type ="radio" name ="gender" value = "others"> Others
  </td>
</tr>
<tr><td><font size="4">&nbsp Address :</td></font><td><textarea rows="3" cols="21" name="addr" 
         placeholder="Enter Address"></textarea></td></tr>
<tr><td><font size="4">&nbsp Mobile Number :</td></font><td><input class="form-control" type="text" 
         name="mob" placeholder="Enter Phone Number" 
minlength="10" maxlength="10" required></td></font></tr>
<tr><td><font size="4">&nbsp PID Number :</td></font><td><input type="text" name="pid"
              placeholder="Enter PID"></td></tr>                                                                
<tr><td><font size="4">&nbsp Course :</td></font><td><input type="text"  name="course" 
         placeholder="Enter Course Name"></td></tr>
<tr><td><font size="4">&nbsp E-mail ID :</td></font><td><input type="email"  name="email" 
         placeholder="kalpesh@example.com"></td></tr>
<tr><td><font size="4">&nbsp Signature :</td></font><td><input type="file" placeholder="choose file"></td></tr>

<td>&nbsp<center><input type="submit" style="background-color:green; color:white;width:150px;height:30px;"
           name="submit" value="SUBMIT"></center></td>
<td>&nbsp<center><input type="reset" style="background-color:blue; color:white;width:150px;height:30px;" 
          name="reset" value="RESET"></center></td>
 
 </table>
</fieldset>

</form>
</center>
</body>
</html>
