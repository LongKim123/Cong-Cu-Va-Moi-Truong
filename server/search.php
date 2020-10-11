<?php 
include "server.php";

$tensanpham=$_POST['tensanpham'];
$spage=20;

$mangsanpham = array();
$query="SELECT * FROM sanpham WHERE tensanpham Like'%$tensanpham%'";
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
	# code...


 ?>

