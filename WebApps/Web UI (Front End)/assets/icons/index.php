<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="description" content="Wings Restaurant|Wingstop Indonesia| Chicken Wings from the Wings Experts|Wingstop Order">
    <meta name="keywords" content="Chicken,Wings, Restaurant,Chicken Wings, Wingstop, Wingstop Indonesia,Wingstop Order">
    <meta name="author" content="Wingstop">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <!-- <meta http-equiv="Content-Security-Policy" content="block-all-mixed-content"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wingstop Indonesia</title>
    <link rel="shortcut icon" href="<?php echo base_url()?>assets/img/favico.ico">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php echo base_url()?>assets/css/style.css">
    <link rel="stylesheet" href="<?php echo base_url()?>assets/css/slider.css">
    <link rel="stylesheet" href="<?php echo base_url()?>assets/css/slick.css">
    <link href='<?php echo base_url();?>assets/css/jquery.autocomplete.css' rel='stylesheet' />
    <script src="https://kit.fontawesome.com/2cb7ae0c10.js" crossorigin="anonymous"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-WFH11D4D8V"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
// G-WFH11D4D8V
    gtag('config', 'G-WFH11D4D8V');
    </script>
    <style type="text/css">
       .css-11cewt9 {
            box-sizing: border-box;
            margin: 6px 0px 0px;
            min-width: 0px;
            visibility: hidden;
        }
    </style>
     <script
    src="https://cdn2.woxo.tech/a.js#6008eb8144647b0015c066bf"
    async data-usrc>
    </script>
  </head>
  <body style="background-image: url('<?php echo base_url()?>assets/img/bgproduct.jpeg');
 background-size: contain;">
  <div class="main-wrapper">
  <header class="topbar">
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-left">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="brand-container">
                    <a href="<?php echo base_url()?>"><img src="<?php echo base_url()?>/assets/img/logo.svg" class="mr-3"/></a>
                    </div>
                    <!-- <a href="#" class="navbar-brand" href="#">Navbar</a> -->
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <a href="<?php echo base_url()?>main/carryout" class="nav-link btn btn-success btn-takeandgo" style="margin-left:25px;border-radius:25px;padding:10px;" >
                                <span class="sublitle" style="font-size: 14px;color:white;">ORDER NOW</span>
                        </a>
                        <li class="nav-item">
                        <a  class="nav-link active" href="<?php echo base_url()?>main/menu">MENU</a>
                        </li>
                        <li class="nav-item">
                        <a  class="nav-link active" href="<?php echo base_url()?>main/flavours">FLAVOR</a>
                        </li>
                        <li class="nav-item">
                        <a href="<?php echo base_url()?>main/offering" class="nav-link active" >OFFER</a>
                        </li>
                        <li class="nav-item">
                        <a  class="nav-link active" href="<?php echo base_url()?>main/voucher">VOUCHER</a>
                        </li>
                        <li class="nav-item">
                        <a  class="nav-link active" href="<?php echo base_url()?>main/careers">CAREER</a>
                        </li>
                        <?php if($this->session->userdata('islogin')=="true"){ ?>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="<?php echo base_url()?>services">COMPLAIN</a>
                                    </li>
                                <?php }  ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" style="color:rgb(0 0 0 / 99%);" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                REWARD <i class='fas fa-award' style="color: #036A38;" ></i>
                            </a>
                            <ul class="dropdown-menu" style="background-color: #036A38;" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="<?php echo base_url()?>main/rewards">POINT</a></li>
                                <li><a class="dropdown-item" href="<?php echo base_url()?>main/coupon">COUPON</a></li>
                            </ul>
                        </li>
                        <?php if($this->session->userdata('islogin')=="true"){ ?>
                                <li class="nav-item">
                                    <span class="mr-2">
                                        <a class="nav-link active" href="<?php echo base_url()?>main/profile">
                                        <i class="fas fa-user" style="color:black;font-size: 25px;"></i></a>
                                    </span>
                                </li>
                                <?php }else{ ?>
                                <li class="nav-item">
                                    <a class="nav-link active" href="<?php echo base_url()?>main/login">LOGIN</a>
                                </li>
                                <?php } ?>

                           <li class="nav-item">
                            <a  class="nav-link active" href="<?php echo base_url()?>main/locations">
                            <img src="<?php echo base_url()?>assets/img/menu-icon-stores.png" style="height: 25px;width: auto;">STORE</a>
                            </li>
                    </ul>
                </div>
            </nav>
    </header>

    <div class="container topcontent">
      <div class="slider">
                    <button class="slider-btn prev-btn2"><img src="assets/icons/pre.svg" alt=""></button>
                    <button class="slider-btn next-btn2"><img src="assets/icons/next.svg" alt=""></button>
                    <div class="food-slidertop">
                    <?php foreach ($promoproduct as $row) { ?>
                        <div class="food-card magic-shadow-sm">
                            <div class="product-image flex items-center justify-center">
                            <img class="img-fluid" src="https://portal.mahadya.co.id/assetproduct/<?php echo $row->itempicture_; ?>" width="100%">
                            <div class="popularfood">
                            <!-- <h3>Promo</h3> -->
                            <div style="height:6rem">
                            <b><?php echo $row->Promotionname_; ?></b>
                            <p><?php echo $row->itemlongdescr_; ?></p>
                            </div>
                            <a href="<?php echo base_url()?>main/carryout" class="btn btn-success d-flex"  style="justify-content: space-between;" >
                                <h6>START ORDER</h6><i class='fa fa-arrow-right' style='color:white;font-size:20px;'>
                            </i></a>
                            </div>
                            </div>
                        </div>
                    <?php } ?>
                    </div>
        </div>
    </div>

