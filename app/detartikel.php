<?php $this->layout('template') ?>
<div id="case" class="section wb" style="text-align: justify;">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <img style="width:100%; margin-bottom: 20px;" src="images/artikel/<?php echo $data['gambar'] ?>" alt="">
                <h3 style="margin-top:10px; font-weight: bold; font-size: 35px;"><?php echo $data['judul'] ?></h3>
                <small style="margin-right:10px"> <i class="fa fa-calendar"></i> <?php echo tgl2($data['tgl']) ?>
                </small>
                <small style="margin-right:10px"> <i class="fa fa-eye"></i> <?php echo $data['dilihat'] ?> </small>
                <div class="addthis_inline_share_toolbox"></div>
                <hr style="border-top: 5px solid #015786;margin-top:10px; margin-bottom: 20px;">
                <?php echo $data['deskripsi'] ?>
                <br>
                <hr>
                <br>
            </div>
            <div class="col-md-4">
                <div class="box-side">
                    <h3 style="font-weight: bold; ">Artikel Lainnya</h3>
                    <hr style="border-top: 5px solid #015786;margin-top:0px">
                    <?php foreach($artikel as $row) : ?>
                    <div class="row">
                        <div class="col-md-6 col-xs-5">
                            <a href="artikel-<?php echo $row['judul_seo']."-".$row['id_artikel'] ?>">
                                <img src="images/artikel/small/<?php echo $row['gambar'] ?>"
                                    style="height:100px;width:100%">
                            </a>
                        </div>
                        <div class="col-md-6 col-xs-7">
                            <a href="artikel-<?php echo $row['judul_seo']."-".$row['id_artikel'] ?>">
                                <h6 style="line-height:17px; font-weight: bold;"><?php echo $row['judul'] ?></h6>
                            </a>
                            <small style="margin-right:10px"> <i class="fa fa-calendar"></i>
                                <?php echo tgl2($row['tgl']) ?> </small>
                        </div>
                    </div>
                    <hr style="margin-bottom:10px">
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section lb text-center">
    <div class="section-title text-center">
        <h3>Spesialis Jasa Service AC, KULKAS, FREEZER, &amp; MESIN CUCI</h3>
    </div>
    <div style="color: #fff;font-weight: bold;margin-bottom: 19px;">HUBUNGI KAMI SEKARANG! KAMI ADALAH SOLUSINYA!
    </div>
    <p style="text-align:center"><span style="color:#000000"><a
                href="https://api.whatsapp.com/send?phone=<?=$deskrip[7]?>&text=<?=$textBtnWa?>" target="_blank"><img
                    alt="Chat via WhatsApp "
                    src="https://4.bp.blogspot.com/-IMrl0c2sN5w/XKMv5hHMiYI/AAAAAAAAC7Q/bsje9_6oYtQK_OeRqW9VKvjIlW7kWsZ0gCK4BGAYYCw/s1600/wa.gif"
                    style="height:70px; width:250px" /></a></span></p>

</section>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59dc9d30b368b392"></script>