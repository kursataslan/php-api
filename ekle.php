<?php

require_once 'database.php';
if($_POST){
    $name=$_POST['name'];
    $description=$_POST['description'];
    $price=$_POST['price'];
    $category=$_POST['category'];
    $discount=$_POST['discount'];
    $statu=$_POST['statu'];

        if($name!="" and $description!="" and $price!="" and $category!="" and $discount!="" and $statu!="")
        {
            $sql = "INSERT INTO products (name, description, price,category_id,discount,sales_status) VALUES (?,?,?,?,?,?)"; 
            $stmt=$db->prepare($sql);
            $stmt->execute([$name,$description,$price,$category,$discount,$statu]);
        if($stmt){
            echo 'Ürün Eklendi';
        }else{
            echo 'Hata..';
        }    
}else{
    echo 'Boş bırakmayın';
}
}
?>