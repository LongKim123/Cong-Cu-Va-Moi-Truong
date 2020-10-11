<?php 
//xem đơn hàng của của các khách hàng
SELECT donhang.id ,account.username,account.phone,donhang.NgayDH,SUM(chitietdonhang.giasanpham) FROM donhang,account,chitietdonhang WHERE donhang.id=chitietdonhang.iddonhang and account.id=donhang.idaccount  GROUP BY  chitietdonhang.iddonhang
//xem chi tiết đơn hàng đó 
SELECT donhang.id ,account.username,account.phone,donhang.NgayDH,chitietdonhang.giasanpham,chitietdonhang.tensanpham FROM donhang,account,chitietdonhang WHERE donhang.id=chitietdonhang.iddonhang and account.id=donhang.idaccount and account.id=6
 ?>
