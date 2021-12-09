# php-api

## Projects
PHP<br>
Postman<br>
OS: win32 x64


## Function
microservice architecture with php and postman

## Postman requests

`http://localhost/api/category/read.php`

`http://localhost/api/product/search.php?s=phone`

`http://localhost/api/product/delete.php`<br>
"raw":<br>
{<br>
    "id":"13"<br>
}

`http://localhost/api/product/read_one.php?id=12`

`http://localhost/api/product/read.php`

`http://localhost/api/product/create.php`<br>
"raw":
<br>{<br>
    "name" : "Iphone",<br>
    "price" : "899",<br>
    "description" : "The best phone",<br>
    "category_id" : 2,<br>
    "discount":"no",<br>
    "sales_status":"yes"<br>
}
