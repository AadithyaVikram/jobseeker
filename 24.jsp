<html>
<head>
	<title>User Validation</title>

	<style>
	


body {

background-image: url("reg.jpg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  margin: 0;
  font-family: Arial;
  font-size: 17px;

  margin: 0;
  font-family: Arial;
  font-size: 17px;

}


input[type=text], input[type=password]
{
border: none;
border-bottom: 2px solid red;
width=50%;
height:25px;
}
form,h1
{ position:relative;
top:100px;
}


</style>
	<script type="text/javascript">
		function validate() {
            var fn=document.getElementById("fn");
            var fname=fn.value;
            var ln=document.getElementById("ln");
            var lname=ln.value;
            var un=document.getElementById("un");
            var uname=un.value;
            var pwd=document.getElementById("pwd");
            var pass=pwd.value;
            var cpwd=document.getElementById("cpwd");
            var cpass=cpwd.value;
            var em = document.getElementById("e");
            var email = em.value;
            var m=document.getElementById("ph");
            var mobile=m.value;
                   
            var fre=new RegExp("^(?=.*[a-z])(?=.*[A-Z])");
            var lre=new RegExp("^(?=.*[a-z])(?=.*[A-Z])");
            var unre=new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])");
            var ere=new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
            var mre=new RegExp("^(?=.*[0-9])(?=.{10})");
            var pwdre=new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
            
            if (fre.test(fname)) {
				if(lre.test(lname))
                {
                    if(unre.test(uname)){
                        if(ere.test(email))
                        {
                            if(pwdre.test(pass))
                            {
                                if (cpass==pass)
                                {
                                    if(mre.test(mobile))
                                    {
										alert("Credentials are valid and saved");

                                     	if(document.getElementById("displayform").style.display=="none")
										{
											document.getElementById("displayform").style.display="block";
										}
										else{
											document.getElementById("displayform").style.display="none";
										}q
                                       
                                    }
                                    else {
                                            alert("Invalid");
                                            m.style.border = "red solid 3px";        
                                            m.value='';
                                            m.placeholder="Invalid";
                                            return false;
                		}
                                }
                                else {
                		alert("Invalid");
			cpwd.style.border = "red solid 3px";        
                		cpwd.value='';
                		cpwd.placeholder="Invalid";
			return false;
                }
                            }
                            else {
                		alert("Invalid");
			pwd.style.border = "red solid 3px";        
                		pwd.value='';
                		pwd.placeholder="Invalid";
			return false;
                	 }
                        }
                        else {
                		alert("Invalid");
			em.style.border = "red solid 3px";        
                		em.value='';
                		em.placeholder="Invalid";
			return false;
                	}
                    }
                else {
                		alert("Invalid");
			un.style.border = "red solid 3px";        
                		un.value='';
                		un.placeholder="Invalid";
			return false;
               	}
                }
                else {
                alert("Invalid");
				ln.style.border = "red solid 3px";        
                ln.value='';
                ln.placeholder="Invalid";
				return false;
                }
            }
			
			else {
            /*alert("Invalid");
				fn.style.border = "red solid 3px";        
                fn.value='';
                fn.placeholder="Invalid";
				return false;*/
                return err(fn)
			}
            	
		}
        function err(ele)
        {
                ele.style.border = "red solid 3px";        
                ele.value='';
                ele.placeholder="Invalid";
				return false;
        }
	</script>
</head>

<body >

	<center>
		<h1>Email Registration</h1>
		<form action="b.jsp" >
			<fieldset style="width:500px; background-color: white;" >
				
				<table>
					<tr>
						<input type="text"
                            id="fn" name="fn"
							placeholder="Firstname"
							maxlength="10">
					</tr>
					<br><br>
					<tr>
						<input type="text"
							id="ln" name="ln"
                            placeholder="Lastname"
							maxlength="10">
					</tr>
					<br><br>
                    <tr>
						<input type="text"
							id="un" name="un"
                            placeholder="UserName"
							maxlength="10">
					</tr>
					<br><br>
					<tr>
						<input type="email"
                            id="e" name="e"
							placeholder="Email" >
					</tr>
					<br><br>
					<tr>
						<input type="password"
                        id="pwd" name="pwd"
                        placeholder="Password">
					</tr>
					<br><br>
					<tr>
						<input type="password"
                        id="cpwd" name="cpwd"
                        placeholder="Confirm">
					</tr>
					<br><br>
					<tr>
						<input type="text" id="ph" name='ph' placeholder="Mobile">
					</tr>
					<br><br>
					<tr>
						<label>Gender:</label>
						<select id="gender" name="gender">
							<option value="male">male</option>
							<option value="female">female</option>
							<option value="others">others</option>
						</select>
					</tr>
					<br><br>
					<tr><input type="button" onclick="return validate()" value="check">
					</tr>
				</table>
		</div>
		<div id="displayform" style="display: none;">
		<center>
			<h1>Give your job specifications here</h1>
			<br><br><br><br><br><br>
			<label>Expertised Languages(only one):</label>
			<input type="text" id="el" name='el' size="20" maxlength="30">
			<br><br>
			<label>Other Expertised Languages:</label>
			<input type="text" id="oel" name="oel" size="20" maxlength="30">
			<br><br>
			<label>Domain:</label>
			<select id="domain" name="domain">
				<option selected disabled>select</option>
					<optgroup label="Data Science">
						<option value="Data Mining">Data Mining</option>
						<option value="Big Data Analytics">Big Data Analytics</option>
						<option value="Business Intelligence Developer">Business Intelligence Developer</option>
					</optgroup>
					<optgroup label="Networking">
						<option value="Network Engineer">Network Engineer</option>
						<option value="Telecommunicarions Specialist">Telecommunicarions Specialist</option>
						<option value="Database Administrator">Database Administrator</option>
					</optgroup>
			</select>
			<br><br>
			<label>YEARS OF EXPERIENCE</label>
			<input type="text" name="yoe" id="yoe" placeholder="Years of experience" size="20" maxlength="30"><br><br>
			<label>NO OF CERTIFICATES</label>
			<input type="text" name="nocir" id="nocir" placeholder="No of certificates" size="20" maxlength="30"><br><br>
			<label>WORKED COMPANIES</label>
			<input type="text" name="prvcom" id="prvcom" placeholder="Previously worked companies" size="20" maxlength="30">
			<br><br><br>
			<input type="submit" value="SUBMIT">
			<br>
			<br>
			<br>
		</center>
		</div>
	</fieldset>
	</center>
	</form>
   
</body>
</html>

