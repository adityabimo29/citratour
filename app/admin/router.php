<?php
/*
 * ------------------------------------------------------
 *  Router Admin
 * ------------------------------------------------------
 */

$path = APPPATH . ADMPATH . 'modul/';

$router->get('/auth/login', function () use ($login) {
    echo $login->render('login');
});

$router->post('/auth/login', function () use ($login, $jmw, $db) {
    $username = $_POST['username'];
    $pass = md5($_POST['password']);
    $login = $db->read("admin", "*", "username='$username' AND password='$pass' AND status='Aktif'")->fetch();
    $ketemu = $db->read("admin", "COUNT(*)", "username='$username' AND password='$pass' AND status='Aktif'")->fetchColumn();
    $r = $login;
    if ($ketemu > 0) {
        $_SESSION['nama_admin']         = $r['username'];
        $_SESSION['email_admin']        = $r['email'];
        $_SESSION['namalengkapadmin']   = $r['nama_lengkap'];
        $_SESSION['passadmin']          = $r['password'];
        $_SESSION['leveladmin']         = $r['level'];
        $_SESSION['id_admin']           = $r['id'];
        $_SESSION['idsession']          = $r['id_session'];
        $_SESSION['halaman']            = 'Home';
        $_SESSION['IsAuthorized']       = true;
        header('location: ../admin/dashboard');
    } else {
        header('location: ../auth/login');
    }
});

/** Cek Keamanan **/
$router->before('GET|POST', '/admin/.*', function () {
    if (!isset($_SESSION['nama_admin'])) {
            $getWholeUrl = "http://" . $_SERVER['HTTP_HOST'] . "" . $_SERVER['REQUEST_URI'] . "";
            if (substr($getWholeUrl, -1) == '/') {
                header('location: ../auth/login');
            } else {
                header('location: ../auth/login');
            }
        exit();
    } 
});



