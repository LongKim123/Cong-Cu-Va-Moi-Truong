<?php 
  include "server.php";
  $username= $_POST['Username'];
  $password= $_POST['Password'];
  $sodienthoai=$_POST['sodienthoai'];
  $email=$_POST['email'];
  $diachi=$_POST['diachi'];
  if(strlen($username)>0 && strlen($sodienthoai)>0 && strlen($email)>0 &&  strlen($password)>0 &&  strlen($diachi)>0 ){
  	$sql="INSERT INTO account(id, username, password, email,address,phone) VALUES (null,'$username','$password','$email','$diachi','$sodienthoai')";
  	$query=Mysqli_query($conn,$sql);
  		if($query){
  			echo"1";
  		}
  		else{
  			echo"thất bại";
  		}
  }
  else{
  	echo"Bạn hãy kiểm tra lại kết nôi dữ liệu";
  }
 ?>
 