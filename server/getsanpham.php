<?php 
include "server.php";
$page=$_GET['page'];
$idsp=$_POST['idsanpham'];
$spage=20;
$limit=($page-1)*$spage;
$mangsanpham = array();
$query="SELECT * FROM sanpham WHERE idsanpham = $idsp LIMIT $limit,$spage";
$data=Mysqli_query($conn,$query);
while ($row =mysqli_fetch_assoc($data)) {
			array_push($mangsanpham,new Sanpham(
				$row['id_sp'],
				$row['tensanpham'],
				$row['hinhanh'],
				$row['giasanpham'],
				$row['idsanpham'],
				$row['motasanpham']
				));
			# code...
		}
		echo json_encode($mangsanpham);
class Sanpham{
	function Sanpham($id_sp,$tensanpham,$hinhanh,$giasanpham,$idsanpham,$motasanpham){
		$this->id_sp=$id_sp;
		$this->tensanpham=$tensanpham;
		$this->hinhanh=$hinhanh;
		$this->giasanpham=$giasanpham;
		$this->idsanpham=$idsanpham;
		$this->motasanpham=$motasanpham;
	}
}
 ?>
