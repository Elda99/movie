
<?php
session_start();
if(!isset($_SESSION['client']['status']))
{
	header('location:login.php');
}
include('include/config.php');
extract($_POST);
$time=time();
$seatno[]=$_SESSION['seatno'];
$sno=implode(',',$seatno);
if($otp=="123456")
{
    $bookid="BKID".rand(1000000,9999999);
    mysqli_query($con,"insert into booking (b_bookid,b_theatre,b_unm,b_show,b_screen,b_seat,b_amt,b_date,b_time) values('$bookid','".$_SESSION['theatre']."','".$_SESSION['client']['uid']."','".$_SESSION['show']."','".$_SESSION['screen']."','".$_SESSION['seats']."','".$_SESSION['amount']."','".$_SESSION['date']."',$time)");
   $seat= $_SESSION['seats'];
   $showid= $_SESSION['show'];
   
   $uq=  "update shows set show_seat=(show_seat-$seat)
    where show_id=$showid ";
    mysqli_query($con,$uq);
	$uq1=  "update seat set 
	seat_uid='".$_SESSION['client']['uid']."'
    where seat_id IN ($sno)";
    mysqli_query($con,$uq1);
    $mve=$seat.' Seats Booked ';
	$uq1="insert into activity (ac_nm,ac_time) values('$mve','$time')";
	mysqli_query($con,$uq1);
    $_SESSION['success']="Rezervimi u realizua me sukses";
	unset($_SESSION['seatno']);
	unset($_SESSION['show']);
	unset($_SESSION['screen']);
	unset($_SESSION['seats']);
	unset($_SESSION['amount']);
	unset($_SESSION['date']);
}
else
{
    $_SESSION['error']="Pagesa deshtoi";
}
?>
<body><table align='center'><tr><td><STRONG>Transaksioni po procedohet</STRONG></td></tr><tr><td><font color='blue'>Ju lutemi te prisni
<script>
    setTimeout(function(){ window.location="profile.php"; }, 5000);
</script>