/** Router dalam folder Admin **/
$router->mount('/admin', function () use ($router, $db, $jmw, $path,$imgname1) {

    /** Security Lvl 2 **/
    $router->get('/', function () {
        if (!isset($_SESSION['nama_admin'])) {
            header('location: auth/login');
            exit();
        } else {
            $getWholeUrl = "http://" . $_SERVER['HTTP_HOST'] . "" . $_SERVER['REQUEST_URI'] . "";
            if (substr($getWholeUrl, -1) == '/') {
                header('location: dashboard');
            } else {
                header('location: ' . ADMPATH . 'dashboard');
            }

        }

    });

    /** Logout **/
    $router->get('/logout', function () use ($jmw, $db, $path) {
        session_start();
        session_destroy();
        header('location: ../auth/login');
    });

    /** Url Setting **/
    $router->get('/setting', function () use ($jmw, $db, $path) {
        $data = $db->connection("SELECT * FROM admin WHERE id = $_SESSION[id_admin] ")->fetch();
        echo $jmw->render('modul/admin/index', ['act' => 'edit', 'tedit' => $data]);
    });

    /** Setting Updated **/
    $router->post('/setting', function () use ($jmw, $db, $path) {
        $act = "update";
        $hal = "setting";
        include ($path . 'admin/aksi.php');
    });

    /** Setting File Manager **/
    $router->get('/file-manager', function () use ($jmw, $db, $path) {
        echo $jmw->render('modul/filemanager/index');
    });

/*
 * ------------------------------------------------------
 *  Router Dashboard
 * ------------------------------------------------------
 */

    /** Halaman Dashboard **/
    $router->get('/dashboard', function () use ($jmw, $db) {

        $tanggal = date("Y-m-d"); // Mendapatkan tanggal sekarang
        $bataswaktu = time() - 300;

        $pengunjung = $db->connection("SELECT COUNT(*) FROM statistik WHERE tanggal='$tanggal' GROUP BY ip ASC")->fetchColumn();
        $totalpengunjung = $db->connection("SELECT COUNT(hits) as totalz FROM statistik")->fetch();
        $pengunjungonline = $db->connection("SELECT hits FROM statistik WHERE tanggal='$tanggal' GROUP BY tanggal ASC")->rowCount();
        $totalhits = $db->connection("SELECT SUM(hits) as totalz FROM statistik")->rowCount();
        $hits = $db->connection("SELECT SUM(hits) FROM statistik WHERE tanggal='$tanggal' GROUP BY tanggal DESC LIMIT 1")->fetchColumn();

        echo $jmw->render('dashboard', ['pengunjung' => $pengunjung, 'totalpengunjung' => $totalpengunjung, 'pengunjungonline' => $pengunjungonline, 'totalhits' => $totalhits, 'hits' => $hits]);
    });


/*
 * ------------------------------------------------------
 *  Router Page
 * ------------------------------------------------------
 */

    /** Url Home SEO **/
    $router->get('/home', function () use ($jmw, $db, $path) {
        $data = $db->connection("SELECT * FROM page WHERE id_page = 0 ")->fetch();
        echo $jmw->render('modul/page/index', ['act' => 'edit', 'row' => $data]);
    });

    /** Url Page **/
    $router->get('/page-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM page WHERE id_page = $id ")->fetch();
        echo $jmw->render('modul/page/index', ['act' => 'edit', 'row' => $data]);
    });

    /** Update Page **/
    $router->post('/page', function () use ($jmw, $db, $path) {
        $id  = $_POST['id_page'];
        $act = "update";
        if($id == 0){$hal = "home";}
        elseif($id == 13){$hal = "quote";}
        elseif($id == 3){$hal = "prakata";}
        elseif($id == 14){$hal = "profile-video";}
        elseif($id == 8){$hal = "kontak";}
        include ('modul/page/aksi.php');
    });

/*
 * ------------------------------------------------------
 *  Router Module
 * ------------------------------------------------------
 */

    /** Url Module **/
    $router->get('/module', function () use ($jmw, $db,$path) {
        $data = $db->connection("SELECT * FROM modul WHERE tampil='Ya' ORDER BY no_urut ASC");
        echo $jmw->render('modul/modul/index', ['act' => 'list', 'tampil' => $data]);
    });

    /** Edit Module **/
    $router->get('/module-edit-(\d+)', function ($id) use ($jmw, $db,$path) {
        $edit = $db->connection("SELECT * FROM modul WHERE id_modul= $id ");
        echo $jmw->render('modul/modul/index', ['act' => 'edit', 'edit' => $edit]);
    });

    /** Update Module **/
    $router->post('/module', function () use ($jmw, $db, $path) {
        $act = "update";
        $hal = "module";
        include ('modul/modul/aksi.php');
    });


/*
 * ------------------------------------------------------
 *  Router Sosial Media
 * ------------------------------------------------------
 */

    /** Url Module **/
    $router->get('/social-media', function () use ($jmw, $db,$path) {
        $data = $db->connection("SELECT * FROM social_media  ");
        echo $jmw->render('modul/social_media/index', ['act' => 'list', 'tampil' => $data]);
    });

    /** Edit Module **/
    $router->get('/social-media-edit-(\d+)', function ($id) use ($jmw, $db,$path) {
        $edit = $db->connection("SELECT * FROM social_media WHERE id_social_media= $id ")->fetch();
        echo $jmw->render('modul/social_media/index', ['act' => 'edit', 'data' => $edit]);
    });

    /** Update Module **/
    $router->post('/social-media', function () use ($jmw, $db, $path) {
        $act = "update";
        $hal = "social-media";
        include ('modul/social_media/aksi.php');
    });

/*
 * ------------------------------------------------------
 *  Router Foto
 * ------------------------------------------------------
 */

    /** Url foto **/
    $router->get('/foto', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM foto ORDER BY tgl ASC");
        echo $jmw->render('modul/foto/index', ['act' => 'list', 'tampil' => $dataku]);
    });

    /** Show Add Form foto **/
    $router->get('/foto-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/foto/index', ['act' => 'add']);
    });

    /** Show Edit Form foto **/
    $router->get('/foto-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data    = $db->connection("SELECT * FROM foto WHERE id_foto = $id ")->fetch();
        $gallery = $db->connection("SELECT * FROM gallery_foto WHERE id_foto='$data[id_foto]' ORDER BY id_gallery ASC")->fetchAll();
        echo $jmw->render('modul/foto/index', ['act' => 'edit', 'data' => $data,'gallery' => $gallery]);
    });

    /** Update dan Add foto  **/
    $router->post('/foto', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_foto'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "foto";
        include ($path . 'foto/aksi.php');
    });

    /** Delete foto **/
    $router->get('/foto-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "foto";
        include ($path . 'foto/aksi.php');
    });


    /** Show Add Form Gallery foto **/
    $router->get('/foto-addgallery-(\d+)', function ($id) use ($jmw, $db) {
        echo $jmw->render('modul/foto/index', ['act' => 'addgallery', 'id' => $id]);
    });


    /** Show Edit Form  Gallery foto **/
    $router->get('/foto-editgallery-(\d+)', function ($id) use ($jmw, $db) {
        $data    = $db->connection("SELECT * FROM gallery_foto WHERE id_gallery = $id ")->fetch();
        echo $jmw->render('modul/foto/index', ['act' => 'editgallery', 'data' => $data]);
    });


    /** Update dan Add  Gallery foto  **/
    $router->post('/foto-gallery', function () use ($jmw, $db, $path) {
        if (isset($_POST['id'])) {
            $act = "editgallery";
        } else {
            $act = "addgallery";
        }
        $hal = "foto";
        include ($path . 'foto/aksi.php');
    });


    /** Delete Gallery foto **/
    $router->get('/foto-gallery-delete-(\d+)-(\d+)', function ($id,$id_foto) use ($jmw, $db, $path,$imgname1) {
        $act = "removegallery";
        $hal = "foto";
        include ($path . 'foto/aksi.php');
    });

