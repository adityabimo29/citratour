<?php
use \Gumlet\ImageResize;
// Update modul
if ($act == 'update') {
    $jdl2 = substr($_POST["nama"], 0, 100);

    $lokasi_file = $_FILES['lopoFile']['tmp_name'];
    $nama_file = $_FILES['lopoFile']['name'];
    $tipe_file = $_FILES['lopoFile']['type'];
    $ukuran = $_FILES['lopoFile']['size'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($jdl2);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . "-" . $acak . "." . $tipe_file2;
    $nama_file_unik = $seojdul . "-" . $acak . "." . $tipe_file2;
    $nama_seo = seo($_POST["nama"]);

    if (!empty($lokasi_file)) {
        if (($ukuran == 0) or ($ukuran == 02) or ($ukuran > 2060817)) {
            echo "<script>window.alert('Gagal Upload Gambar, ukuran gambar lebih dari 2 MB !'); window.location(history.back(-1))</script>";
        } else {
            $edit = $db->connection("SELECT gambar FROM daily_car WHERE id_daily_car='$_POST[id_daily_car]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);

            unlink("images/daily_car/$tedit[gambar]");
            unlink("images/daily_car/small/$tedit[gambar]");

            $res = lopoUpload($seojdul . '-' . $acak, 'daily_car');

            if ($res == true) {
                try {
                    $datas = array(
                        'judul' => $_POST["nama"],
                        'id_daily_kategori' => $_POST["id_daily_kategori"],
                        'gambar' => $nama_file_unik,
                    );
                    $db->update("daily_car", $datas, "id_daily_car= '$_POST[id_daily_car]' ");

                    $pathToImage = 'images/daily_car/' . $nama_file_unik;
                    $pathSmall = 'images/daily_car/small/' . $nama_file_unik;
                    lopoCompress('daily_car', $pathToImage, $tipe_file2);
                    lopoCompress('daily_car/small', $pathToImage, $tipe_file2, 3);

                    $image = new ImageResize($pathSmall);
                    $image->resize(250,130);
                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->resize(500,260);
                    $image2->save($pathToImage);

                    echo "<script>alert('daily_car Berhasil diedit'); window.location = '$hal-edit-$_POST[id_daily_car]'</script>";
                } catch (PDOException $e) {
                    echo "<script>alert('daily_car Gagal diedit!'); window.location = '$hal-edit-$_POST[id_daily_car]'</script>";
                }
            } else {
                echo "<script>alert('Something error with this image'); window.location(history.back(-1))</script>";
            }
        }
    } else {
        try {

            $edit = $db->connection("SELECT gambar FROM daily_car WHERE id_daily_car='$_POST[id_daily_car]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);
            $datas = array();

            $datas = array(
                'judul' => $_POST["nama"],
                'id_daily_kategori' => $_POST["id_daily_kategori"],
            );
            $db->update("daily_car", $datas, "id_daily_car= '$_POST[id_daily_car]' ");

            echo "<script>alert('daily_car Berhasil diedit'); window.location = '$hal-edit-$_POST[id_daily_car]'</script>";
        } catch (PDOException $e) {
            echo "<script>alert('daily_car Gagal diedit!'); window.location = '$hal-edit-$_POST[id_daily_car]'</script>";
        }
    }
}

// add modul
elseif ($act == 'add') {

    $lokasi_file = $_FILES['lopoFile']['tmp_name'];
    $nama_file = $_FILES['lopoFile']['name'];
    $tipe_file = $_FILES['lopoFile']['type'];
    $ukuran = $_FILES['lopoFile']['size'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($_POST["nama"]);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . "-" . $acak . "." . $tipe_file2;
    $nama_seo = seo($_POST["nama"]);
    date_default_timezone_set('Asia/Jakarta');



    if (empty($nama_file)) {
        echo "<script>window.alert('Gambar Tidak Boleh Kosong!'); window.location(history.back(-1))</script>";
    } else {
        if (($ukuran == 0) or ($ukuran == 02) or ($ukuran > 2060817)) {
            echo "<script>window.alert('Gagal Upload Gambar, ukuran gambar lebih dari 2 MB !'); window.location(history.back(-1))</script>";
        } else {
            $res = lopoUpload($seojdul . '-' . $acak, 'daily_car');
            if ($res == true) {
                try {

                    $datas = array(
                        'judul' => $_POST["nama"],
                        'id_daily_kategori' => $_POST["id_daily_kategori"],
                        'gambar' => $nama_file_unik,
                    );
                    $saved = $db->insert('daily_car', $datas);
                    $insertId = $db->lastId();

                    $pathToImage = 'images/daily_car/' . $nama_file_unik;
                    $pathSmall = 'images/daily_car/small/' . $nama_file_unik;
                    lopoCompress('daily_car', $pathToImage, $tipe_file2, 1);
                    lopoCompress('daily_car/small', $pathToImage, $tipe_file2, 3);

                    $image = new ImageResize($pathSmall);
                    $image->resize(250,130);
                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->resize(500,260);
                    $image2->save($pathToImage);

                    echo "<script>alert('daily_car Berhasil ditambah'); window.location = '$hal-edit-$insertId'</script>";

                } catch (PDOException $e) {
                    echo "$e";
                }
            } else {
                echo "<script>alert('Format Gambar Salah !'); window.location = '$hal'</script>";
            }
        }
    }
}

// remove modul
elseif ($act == 'remove') {
    $edit = $db->connection("SELECT gambar FROM daily_car WHERE id_daily_car=$id ");
    $rr = $edit->fetch(PDO::FETCH_ASSOC);
    unlink("images/daily_car/$rr[gambar]");
    unlink("images/daily_car/small/$rr[gambar]");

    $del = $db->delete("daily_car", "id_daily_car=$id ");

    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";

} elseif ($module == $module2 and $act == 'addgallery') {
    $edit = $db->connection("SELECT nama FROM daily_car WHERE id_daily_car='$_POST[id]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);

    $lokasi_file = $_FILES['nyanpload']['tmp_name'];
    $nama_file = $_FILES['nyanpload']['name'];
    $tipe_file = $_FILES['nyanpload']['type'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($tedit["nama"]);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . $acak . "." . $tipe_file2;
    $idku = $_POST['id'];
    if (empty($lokasi_file)) {
        echo "<script>window.alert('Belum ada Gambar yang Dimasukan!');
            window.location(history.back(-1))</script>";
    } else {
        try {
            UploadNyan($nama_file_unik, 'gallery_daily_car');

            $datas = array(
                'id_daily_car' => $idku,
                'gambar' => $nama_file_unik,
                'nama' => $_POST['nama'],
            );
            $db->insert('gallery_daily_car', $datas);

            unlink("../../../images/gallery_daily_car/$nama_file_unik");

            echo "<script>alert('Gambar berhasil dimasukan!'); window.location = '../../$module-edit-$_POST[id]#gallery_daily_car'</script>";
        } catch (PDOException $e) {
            echo "$e";
        }

    }
} elseif ($act == 'editgallery') {
    $edit = $db->connection("SELECT nama FROM daily_car WHERE id_daily_car='$_POST[idm]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);
    $idku = $_POST['idm'];

    $lokasi_file = $_FILES['nyanpload']['tmp_name'];
    $nama_file = $_FILES['nyanpload']['name'];
    $tipe_file = $_FILES['nyanpload']['type'];
    $tipe_file2 = seo2($tipe_file);
    $seojdul = seo($tedit["nama"]);
    $acak = rand(00, 99);
    $nama_file_unik = $seojdul . $acak . "." . $tipe_file2;

    if (empty($lokasi_file)) {
        echo "<script>window.alert('Belum ada Gambar yang Dimasukan!');
            window.location(history.back(-1))</script>";
    } else {

        UploadNyan($nama_file_unik, 'gallery_daily_car');

        $edit = $db->connection("SELECT gambar FROM gallery_daily_car WHERE id_gallery ='$_POST[id]'");
        $tedit = $edit->fetch(PDO::FETCH_ASSOC);

        unlink("../../../images/gallery_daily_car/$imgname1-$tedit[gambar]");
        unlink("../../../images/gallery_daily_car/small/$imgname2-$tedit[gambar]");

        $datas = array(
            'id_daily_car' => $idku,
            'gambar' => $nama_file_unik,
            'nama' => $_POST['nama'],
        );
        $db->update('gallery_daily_car', $datas, " id_gallery = '$_POST[id]' ");

        unlink("../../../images/gallery_daily_car/$nama_file_unik");

        echo "<script>alert('daily_car gambar berhasil diedit!'); window.location = '../../$module-edit-$_POST[idm]#daily_cardaily_car'</script>";
    }
} elseif ($act == 'removegallery') {
    $edit = $db->connection("SELECT id_gallery, gambar FROM gallery_daily_car WHERE id_gallery='$_GET[id]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);
    unlink("../../../images/gallery_daily_car/$imgname1-$tedit[gambar]");
    unlink("../../../images/gallery_daily_car/small/$imgname1-$tedit[gambar]");
    $id = $tedit['id_gallery_daily_car'];

    $del = $db->connection("DELETE FROM gallery_daily_car WHERE id_gallery='$_GET[id]'");
    $del->execute();

    header('location:../../' . $module . '-edit-' . $_GET['idm'] . '#daily_cardaily_car');
}