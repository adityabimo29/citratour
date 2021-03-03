<?php $this->layout('template') ?>
<section class="banner-area relative martip">
    <div class="overlay overlay-bg"></div>
    <ul id="slider-home">
        <?php foreach($slider as $r) : ?>
        <li>
            <a href="#slide1"><img class="img-slider" src="images/slider/<?=$r['gambar']?>"></a>
        </li>
        <?php endforeach ?>
    </ul>
</section>

<section class="popular-destination-area section-gap">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-30 col-lg-8">
                <div class="title text-center">
                    <h1 class="mb-10">PAKET RENTAL MOBIL</h1>
                    <p>Jaminan rasa aman dan nyaman kami menyediakan unit terbaru dengan kondisi armada prima, bersih
                        terawat luar dalam.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php foreach($car as $c) : ?>
            <?php  $desc = $db->connection("SELECT * FROM daily_description WHERE id_daily_car = $c[id_daily_car] LIMIT 1")->fetchAll(); ?>
            <div class="col-lg-3">
                <div class="card">
                    <img class="card-img-top" src="images/daily_car/<?=$c['gambar']?>" alt="<?=$c['judul']?>">
                    <div class="card-header text-center bg-grey text-black"><?=$c['judul']?></div>
                    <ul class="list-group list-group-flush text-center">
                        <?php foreach($desc as $d) : ?>
                        <li class="list-group-item"><?=$d['deskripsi']?></li>
                        <?php endforeach ?>
                    </ul>
                    <div class="card-body d-flex justify-content-center">
                        <a href="#" class="btn btn-warning">Booking Now</a>
                    </div>
                </div>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<section class="popular-destination-area section-gap">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-30 col-lg-8">
                <div class="title text-center">
                    <h1 class="mb-10">PAKET TOUR JOGJA</h1>
                    <p>Kami sangat mengedepankan kualitas pelayanan, fasilitas, dan kenyamanan dari paket tour Jogja
                        kami untuk anda selama berwisata di Yogyakarta. </p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php foreach($tour as $r) : ?>
            <?php $kat = $db->connection("SELECT judul FROM tour_kategori WHERE id_tour_kategori = $r[id_tour_kategori] ")->fetchColumn(); ?>
            <div class="col-md-4 mb-4">
                <div class="card p-2" style="box-shadow: 2px 0px 5px 0px rgba(0,0,0,0.75);">
                    <div class="package-item package-fadein">
                        <div class="square">
                            <div class="square-content">
                                <div class="img-wrap">
                                    <figure class="effect-zoom">
                                        <div class="package-price">
                                            <small>Mulai dari</small>
                                            <span>Rp <?=$r['harga_mulai']?></span>
                                        </div>
                                        <a href="#"><img src="images/tour/small/<?=$r['gambar']?>"
                                                class="landscape grow"></a>
                                        <figcaption>
                                            <a href="#" class="package-title"><?=$r['destinasi']?></a>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="package-duration"><?php //echo $kat?></p>
                                                    <div class="package-star text-right">
                                                        <ul class="package-category">
                                                            <li><a class="badge"
                                                                    href="kategori-one-day-trip-5"><?=$r['judul']?></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <a href="#" class="btn btn-info btn-block">Pesan Sekarang !</a>
                        </div>
                    </div>
                </div><!-- Card -->
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<section class="popular-destination-area section-gap bg-abu">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-30 col-lg-8">
                <div class="title text-center">
                    <h1 class="mb-10">MENGAPA MEMILIH KAMI ?</h1>
                    <p>Kami sangat mengedepankan kualitas pelayanan, fasilitas, dan kenyamanan dari paket tour Jogja
                        kami untuk anda selama berwisata di Yogyakarta. </p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php foreach($keunggulan as $r) : ?>
            <div class="col-md-3 mb-4 text-center">
                <div class="d-flex justify-content-center mb-3">
                    <div class="box-icon">
                        <i class="<?=$r['gambar']?>"></i>
                    </div>
                </div>

                <h4 class="mb-2"><?=$r['judul']?></h4>
                <p><?=$r['deskripsi']?></p>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<section class="popular-destination-area section-gap">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-30 col-lg-8">
                <div class="title text-center">
                    <h1 class="mb-10">CLIENT KAMI</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 featured-img d-flex justify-content-center flex-wrap">
                <?php foreach($clients as $r) : ?>
                    <img src="images/gallery/<?=$r['gambar']?>" alt="">
                <?php endforeach ?>
            </div>
        </div>
    </div>
</section>