/*
 * ------------------------------------------------------
 *  Router Video
 * ------------------------------------------------------
 */

    /** Url video **/
    $router->get('/video', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM banner")->fetchAll();
        echo $jmw->render('modul/banner/index', ['act' => 'list', 'dataku' => $dataku]);
    });

    /** Show Add Form video **/
    $router->get('/video-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/banner/index', ['act' => 'add']);
    });

    /** Show Edit Form video **/
    $router->get('/video-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM banner WHERE id_banner = $id ")->fetch();
        echo $jmw->render('modul/banner/index', ['act' => 'edit', 'data' => $data]);
    });

    /** Update dan Add video  **/
    $router->post('/video', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_banner'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "video";
        include ($path . 'banner/aksi.php');
    });

    /** Delete video **/
    $router->get('/video-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "video";
        include ($path . 'banner/aksi.php');
    });


/*
 * ------------------------------------------------------
 *  Router Slider
 * ------------------------------------------------------
 */

    /** Url slider **/
    $router->get('/slider', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM slider")->fetchAll();
        echo $jmw->render('modul/slider/index', ['act' => 'list', 'dataku' => $dataku]);
    });

    /** Show Add Form slider **/
    $router->get('/slider-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/slider/index', ['act' => 'add']);
    });

    /** Show Edit Form slider **/
    $router->get('/slider-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM slider WHERE id_slider = $id ")->fetch();
        echo $jmw->render('modul/slider/index', ['act' => 'edit', 'data' => $data]);
    });

    /** Update dan Add slider  **/
    $router->post('/slider', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_slider'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "slider";
        include ($path . 'slider/aksi.php');
    });

    /** Delete slider **/
    $router->get('/slider-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "slider";
        include ($path . 'slider/aksi.php');
    });

/*
 * ------------------------------------------------------
 *  Router  Daily Slider
 * ------------------------------------------------------
 */

    /** Url slider **/
    $router->get('/daily-slider', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM daily_slider")->fetchAll();
        echo $jmw->render('modul/daily_slider/index', ['act' => 'list', 'dataku' => $dataku]);
    });

    /** Show Add Form slider **/
    $router->get('/daily-slider-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/daily_slider/index', ['act' => 'add']);
    });

    /** Show Edit Form slider **/
    $router->get('/daily-slider-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM daily_slider WHERE id_daily_slider = $id ")->fetch();
        echo $jmw->render('modul/daily_slider/index', ['act' => 'edit', 'data' => $data]);
    });

    /** Update dan Add slider  **/
    $router->post('/daily-slider', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_daily_slider'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "daily-slider";
        include ($path . 'daily_slider/aksi.php');
    });

    /** Delete slider **/
    $router->get('/daily-slider-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "daily-slider";
        include ($path . 'daily_slider/aksi.php');
    });

