<?php $this->layout('template') ?>

<!-- About section  -->
<section class="bg-abu martop">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2><?=$data['judul']?></h2>
                <hr>
            </div>
        </div>
        <div class="row album-photos popup-foto">
            <?php foreach($gallery as $r) : ?>
            <div class="col-md-3 col-6 mb-4">
                <div class="ludogorets">
                    <a href="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                        <picture>
                            <source media="(min-width: 651px)"
                                srcset="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                            <source media="(max-width: 650px)"
                                srcset="images/gallery_foto/small/<?=$imgname1."-".$r['gambar']?>">
                            <img class="w-100" src="images/gallery_foto/<?=$imgname1."-".$r['gambar']?>">
                        </picture>
                    </a>
                </div>
            </div>
            <?php endforeach ?>
        </div>
    </div>
</section>