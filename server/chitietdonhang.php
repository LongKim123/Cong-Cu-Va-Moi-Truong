<?php 
  include "server.php";
  
  $username= $_POST['Username'];
  $password= $_POST['Password'];
 
  	$sql="SELECT * FROM account WHERE  username='$username' and password='$password'";
  	$query=Mysqli_query($conn,$sql);
  	$row=mysqli_fetch_array($query);
  		if(mysqli_num_rows($query)==1){
  		$idaccount=$row['id_ac'];
        $sql1="INSERT INTO donhang(id, idaccount) VALUES (null,'$idaccount')";
        $query1=Mysqli_query($conn,$sql1);
        if($query1){
        	echo"dung";
        }
  			
  		}
  		else{
  			echo"thatbai";
  		}
  
 ?>






