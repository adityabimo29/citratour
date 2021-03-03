<!DOCTYPE html>
<html lang="id" class="no-js">

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">

    <?=$this->insert('seo')?>
    <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
    <!--<link rel="manifest" href="images/site.webmanifest.json">-->
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/linearicons.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slippry/1.4.0/slippry.min.css"
        integrity="sha512-T+a5Aa01HOiiskCpZYtRZu69nfOIyhjrDn0PRClEQTDKZ16pcdvaU7KD1m0NrQIKn6LqUzY8tgLsfOVGiJs2Rg=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/bottle.css?v<?=rand(0,200)?>">
    <!-- <link rel="stylesheet" href="assets/css/jquery.steps.css"> -->
</head>

<body>

    <?php if($navbar == 'general') : ?>
    <?=$this->insert('menu')?>
    <?php else : ?>
    <?=$this->insert('menuHome')?>
    <?php endif; ?>


    <?= $this->section('content')?>

    <footer class="footer-area section-gap pb-0">
        <div class="container pb-3">
            <div class="row">
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>HEAD OFFICE</h6>
                        <p>
                            <?=$deskrip[22]?>
                        </p>
                    </div>
                </div>
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>CALL CENTER</h6>
                        <?=$deskrip[80]?>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>CITRA TOUR</h6>
                        <div class="row">
                            <div class="col">
                                <ul>
                                    <li><a href="<?=$base_url?>">Home</a></li>
                                    <li><a href="blog">Blog</a></li>
                                    <li><a href="kontak">Kontak</a></li>
                                    <li><a href="tour-custom">Tour Custom</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget mail-chimp">
                        <h6 class="mb-20">PAYMENT PARTNER</h6>
                        <div>
                            <?=$deskrip[83]?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=" d-flex justify-content-between align-items-center" style="background-color: #333333;">
            <div class="container">
                <div class="row">
                    <p class="col-lg-8 col-sm-12 footer-text m-0 align-self-center text-white">
                        2021 © Copyright - Citra Tour - All Right Reserved.
                    </p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="assets/js/jquery-2.2.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script> -->
    <script src="assets/js/jquery-ui.js"></script>
    <script src="assets/js/easing.min.js"></script>
    <script src="assets/js/hoverIntent.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <!-- <script src="assets/js/jquery.ajaxchimp.min.js"></script> -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- <script src="assets/js/mail-script.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slippry/1.4.0/slippry.min.js"
        integrity="sha512-AuA2kbI9ByrbsuXrrdqY8qlayz6cFSwLl7qvLBQSMJIWJ5YFjBRKrtVWD3NKWZHOcxqpnqYJtcLaZARXxR+Kjg=="
        crossorigin="anonymous"></script>
    <script src="assets/js/main.js?<?=date('i:s')?>"></script>
    <script src="assets/js/bootstrap.step.js?v<?=date('i:s')?>"></script>
    <script>
    $(document).ready(function() {
        $('#slider-home').slippry({
            pager: false
        });
        $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,

            fixedContentPos: false
        });

        $('.popup-foto').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image'
        });
    });
    </script>
</body>

</html>