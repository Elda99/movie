<?php
session_start();
date_default_timezone_set('Asia/Kolkata');
error_reporting(0);

?>
<!DOCTYPE html>
<html>
<head>
<title>Rezervimi i filmave online</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

</script>
</head>
<?php include("include/header.php"); 
$sq="select * from movies";
$res=mysqli_query($con,$sq);
?>
	
<div class="now-showing-movies">
		<h3 class="m-head">Filma ne dispozicion</h3>
		<?php
											while($nm=mysqli_fetch_assoc($res))
											{
												
												?>
<div class="col-md-3 movie-preview">
			<a href="buynow.php?id=<?php echo$nm['m_id']; ?>" class="mask">
				<img src="upload/<?php echo $nm['m_banner'];?>"  class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="buynow.php?id=<?php echo$nm['m_id']; ?>"><?php echo$nm['m_nm']; ?></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><?php echo$nm['m_date']; ?></p>
						<a href="buynow.php?id=<?php echo$nm['m_id']; ?>">Rezervo</a>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<?php
		}
		?>
		 <div class="clearfix"></div>
	</div>
		<div class="clearfix"></div>
		</div>
 <?php include ("include/footer.php"); ?>