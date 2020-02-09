<?php
include("include/config.php");
extract($_POST);
session_start();
$error=array();
if(!empty($_POST))
{
	$sq="select * from register where r_id=$id";
	$res=mysqli_query($con,$sq);
	$row=mysqli_fetch_array($res);
	
	if($opwd!=$row['r_pwd'])
	{
		$error[]="Paswordi juaj nuk eshte i sakte";
	}
	elseif($pwd!=$cpwd)
	{
		$error[]="Paswordi juaj nuk perputhet";
	}
	if(!empty($error))
	{
		$_SESSION['error']=$error;
		header("location:changepass.php");
	}
	else
	{
		$uq="update register set r_pwd='$pwd' where r_id=$id ";
		mysqli_query($con,$uq);
		$_SESSION['done']="Paswordi u ndryshua me sukses";
		header("location:changepass.php");
	}
}
else
{
	header("location:changepass.php");
}
?>