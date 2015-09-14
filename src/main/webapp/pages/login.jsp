<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
	<meta name="viewport" content="width=device-width, initial--scale=1.0">
		<meta charset="utf-8">
			<title>Morning Deals</title>
			<link rel="stylesheet" href="css/style.css" />
			<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis'
				rel='stylesheet' type='text/css'>
				<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
				<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
				<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
</head>
<body>

	<div class="product_wraper">
		<!---- Main Prodcut_wrapper Start --->
		<section>
		<div id="container_demo">
			<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
			<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
				id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">

					<form class="form-horizontal" id="form-horizontal"
						name="form-horizontal" method="post" action="authenticate">
						<p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="inputEmail" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="inputPassword" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
								
					<p class="change_link">
						Not a member yet ? <a href="#toregister" class="to_register">Join
							us</a>
					</p>
					</form>


				</div>

				<div id="register" class="animate form">
					<form action="addUser" autocomplete="on" method="post">
						<h1>Sign up</h1>
						<p>
							<label for="usernamesignup" class="uname" data-icon="u">Your
								username</label> <input id="usernamesignup" name="usernamesignup"
								required="required" type="text" placeholder="mysuperusername690" />
						</p>
						<p>
							<label for="emailsignup" class="youmail" data-icon="e">
								Your email</label> <input id="emailsignup" name="emailsignup"
								required="required" type="email"
								placeholder="mysupermail@mail.com" />
						</p>
						<p>
							<label for="passwordsignup" class="youpasswd" data-icon="p">Your
								password </label> <input id="passwordsignup" name="passwordsignup"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p>
							<label for="passwordsignup_confirm" class="youpasswd"
								data-icon="p">Please confirm your password </label> <input
								id="passwordsignup_confirm" name="passwordsignup_confirm"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p class="signin button">
							<input type="submit" value="Sign up" />
						</p>
						<p class="change_link">
							Already a member ? <a href="#tologin" class="to_register"> Go
								and log in </a>
						</p>
					</form>
				</div>

			</div>
		</div>
		</section>
	</div>
	<!--- Wrapper End ---->
</body>
</html>

