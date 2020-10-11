<?php 
  include "server.php";
  $id=$_POST['id'];
  $tensanpham= $_POST['tensanpham'];
  $hinhanh= $_POST['hinhanh'];
  $giasanpham= $_POST['giasanpham'];
  $idsanpham= $_POST['idsanpham'];
  $motasanpham=$_POST['motasanpham'];
 
  	$sql="UPDATE sanpham SET tensanpham='$tensanpham', hinhanh='$hinhanh', giasanpham='$giasanpham',idsanpham='$idsanpham',motasanpham='$motasanpham' WHERE id_sp='$id'";
  	$query=Mysqli_query($conn,$sql);
  		if($query){
  			echo"1";
  		}
  		else{
  			echo"thatbai";
  		}
  
 
 ?>