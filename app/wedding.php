<?php $this->layout('template') ?>
<section class="banner-area relative martip">
    <div class="overlay overlay-bg"></div>
    <ul id="slider-home">
        <li style="max-height: 420px;overflow:hidden">
            <a href="#slide1"><img style="" src="images/<?=$header['gambar']?>"></a>
        </li>
    </ul>
</section>
<section>
    <div class="container my-4">
        <div class="row">
            <div class="col-md-12">
                <?=$pertama['deskripsi']?>
            </div>
        </div>
    </div>
</section>
<section class="bg-abu py-4">
    <div class="container my-3">
        <div class="row">
            <div class="col-md-12 text-center mb-4">
                <h2>GET YOUR WEDDING CAR</h2>
            </div>
            <?php foreach($cars as $k) : ?>
            <?php  $desc = $db->connection("SELECT * FROM daily_description WHERE id_daily_car = $k[id_daily_car] ")->fetchAll(); ?>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img class="card-img-top" src="images/daily_car/<?=$k['gambar']?>" alt="<?=$k['judul']?>">
                    <div class="card-header text-center  text-black"><?=$k['judul']?></div>
                    <ul class="list-group list-group-flush text-center">
                        <?php foreach($desc as $d) : ?>
                        <li class="list-group-item"><?=$d['deskripsi']?></li>
                        <?php endforeach ?>
                    </ul>
                </div>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-12">
                <div class="box-alert d-flex ">
                    <p class="my-2">Booking Wedding Car kami , Dengan langsung klik tombol ini</p>
                    <a href="" class="btn btn-success ml-auto"> <i class="fa fa-whatsapp"></i> Hubungi Whatsapp</a>
                </div>
            </div>
        </div>
    </div>
    <img src="images/<?=$penutup['gambar']?>" class="w-100" alt="">
    <div class="container my-4">
        <div class="row">
            <div class="col-md-12">
                <?=$penutup['deskripsi']?>
            </div>
        </div>
    </div>
</section>