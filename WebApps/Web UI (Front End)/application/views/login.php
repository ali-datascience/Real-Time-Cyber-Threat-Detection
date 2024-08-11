<?php include("header.php");?>
   <div class="row col-md-12 account"  style="padding-left: 7%;padding-right: 6%;padding-top:8rem">
    <div class="clear-backend" id="cartaccount" style="height:auto;background: transparent;">
                <!-- OFFERING -->
                <div class="card" style="width: 100%;margin-top: 5px;border:0;box-shadow: 0px 0px 10px 1px rgb(0 0 0 / 10%);border-radius: 15px;">
                        <div class="card-body" style="border-radius:15px;">
                            <div class="row" style="padding:10px;text-align:center;">
                                <h3 class="card-title" style="color:#0d6937;font-weight: bolder;">WELCOME!</h3>
                                <p class="card-title" style="color: #686c6f;">Masukan user dan password untuk login</p>
                                <p class="card-title" style="color: #686c6f;">Masukan kode SQLi Injection pada user/password untuk testing</p>
                                <h2 class="card-title" style="color:red;"><?=$error?></h2>
                                <br><br><br>
                                <form action="#" method="POST">
                                    <input type="text" class="form-control" name="username" placeholder="Email" autocomplete="off">
                                    <div style="height: 5px;"></div>
                                    <input type="password" class="form-control" name="password" placeholder="Password" autocomplete="off">
                                    <br>
                                    <button type="submit" class="btn btn-success form-control" style="color:white;width: 100%;padding: 10px;">LOGIN</button>
                                </form>
                                <br><br><br>
                                <br>
                                <br>
                                
                            </div>
                        </div>
                </div>
        </div>
    </div>
<br>

<?php include("foother.php");?>
  </body>
</html>
