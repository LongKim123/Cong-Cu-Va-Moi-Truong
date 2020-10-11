<?php 
  include "server.php";
  $tensanpham= $_POST['tensanpham'];
  $hinhanh= $_POST['hinhanh'];
  $giasanpham= $_POST['giasanpham'];
  $idsanpham= $_POST['idsanpham'];
  $motasanpham= $_POST['motasanpham'];
  if(strlen($tensanpham)>0 && strlen($hinhanh)>0 && strlen($giasanpham)>0&& strlen($giasanpham)>0 &&strlen($motasanpham)>0 ){
  	$sql="INSERT INTO sanpham(id_sp, tensanpham, hinhanh, giasanpham,idsanpham,motasanpham) VALUES (null,'$tensanpham','$hinhanh','$giasanpham',$idsanpham,'$motasanpham')";
  	$query=Mysqli_query($conn,$sql);
  		if($query){
  			echo"1";
  		}
  		else{
  			echo"thatbai";
  		}
  }
  else{
  	echo"Bạn hãy kiểm tra lại kết nôi dữ liệu";
  }
 ?>