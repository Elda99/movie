
<?php include('include/header.php');?>
<div class="content">
	<div class="wrap">
<div class="content-left" style="min-height:580px;padding:20px;width:100%">
			<div class="col-md-12">
				<div class="panel panel-default">
				
				  <div style="padding:10px;text-align:center"><h3>Login</h3></div>
				  <div class="panel-body">
				  	<?php
				if(isset($_SESSION['error']))
				{
				echo'<font color="red">'.$_SESSION['error'].'</font>';
				unset($_SESSION['error']);
			    }
				if(isset($_SESSION['done']))
				{
				echo'<font color="green">'.$_SESSION['done'].'</font>';
				unset($_SESSION['done']);
			    }
				?>
				<p style="padding:0px;text-align:left"><h3>Logohu per te rezervuar bilete</h3></p>
				<form action="process_login.php" method="post">
      <div class="form-group has-feedback">
        <input name="email" type="text" size="25" placeholder="Email" class="form-control" placeholder="Email"/>

      </div>
     <div class="form-group has-feedback">
        <input name="pwd" type="password" size="25" placeholder="Password" class="form-control" placeholder="Password" />
     
      </div>
      <div class="form-group">
          <button type="submit" class="btn btn-primary">Hyr</button>
 
          <p class="login-box-msg" style="padding-top:0px">Akoma nuk jeni regjistruar? <a href="register.php">Regjistrohu</a></p>
      </div>
      </div>
</div>
    </form>
			</div>
		</div>
		</div>
	</div>
<?php include('include/footer.php');?>
</body>
</html>