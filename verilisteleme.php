<?php
require_once 'database.php';

$stmt = $db->query("SELECT * FROM products");


  echo '

  <table border="0" cellpadding="5" cellspacing="2" width="1000">

	<tr style="background-color:#ff0000; font-family:Tahoma; color:#ffffff;"><td>İd</td><td>Ürün Adı</td><td>Açıklama</td><td>Fiyat</td><td>Kategori</td><td>İndirim</td><td>Satış Durum</td></tr>

  ';

    while($product = $stmt->fetch())

  {

    $id=$product['id'];
    $ad = $product['name'];
  	$description = $product['description'];
    $price = $product['price'];
    $kategori=$product['category_id'];
    $indirim=$product['discount'];
    $statü=$product['sales_status'];
	

	echo '

	</td><td>'.$id.'</td><td>'.$ad.'</td><td>'.$description.'</td><td>'.$price.'</td><td>'.$kategori.'</td><td>'.$indirim.'</td><td>'.$statü.'</td></tr>

	';

  }

  echo '</table>';

  ?>