/*
 * ------------------------------------------------------
 *  Router  Daily Car
 * ------------------------------------------------------
 */

    /** Url Car **/
    $router->get('/daily-car', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM daily_car WHERE jenis ='daily' ")->fetchAll();
        echo $jmw->render('modul/daily_car/index', ['act' => 'list', 'dataku' => $dataku,'jenis'=> 'daily-car', 'potion' => 'Daily Rent Service']);
    });

    $router->get('/wedding-car', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM daily_car WHERE jenis ='wedding' ")->fetchAll();
        echo $jmw->render('modul/daily_car/index', ['act' => 'list', 'dataku' => $dataku,'jenis'=> 'wedding-car','potion' => 'Wedding Car']);
    });

    /** Show Add Form Car **/
    $router->get('/daily-car-add', function () use ($jmw, $db) {
        $kategori = $db->connection("SELECT * FROM daily_kategori ")->fetchAll();
        echo $jmw->render('modul/daily_car/index', ['act' => 'add','kategori' => $kategori,'jenis'=> 'daily-car','potion' => 'Daily Rent Service']);
    });

    $router->get('/wedding-car-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/daily_car/index', ['act' => 'add','jenis'=> 'wedding-car','potion' => 'Wedding Car']);
    });

    /** Show Edit Form Car **/
    $router->get('/daily-car-edit-(\d+)', function ($id) use ($jmw, $db) {
        $kategori = $db->connection("SELECT * FROM daily_kategori ")->fetchAll();
        $desc = $db->connection("SELECT * FROM daily_description WHERE id_daily_car = $id ORDER BY id_daily_description ASC ")->fetchAll();
        $data = $db->connection("SELECT * FROM daily_car WHERE id_daily_car = $id ")->fetch();
        echo $jmw->render('modul/daily_car/index', ['act' => 'edit', 'data' => $data,'kategori' => $kategori,'desc' => $desc,'jenis'=> 'daily-car','potion' => 'Daily Rent Service']);
    });

    $router->get('/wedding-car-edit-(\d+)', function ($id) use ($jmw, $db) {
        $desc = $db->connection("SELECT * FROM daily_description WHERE id_daily_car = $id ORDER BY id_daily_description ASC ")->fetchAll();
        $data = $db->connection("SELECT * FROM daily_car WHERE id_daily_car = $id ")->fetch();
        echo $jmw->render('modul/daily_car/index', ['act' => 'edit', 'data' => $data,'desc' => $desc,'jenis'=> 'wedding-car','potion' => 'Wedding Car']);
    });


    /** Update dan Add Car  **/
    $router->post('/daily-car', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_daily_car'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "daily-car";
        include ($path . 'daily_car/aksi.php');
    });

    $router->post('/wedding-car', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_daily_car'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "wedding-car";
        include ($path . 'daily_car/aksi.php');
    });

    /** Delete Car **/
    $router->get('/daily-car-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "daily-car";
        include ($path . 'daily_car/aksi.php');
    });
/*
 * ------------------------------------------------------
 *  Router Daily Description
 * ------------------------------------------------------
 */


    /** Show Add Form produk size **/
    $router->get('/daily-description-add-(\d+)', function ($id) use ($jmw, $db) {
        
        echo $jmw->render('modul/daily_description/index', ['act' => 'add' , 'id' => $id,'jenis'=> 'daily-description','potion' => 'Daily Rent Service']);
    });
    $router->get('/wedding-description-add-(\d+)', function ($id) use ($jmw, $db) {
        
        echo $jmw->render('modul/daily_description/index', ['act' => 'add' , 'id' => $id,'jenis'=> 'wedding-description','potion' => 'Wedding Car']);
    });


    /** Show Edit Form produk size **/
    $router->get('/daily-description-edit-(\d+)', function ($id) use ($jmw, $db) {
        $size   = $db->connection("SELECT * FROM daily_description WHERE id_daily_description = $id ")->fetch();
        echo $jmw->render('modul/daily_description/index', ['act' => 'edit', 'data'=> $size,'jenis'=> 'daily-description','potion' => 'Daily Car Description']);
    });
    $router->get('/wedding-description-edit-(\d+)', function ($id) use ($jmw, $db) {
        $size   = $db->connection("SELECT * FROM daily_description WHERE id_daily_description = $id ")->fetch();
        echo $jmw->render('modul/daily_description/index', ['act' => 'edit', 'data'=> $size,'jenis'=> 'wedding-description','potion' => 'Wedding Car Description']);
    });

    /** Update dan Add produk size  **/
    $router->post('/daily-description', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_daily_description'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "daily-car";
        include ($path . 'daily_description/aksi.php');
    });

    $router->post('/wedding-description', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_daily_description'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "wedding-car";
        include ($path . 'daily_description/aksi.php');
    });

    /** Delete produk size **/
    $router->get('/daily-description-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "daily-car";
        include ($path . 'daily_description/aksi.php');
    });
    $router->get('/wedding-description-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "wedding-car";
        include ($path . 'daily_description/aksi.php');
    });



