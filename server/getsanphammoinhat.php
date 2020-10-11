<?php 
include "server.php";

$query="SELECT * FROM sanpham ";
$data=Mysqli_query($conn,$query);
$mangspmoinhat=array();
while ($row =mysqli_fetch_assoc($data)) {
			array_push($mangspmoinhat,new Sanphammoinhat(
				$row['id_sp'],
				$row['tensanpham'],
				$row['hinhanh'],
				$row['giasanpham'],
				$row['idsanpham'],
				$row['motasanpham']
				));
			# code...
		}
		echo json_encode($mangspmoinhat);
class Sanphammoinhat{
	function Sanphammoinhat($id_sp,$tensanpham,$hinhanh,$giasanpham,$idsanpham,$motasanpham){
		$this->id_sp=$id_sp;
		$this->tensanpham=$tensanpham;
		$this->hinhanh=$hinhanh;
		$this->giasanpham=$giasanpham;
		$this->idsanpham=$idsanpham;
		$this->motasanpham=$motasanpham;
	}
}
?>
