<?php

try{
    $db=new PDO("mysql:host=localhost;dbname=api_db;charset=utf8","root","");

}catch(Exception $e)
{
    print $e->getMessage();
}



?>