/*
 * ------------------------------------------------------
 *  Router Kategori Daily
 * ------------------------------------------------------
 */

    /** Url Daily Kategori **/
    $router->get('/daily-kategori', function () use ($jmw, $db) {
        $tampil = $db->connection("SELECT * FROM daily_kategori  ORDER BY id_daily_kategori DESC");
        echo $jmw->render('modul/daily_kategori/index', ['act' => 'list', 'tampil' => $tampil]);
    });

    /** Update dan Add Daily Kategori **/
    $router->post('/daily-kategori', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_daily_kategori'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "daily-kategori";
        include ($path . 'daily_kategori/aksi.php');
    });

    /** Delete Daily Kategori **/
    $router->get('/daily-kategori-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "daily-kategori";
        include ($path . 'daily_kategori/aksi.php');
    });


/*
 * ------------------------------------------------------
 *  Router Lokasi
 * ------------------------------------------------------
 */

    /** Url Lokasi **/
    $router->get('/lokasi', function () use ($jmw, $db) {
        $tampil = $db->connection("SELECT * FROM lokasi  ORDER BY id_lokasi DESC");
        echo $jmw->render('modul/lokasi/index', ['act' => 'list', 'tampil' => $tampil]);
    });

    /** Update dan Add Lokasi **/
    $router->post('/lokasi', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_lokasi'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "lokasi";
        include ($path . 'lokasi/aksi.php');
    });

    /** Delete Lokasi **/
    $router->get('/lokasi-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "lokasi";
        include ($path . 'lokasi/aksi.php');
    });
    
   
  
/*
 * ------------------------------------------------------
 *  Router Tempat Wisata
 * ------------------------------------------------------
 */

    /** Url Tempat Wisata **/
    $router->get('/tempat-wisata', function () use ($jmw, $db) {
        $lokasi = $db->connection("SELECT * FROM lokasi")->fetchAll();
        $tampil = $db->connection("SELECT *,l.judul AS jdl FROM lokasi l JOIN  tempat_wisata t ON l.id_lokasi = t.id_lokasi  ORDER BY t.id_tempat_wisata DESC");
        echo $jmw->render('modul/tempat_wisata/index', ['act' => 'list', 'tampil' => $tampil, 'lokasi' => $lokasi]);
    });

    /** Update dan Add Tempat Wisata **/
    $router->post('/tempat-wisata', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_tempat_wisata'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "tempat-wisata";
        include ($path . 'tempat_wisata/aksi.php');
    });

    /** Delete Tempat Wisata **/
    $router->get('/tempat-wisata-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "tempat-wisata";
        include ($path . 'tempat_wisata/aksi.php');
    });

/*
 * ------------------------------------------------------
 *  Router Gallery
 * ------------------------------------------------------
 */

    /** Url gallery **/
    $router->get('/gallery', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM gallery")->fetchAll();
        echo $jmw->render('modul/gallery/index', ['act' => 'list', 'dataku' => $dataku]);
    });

    /** Show Add Form gallery **/
    $router->get('/gallery-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/gallery/index', ['act' => 'add']);
    });

    /** Show Edit Form gallery **/
    $router->get('/gallery-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM gallery WHERE id_gallery = $id ")->fetch();
        echo $jmw->render('modul/gallery/index', ['act' => 'edit', 'data' => $data]);
    });

    /** Update dan Add gallery  **/
    $router->post('/gallery', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_gallery'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "gallery";
        include ($path . 'gallery/aksi.php');
    });

    /** Delete gallery **/
    $router->get('/gallery-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "gallery";
        include ($path . 'gallery/aksi.php');
    });


