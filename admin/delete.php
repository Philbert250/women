<?php
include './connection.php';

if (isset($_GET['delwoman'])){
	$del_id=$_GET['delwoman'];
	$del_quer=mysqli_query($conn,"DELETE FROM women WHERE id='$del_id' ");	 
    if ($del_quer) {
        
        echo "<script type='text/javascript'>alert(' Deleted! Successfully!')</script>";   
        header("location:womanall.php");
    }
    else {
        
		?>
        <script type="text/javascript">alert('Delete failed!')</script>
        <?php
        header("location:womanall.php");
    }
}
if (isset($_GET['delvacci'])){
	$del_id=$_GET['delvacci'];
	$del_quer=mysqli_query($conn,"DELETE FROM vaccine WHERE id='$del_id' ");	 
    if ($del_quer) {
        
        echo "<script type='text/javascript'>alert(' Deleted! Successfully!')</script>";   
        header("location:waccineall.php");
    }
    else {
        
		?>
        <script type="text/javascript">alert('Delete failed!')</script>
        <?php
        header("location:waccineall.php");
    }
}
if (isset($_GET['delagent'])){
	$del_id=$_GET['delagent'];
	$del_quer=mysqli_query($conn,"DELETE FROM adversor WHERE id='$del_id' ");	 
    if ($del_quer) {
        
        echo "<script type='text/javascript'>alert(' Deleted! Successfully!')</script>";   
        header("location:agentall.php");
    }
    else {
        
		?>
        <script type="text/javascript">alert('Delete failed!')</script>
        <?php
        header("location:agentall.php");
    }
}
?>