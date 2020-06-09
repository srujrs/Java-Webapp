<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style/style.css">
        <title>VChat</title>
        <script>
		function checkusername()
		{
			if(document.signupform.username.value.length < 6)
				document.getElementById("unerror").innerHTML = "Username must be atleast 6characters long";
		}
		function resetunerror()
		{
			document.getElementById("unerror").innerHTML = "";
		}
		function checkpassword()
		{
			if(document.signupform.password.value.length < 8)
				document.getElementById("passerror").innerHTML = "Password must be atleast 8characters long";
			else
			{
				var f1 = 0;
				var f2 = 0;
				var f3 = 0;
				var f4 = 0;
				var pass = document.signupform.password.value;
				for(let i = 0 ; i < pass.length ; ++i)
				{
					if(pass[i] > 'a' && pass[i] < 'z')
						f1 = 1;
					else if(pass[i] > 'A' && pass[i] < 'Z')
						f2 = 1;
					else if(pass[i] > '0' && pass[i] < '9')
						f3 = 1;
					else
						f4 = 1;
				}
				if(f1 == 0)
					document.getElementById("passerror").innerHTML = "Password must contain a lowercase alphabet";
				else if(f2 == 0)
					document.getElementById("passerror").innerHTML = "Password must contain a uppercase alphabet";
				else if(f3 == 0)
					document.getElementById("passerror").innerHTML = "Password must contain a numeric character";
				else if(f4 == 0)
					document.getElementById("passerror").innerHTML = "Password must contain a special character";
			}
		}
		function resetpasserror()
		{
			document.getElementById("passerror").innerHTML = "";
		}
	</script>
</head>
<body>
        <div class="colorcontainer"></div>
        <div class="formcontainer">
                <div class="heading" align="center">VChat</div>
                <div class="formheading">Welcome!</div>
                <p>Please enter username and password.</p>
                <form name="signupform" action="login" method="post">
                        <input type="text" id="username" name="username" required placeholder="Username" onblur="checkusername();" onclick="resetunerror();">
                        <div id="unerror"></div>
                        <input type="password" id="password" name="password" required placeholder="Password" onblur="checkpassword();" onclick="resetpasserror();">
                        <div id="passerror"></div>
                        <div class="buttoncontainer">
                                <button type="submit" class="signinbutton" value="signin">
                                        <div class="btntxt">Sign in</div>
                                </button>
                                <a href="signup.jsp" class="dummybutton">
                                        <div class="btntxt">Sign up</div>
				</a>
                        </div>
                </form>
        </div>
        <div class="foot">Welcome to the official VChat web-client.</div>
</body>
</html>