/*
 * ------------------------------------------------------
 *  Router Keuntungan
 * ------------------------------------------------------
 */

    /** Url keuntungan **/
    $router->get('/keuntungan', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM keuntungan")->fetchAll();
        $icons = $db->connection("SELECT * FROM icon")->fetchAll();
        echo $jmw->render('modul/keuntungan/index', ['act' => 'list', 'dataku' => $dataku, 'icons' => $icons]);
    });

    /** Show Add Form keuntungan **/
    $router->get('/keuntungan-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/keuntungan/index', ['act' => 'add']);
    });

    /** Show Edit Form keuntungan **/
    $router->get('/keuntungan-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM keuntungan WHERE id_keuntungan = $id ")->fetch();
        echo $jmw->render('modul/keuntungan/index', ['act' => 'edit', 'data' => $data]);
    });

    /** Update dan Add keuntungan  **/
    $router->post('/keuntungan', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_keuntungan'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "keuntungan";
        include ($path . 'keuntungan/aksi.php');
    });

    /** Delete keuntungan **/
    $router->get('/keuntungan-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "keuntungan";
        include ($path . 'keuntungan/aksi.php');
    });


/*
 * ------------------------------------------------------
 *  Router Artikel
 * ------------------------------------------------------
 */

    /** Url Artikel **/
    $router->get('/artikel', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM artikel");
        echo $jmw->render('modul/artikel/index', ['act' => 'list', 'tampil' => $dataku]);
    });

    /** Show Add Form Artikel **/
    $router->get('/artikel-add', function () use ($jmw, $db) {
        echo $jmw->render('modul/artikel/index', ['act' => 'add']);
    });

    /** Show Edit Form Artikel **/
    $router->get('/artikel-edit-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM artikel WHERE id_artikel = $id ")->fetch();
        echo $jmw->render('modul/artikel/index', ['act' => 'edit', 'data' => $data]);
    });

    /** Update dan Add Artikel  **/
    $router->post('/artikel', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_artikel'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "artikel";
        include ($path . 'artikel/aksi.php');
    });

    /** Delete Artikel **/
    $router->get('/artikel-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "artikel";
        include ($path . 'artikel/aksi.php');
    });



/*
 * ------------------------------------------------------
 *  Router Tour
 * ------------------------------------------------------
 */

    /** Url Tour **/
    $router->get('/tour-lain', function () use ($jmw, $db) {
        $zelda = 'lain';
        $yuri  = 'tour-lain';
        $dataku = $db->connection("SELECT * FROM tour WHERE jenis = 'lain' ");
        echo $jmw->render('modul/tour/index', ['act' => 'list', 'tampil' => $dataku,'zelda' => $zelda, 'yuri' => $yuri]);
    });

    /** Show Add Form Tour **/
    $router->get('/tour-lain-add', function () use ($jmw, $db) {
        $zelda = 'lain';
        $yuri  = 'tour-lain';
        $kat = $db->connection("SELECT * FROM tour_kategori WHERE pien ='$yuri' ")->fetchAll();
        echo $jmw->render('modul/tour/index', ['act' => 'add','zelda' => $zelda, 'yuri' => $yuri,'kat' => $kat]);
    });

    /** Show Edit Form Tour **/
    $router->get('/tour-lain-edit-(\d+)', function ($id) use ($jmw, $db) {
        $zelda = 'lain';
        $yuri  = 'tour-lain';
        $data = $db->connection("SELECT * FROM tour WHERE id_tour = $id ")->fetch();
        $kat = $db->connection("SELECT * FROM tour_kategori WHERE pien ='$yuri' ")->fetchAll();
        echo $jmw->render('modul/tour/index', ['act' => 'edit', 'data' => $data,'zelda' => $zelda, 'yuri' => $yuri,'kat' => $kat]);
    });

    /** Update dan Add Tour  **/
    $router->post('/tour-lain', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_tour'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "tour-lain";
        include ($path . 'tour/aksi.php');
    });

    /** Delete Tour **/
    $router->get('/tour-lain-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "tour-lain";
        include ($path . 'tour/aksi.php');
    });

    /** Url Tour **/
    $router->get('/tour-jogja', function () use ($jmw, $db) {
        $zelda = 'jogja';
        $yuri  = 'tour-jogja';
        $dataku = $db->connection("SELECT * FROM tour WHERE jenis = 'jogja' ");
        echo $jmw->render('modul/tour/index', ['act' => 'list', 'tampil' => $dataku,'zelda' => $zelda, 'yuri' => $yuri]);
    });

    /** Show Add Form Tour **/
    $router->get('/tour-jogja-add', function () use ($jmw, $db) {
        $zelda = 'jogja';
        $yuri  = 'tour-jogja';
        $kat = $db->connection("SELECT * FROM tour_kategori WHERE pien ='$yuri' ")->fetchAll();
        echo $jmw->render('modul/tour/index', ['act' => 'add','zelda' => $zelda, 'yuri' => $yuri,'kat' => $kat]);
    });

    /** Show Edit Form Tour **/
    $router->get('/tour-jogja-edit-(\d+)', function ($id) use ($jmw, $db) {
        $zelda = 'jogja';
        $yuri  = 'tour-jogja';
        $data = $db->connection("SELECT * FROM tour WHERE id_tour = $id ")->fetch();
        $kat = $db->connection("SELECT * FROM tour_kategori WHERE pien ='$yuri' ")->fetchAll();
        echo $jmw->render('modul/tour/index', ['act' => 'edit', 'data' => $data,'zelda' => $zelda, 'yuri' => $yuri,'kat' => $kat]);
    });

    /** Update dan Add Tour  **/
    $router->post('/tour-jogja', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_tour'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "tour-jogja";
        include ($path . 'tour/aksi.php');
    });

    /** Delete Tour **/
    $router->get('/tour-jogja-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "tour-jogja";
        include ($path . 'tour/aksi.php');
    });

    

