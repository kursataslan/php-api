<html>
    <head>
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>        
<body>


<div class="alert"></div>
<div class="container">
    <div class="row">
        <h3>Ürün Ekleme</h3>
<div>
    <label for="">Ürün Adı</label>
    <input type="text" name="name">
    </div>
    <div>
    <label for="">Ürün Açıklaması</label>
    <input type="text" name="desc">
    </div>
    <div>
    <label for="">Ürün Fiyatı</label>
    <input type="text" name="price">
    </div>
    <div>
    <label for="">Ürün Kategori</label>
    <input type="text" name="category">
    </div>
    <div class="radio">
    <label for="">Ürün İndirim</label>
    <input type="radio" name="discount" value="var">
    <label for="">Var</label>
    <input type="radio" name="discount" value="yok">
    <label for="">Yok</label>

    </div>
    <div>
    <label for="">Ürün Satış Durumu</label>
    <input type="radio" name="statu" value="var">
    <label for="">Var</label>
    <input type="radio" name="statu" value="yok">
    <label for="">Yok</label>
    </div>
    </div>
    <button type="button" class="veriEkle" id="veriEkle">Ekle</button>
</div>





<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
    
    $(document).ready(function()
    {
     
            $("#veriEkle").click(function()
            {
                var discount=document.getElementsByName("discount");
                if(discount[0].checked)
                discount="var";
                else
                discount="yok";

                var statu=document.getElementsByName("statu");
                if(statu[0].checked)
                statu="var";
                else
                statu="yok";

                var name= $("input[name=name]").val();
                var description= $("input[name=desc]").val();
                var price= $("input[name=price]").val();
                var category= $("input[name=category]").val();
             

                $.ajax({
                    url:"ekle.php",
                    type:"POST",
                    data:{
                        'name':name,
                        'description':description,
                        'price':price,
                        'category':category,
                        'discount':discount,
                        'statu':statu
                    },
                    success:function(result){
                        $(".alert").show();
                        $(".alert").html(result);
                        
                        setInterval(function(){
                            window.location.reload(1);
                        }, 2000);

                    }});
            });
    });

    </script>