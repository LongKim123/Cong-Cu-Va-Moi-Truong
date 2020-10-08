<?php 
include "server.php";
$idsp=$_POST['id'];
$query="DELETE FROM sanpham WHERE id ='$idsp'";
$data=mysqli_query($conn,$query);
	echo"1";

}
else{
	echo"loi";
}
 ?>

