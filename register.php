
<?php include('include/header.php');?>
<div class="content">
	<div class="wrap">
		<div class="content-top" style="min-height:580px;padding:0px;width:100%">
				
				  <div style="padding:20px;text-align:center;"><h3>Regjistrohu per rezervimin e biletes </h3></div> 
				<?php
			if(isset($_SESSION['error']))
		{
			foreach($_SESSION['error'] as $er)
			{
				echo'<font color="red"><b>'.$er.'</b.</font>';
				echo'<br>';
			}
			unset($_SESSION['error']);
		}
		if(isset($_SESSION['done']))
		{
		echo'<font color="green"><b>'.$SESSION['done'].'</b.</font>';	
		}
		?>
				  <div class="panel-body">
				<form action="process_registration.php" method="post" id="form1">
				    <div class="form-group has-feedback">
        <input name="nm" type="text" size="25" placeholder="Emri" class="form-control" required/>
</div>
<div class="form-group has-feedback">
          <input name="age" type="text" size="25" placeholder="Mosha" class="form-control".required/>
        </div>
        <div class="form-group has-feedback">
          <select name="gender" class="form-control" required >
            <option value>Zgjidh gjinine</option>
            <option>Femer</option>
			<option>Mashkull</option>
			<option>Tjeter</option>
        </select>
        </div>
        <div class="form-group has-feedback">
<input name="mno" type="text" size="25" placeholder="Numri i telefonit" class="form-control" required     />
</div>
<div class="form-group has-feedback">
         <input name="email" type="text" size="25" placeholder="Email" class="form-control"  required   />
         </div>
         <div class="form-group has-feedback">
         <input name="pwd" type="password" size="25" placeholder="Paswordi" class="form-control" 
required  />
         </div>
         <div class="form-group has-feedback">
             <input name="cpwd" type="password" size="25" placeholder="Konfirmo Paswordin" class="form-control"   required   />
             </div>
            <div class="form-group">
          <button type="submit" class="btn btn-primary">Regjistrohu</button>
      </div>
      </div>
</div>
    </form>
			</div>
		</div>
		<div class="clear"></div>	
		</div>
	</div>
<?php include('include/footer.php');?>