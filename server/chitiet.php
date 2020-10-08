       
<?php 
include "server.php";
$json=$_POST['json'];
$data=json_decode($json,true);
foreach($data as $value){
$sql2="SELECT * FROM donhang  ORDER BY id DESC LIMIT 1;";
          $query2=Mysqli_query($conn,$sql2);
            $row=mysqli_fetch_array($query2);
          $madonhang=$row['id'];
          $masanpham=$value['masanpham'];
          $tensanpham=$value['tensanpham'];
          $giasanpham=$value['giasanpham'];
          $soluongsanpham=$value['soluongsanpham'];
           $sql3="INSERT INTO chitietdonhang (id,iddonhang,masanpham,tensanpham,giasanpham,soluongsanpham) VALUES (null,'$madonhang','$masanpham','$tensanpham','$giasanpham','$soluongsanpham')";
          $query3=Mysqli_query($conn,$sql3);
        }
        if($query3){
          echo"2";
        }
        else{
          echo"0";
        }

          
 ?> 