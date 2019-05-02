<%-- 
    Document   : index
    Created on : 1 Apr, 2019, 6:49:53 PM
    Author     : anirudh
--%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
       	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">   
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    
    
    
    <body>
       
        
        <div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            
        <form name="myform" action="display.jsp" method="POST" class = "login100-form validate-form" id="myforms"><table border="0">
                
                
                <span class="login100-form-title p-b-49">
			Registration Form
					</span>
                
                
                <thead>
                   <tr>
                        <th></th>
                        <th></th>
                    </tr> 
                </thead>
                <tbody>
                    <tr>
                         <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is required">
				<span class="label-input100">First Name</span>
				<input class="input100" type="text" name="first" placeholder="Type your Name" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
			</div>
                
                    </tr>
                    <tr>
                        
                        <div class="wrap-input100 validate-input m-b-23" data-validate = "usn is required">
				<span class="label-input100">USN</span>
				<input class="input100" type="text" name="usn" placeholder="1RV17CSXXX" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
			</div>
                    </tr>
                    <tr>
                        <div class="wrap-input100 validate-input m-b-23" data-validate = "email is required">
				<span class="label-input100">Email Address</span>
				<input class="input100" type="email" name="email" placeholder="email id" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
			</div>
                        
                        
                    </tr>
                    <tr><br></tr>
                    
                    <tr>
                        
				<span class="label-input100">Gender&nbsp;&nbsp;</span>
				<select name="gender" >
                                <option>Male</option>
                                <option>Female</option>
                                </select>
	                        <br />
                           
                    </tr>
                    <tr>
                    <br>
                    
                    </tr>
                    <tr>
                        <div class="wrap-input100 validate-input m-b-23" data-validate = "email is required">
				<span class="label-input100">Date of Birth</span>
				<input class="input100" type="date" name="DOB" placeholder="DD/MM/YYYY" size="15" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
                    </tr>
                    
                    <tr>
                         <div class="wrap-input100 validate-input m-b-23" data-validate = "Marks is required">
				<span class="label-input100">Mark 1</span>
				<input class="input100" type="number" name="mark1" min="0" max="100" placeholder="Operating System" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
			</div>
                
                    </tr>
                    
                    <tr>
                         <div class="wrap-input100 validate-input m-b-23" data-validate = "Marks is required">
				<span class="label-input100">Mark 2</span>
				<input class="input100" type="number" name="mark2" min="0" max="100" placeholder="OOPS" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
			</div>
                
                    </tr>
                    
                    <tr>
                         <div class="wrap-input100 validate-input m-b-23" data-validate = "Marks is required">
				<span class="label-input100">Mark 3</span>
				<input class="input100" type="number" name="mark3" min="0" max="100" placeholder="DAA" required>
				<span class="focus-input100" data-symbol="&#xf206;"></span>
			</div>
                
                    </tr>
                </tbody>
            </table>
            <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
						<button type="submit" form="myforms" value="Submit" class="login100-form-btn">Submit</button> 
							
							</button>
						</div>
					</div>
            <br>
           
            
            <input type="reset" value="reset" name="reset" class="login100-form-btn"/>
        </form>
                            </div>
		</div>
	</div>
	
                            
        
    </body>
</html>
