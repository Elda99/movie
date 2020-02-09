<?php
session_start();
if(!isset($_SESSION['client']['status']))
{
	header('location:login.php');
}
extract($_POST);
?><!doctype html><html><head>

<title>Pagesat tuaja</title>
<link href="css/bank.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div id="mainContainer" class="row large-centered">

  <div class="text-center"><h2> Banka Kombetare Tregtare</h2></div>
  
  <hr class="divider">
  <dl class="mercDetails">
    <dt>Shuma transaksioneve</dt> 	<dd>INR <?php echo  $_SESSION['amount'];?></dd>
    <dt>Karta e debitit</dt> 		<dd><?php echo  $number;?></%></dd>
  </dl>
  <hr class="divider">
  
  
<form name="form1" id="form1" method="post" action="complete_payment.php">
<fieldset class="page2">
<div class="page-heading">
<h6 class="form-heading">Konfirmo pagesen</h6>
<p class="form-subheading">OTP e derguar ne numrin tuaj mbaron me <strong>0119</strong></p>


</div>

<div class="row formInputSection">
<div class="large-7 columns">
<label>
  Shkruaj OTP
  <input type="tel" name="otp"  class="form-control optPass" value="" maxlength="6" autocomplete="off" required/>
</label>
</div>
<div class="large-5 columns">
<label>&nbsp;</label><button class="expanded button next" onClick="ValidateForm()">Make Payment</button>
</div>
</div>
<p>
<a class="tryAgain" href="process_booking.php">Shko prapa</a> 
</p>
</fieldset>


</form>
</div>
</body>
</html>