/*
 * ------------------------------------------------------
 *  Router Kategori Tour
 * ------------------------------------------------------
 */

    /** Url Tour Kategori **/
    $router->get('/tour-kategori-lain', function () use ($jmw, $db) {
        $zelda = 'tour-kategori-lain';
        $yuri  = 'tour-lain';
        $tampil = $db->connection("SELECT * FROM tour_kategori WHERE pien ='tour-lain'  ORDER BY id_tour_kategori DESC");
        echo $jmw->render('modul/tour_kategori/index', ['act' => 'list', 'tampil' => $tampil,'zelda' => $zelda, 'yuri' => $yuri]);
    });

    /** Update dan Add Tour Kategori **/
    $router->post('/tour-kategori-lain', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_tour_kategori'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "tour-kategori-lain";
        include ($path . 'tour_kategori/aksi.php');
    });

    /** Delete Tour Kategori **/
    $router->get('/tour-kategori-lain-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "tour-kategori-lain";
        include ($path . 'tour_kategori/aksi.php');
    });

    /** Url Tour Kategori **/
    $router->get('/tour-kategori-jogja', function () use ($jmw, $db) {
        $zelda = 'tour-kategori-jogja';
        $yuri  = 'tour-lain';
        $tampil = $db->connection("SELECT * FROM tour_kategori WHERE pien ='tour-lain'  ORDER BY id_tour_kategori DESC");
        echo $jmw->render('modul/tour_kategori/index', ['act' => 'list', 'tampil' => $tampil,'zelda' => $zelda, 'yuri' => $yuri]);
    });

    /** Update dan Add Tour Kategori **/
    $router->post('/tour-kategori-jogja', function () use ($jmw, $db, $path) {
        if (isset($_POST['id_tour_kategori'])) {
            $act = "update";
        } else {
            $act = "add";
        }
        $hal = "tour-kategori-jogja";
        include ($path . 'tour_kategori/aksi.php');
    });

    /** Delete Tour Kategori **/
    $router->get('/tour-kategori-jogja-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "tour-kategori-jogja";
        include ($path . 'tour_kategori/aksi.php');
    });


/*
 * ------------------------------------------------------
 *  Router Pesan Contact
 * ------------------------------------------------------
 */

    /** Url List Pesan **/
    $router->get('/pesan', function () use ($jmw, $db) {
        $dataku = $db->connection("SELECT * FROM contact ");
        echo $jmw->render('modul/pesan/index', ['act' => 'list', 'tampil' => $dataku]);
    });

    /** Show Detail Pesan **/
    $router->get('/pesan-view-(\d+)', function ($id) use ($jmw, $db) {
        $data = $db->connection("SELECT * FROM contact WHERE id_contact = $id ")->fetch();
        $db->update("contact" , array('is_read' => 1), "id_contact = $data[id_contact] " );
        echo $jmw->render('modul/pesan/index', ['act' => 'view', 'data' => $data]);
    });

    /** Delete Pesan **/
    $router->get('/pesan-delete-(\d+)', function ($id) use ($jmw, $db, $path) {
        $act = "remove";
        $hal = "pesan";
        include ($path . 'pesan/aksi.php');
    });

    

});