<div class="col-md-12 content">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/IBBWd4ue9B8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<div class="container content">
    <div class="slider">
            <button class="slider-btn prev-btn"><img src="assets/icons/pre.svg" alt=""></button>
            <button class="slider-btn next-btn"><img src="assets/icons/next.svg" alt=""></button>
            <div class="food-slider">

            <?php foreach ($recomendedproduct as $row) { ?>
                <div class="food-card magic-shadow-sm">
                    <div class="product-image flex items-center justify-center">
                    <img class="img-fluid" src="https://portal.mahadya.co.id/assetproduct/<?php echo $row->itempicture_; ?>">
                    <div class="popularfood">
                    <h3>Recommended</h3>
                    <div style="height:10rem">
                    <b><?php echo $row->itemshortdescr_; ?></b>
                    <p><?php echo $row->itemlongdescr_; ?></p>
                    </div>
                    <a href="<?php echo base_url()?>main/carryout" class="btn btn-success d-flex"  style="justify-content: space-between;" >
                        <h6>START ORDER</h6><i class='fa fa-arrow-right' style='color:white;font-size:20px;'>
                    </i></a>
                    </div>
                    </div>
                </div>
            <?php } ?>

            </div>
    </div>
</div>
<br>
<div class="content-map" >
     <div class="col-md-6 col-xs-6 col-sm-6" style="margin: 0 auto;text-align: center;">
     <!-- <i class="fa fa-map-marker-alt" aria-hidden="true" style="font-size: 40px;"></i>
     <br>
     <h3>FIND A WINGSTOP</h3>
            <div class="search" style="width: 90%;margin-left: 0;">
				<form class="search-form" action="<?php echo base_url();?>main/carryout" method="POST" accept-charset="utf-8">
					<input type="text" name="hiddenstoredesc" placeholder="find stores" class="autocomplete">
                    <input type="hidden" name="storeidauto" id="storeidauto">
                    <input type="hidden" name="storedesc" id="storedesc">
					<input type="submit" value="Search" id="storeidautobutton" onclick="searstore(this.value)">
				</form>
			</div> -->
     </div>
