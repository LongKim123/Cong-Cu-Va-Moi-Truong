<?php 
include "server.php";
$sql2="SELECT * FROM donhang  ORDER BY id DESC LIMIT 1;";
          $query2=Mysqli_query($conn,$sql2);
          	$row=mysqli_fetch_array($query2);
          if(mysqli_num_rows($query2)==1){
	          if($row['id']=='70')
	          {
	          	echo"dungr";

	          }
	          else{
	          	echo"sai";
	          }
	      }
	      else{
  			echo"thatbai";
  		}
           ?>