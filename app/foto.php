<?php $this->layout('template') ?>
<section class="bg-abu martop">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Galeri</h2>
                <hr>
            </div>
        </div>
        <div class="row album-photos">
            <?php foreach($foto as $r) : ?>
            <div class="col-md-3 col-6 mb-4">
                <figure class="item-album">
                    <div class="thumb-icon">
                        <i class="fa fa-picture-o"></i>
                    </div>
                    <figcaption class="album-content">
                        <span class="title-album"><?=$r['judul']?></span>
                        <span class="amount-album"><?=$r['jml']?> Photos</span>
                        <a href="foto-<?=$r['judul_seo']."-".$r['id_foto']?>" class="btn btn-danger">Selengkapnya</a>
                    </figcaption>
                    <figure class="thumbnail-img"
                        style="background-image: url('images/foto/small/<?=$r['gambar']?>'); background-size: cover; background-position: center center;">
                        <picture>
                            <source media="(min-width: 651px)" srcset="images/foto/<?=$r['gambar']?>">
                            <source media="(max-width: 650px)" srcset="images/foto/small/<?=$r['gambar']?>">
                            <img class="w-100" src="images/foto/<?=$r['gambar']?>" style="display: none;">
                        </picture>
                    </figure>
                </figure>
            </div>
            <?php endforeach ?>
        </div>
        <div class="row">
            <?php if(  $pagination['jmldata'] > $pagination['batas'] ) : ?>
            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top:20px">
                <div class="wp-pagenavi">
                    <center><?= $pagination['linkHalaman'] ?></center>
                </div>
            </div>
            <?php endif ?>
        </div>
    </div>
</section>