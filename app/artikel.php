<?php $this->layout('template') ?>
<section class="martop">
    <div class="container owl-wrap">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-2">TRAVEL BLOG </h2>
                <hr>
            </div>
        </div>
        <div class="row ">
            <?php foreach($blog as $r) : ?>
            <div class="col-md-4 recent-blog-area mb-4">
                <div class="single-recent-blog-post item">
                    <div class="thumb">
                        <a href="blog-<?=$r['judul_seo']."-".$r['id_artikel']?>">
                        <img class="img-fluid" src="images/artikel/small/<?=$r['gambar']?>" alt="<?=$r['judul']?>">
                        </a>
                    </div>
                    <div class="details">
                        <div class="tags">
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-calendar"></i> <?=tgl2($r['tgl'])?></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-eye"></i> <?=$r['dilihat']?> </a>
                                </li>
                            </ul>
                        </div>
                        <a href="blog-<?=$r['judul_seo']."-".$r['id_artikel']?>">
                            <h4 class="title"><?=$r['judul']?></h4>
                        </a>
                        <p>
                            <?=limit_desc($r['deskripsi'],150)?>... <a href="blog-<?=$r['judul_seo']."-".$r['id_artikel']?>">Selengkapnya</a>
                        </p>
                    </div>
                </div>
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