</div>


<div class="container content">
    <div data-mc-src="994dd871-09a9-4c08-82de-c7df235c2e2d#instagram"></div>
</div>

<div class="navbarbottom">
<a href="<?php echo base_url()?>main/carryout" class="btn btn-success d-flex btn-takeandgo" >
                        <div style="align-items: center;padding-top:8px;">
                        <!-- <img src="<?php echo base_url()?>assets/img/chicken.png" width="50px" alt=""> -->
                            <i class='fa fa-cutlery' style='color:white;font-size:20px;'></i>
                        </div>
                        <div style="align-items: center;padding-top:8px;">
                            <!-- <span class="litle">TAKE</span> -->
                            <span class="sublitle" style="margin-left:15px;">TAKE AWAY</span>
                        </div>
                        </a>
                        <div class="col-md-2 col-sm-2 col-xs-2" style="width:10px;background-color: #f9f9f9;">
                        </div>
                        <a href="<?php echo base_url()?>main/carryout" class="btn btn-success d-flex btn-takeandgo" >
                        <div style="align-items: center;padding-top:8px;">
                            <i class='fa fa-motorcycle' style='color:white;font-size:20px;'></i>
                        </div>
                        <div style="align-items: center;padding-top:8px;">
                            <!-- <span class="litle">ORDER</span> -->
                            <span class="sublitle" style="margin-left:15px;">DELIVERY &nbsp;</span>
                        </div>
                        </a>
</div>

<footer>
    <div class="sosmedarea">
            <hr>
            <a href="https://id-id.facebook.com/WingstopID/">
                <img src="<?php echo base_url()?>assets/icons/youtube.png" alt="">
                <span>Facebook</span>
            </a>
            &nbsp;
            <a href="https://id-id.facebook.com/WingstopID/">
                <img src="<?php echo base_url()?>assets/icons/facebook.svg" alt="">
                <span>Facebook</span>
            </a>
            &nbsp;
            <a href="https://twitter.com/WingstopID">
                <img src="<?php echo base_url()?>assets/icons/twitter.svg" alt="">
                <span>Twitter</span>
            </a>
            &nbsp;
            <a href="https://www.instagram.com/wingstopid/?hl=id">
                <img src="<?php echo base_url()?>assets/icons/instagram.svg" alt="">
                <span>Instagram</span>
            </a>
            <hr>
    </div>
</footer>
<footer class="copyright">
    <div>
       PT. Wiryamanta Sadina
    </div>
    <div>
       Phone : (021) 2956 9963 |  Email : callcenter@wingstop.co.id
    </div>
    <div>
        Copyright © 2021 .All rights reserved by <a href="order.wingstop.co.id">Wingstop</a>.
    </div>
</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src='<?php echo base_url()?>assets/js/slick.min.js'></script>
    <script src='<?php echo base_url()?>assets/js/app.js'></script>
    <script src='<?php echo base_url()?>assets/js/app2.js'></script>
    <script src='<?php echo base_url()?>assets/js/carousel.js'></script>
    <script src='<?php echo base_url()?>assets/js/jquery.autocomplete.js'></script>
    <script type="text/javascript">
      // Auto Complate
      var site = "<?php echo site_url();?>";
        $(function(){
            $('.autocomplete').autocomplete({
                serviceUrl: site+'main/search',
                onSelect: function (suggestion) {
                    $('#storeidauto').val(suggestion.storeid_);
                    $('#storedesc').val(suggestion.storedesc);
                    // $('#storeidautobutton').val(suggestion.storeid_);
                }
            });
        });

        function searstore(){
                var storeid_ = document.getElementById('storeidauto').value;
                collectlinksearch="<?php echo base_url("/main/carryout");?>/";
                collectlinksearch +=storeid_;
                window.location.replace(collectlinksearch);
        }
    </script>

  </body>
</html>
