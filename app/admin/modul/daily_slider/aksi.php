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
            $edit = $db->connection("SELECT gambar FROM daily_slider WHERE id_daily_slider='$_POST[id_daily_slider]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);

            unlink("images/daily_slider/$tedit[gambar]");
            unlink("images/daily_slider/small/$tedit[gambar]");

            $res = lopoUpload($seojdul . '-' . $acak, 'daily_slider');

            if ($res == true) {
                try {
                    $datas = array(
                        'judul' => $_POST["nama"],
                        'gambar' => $nama_file_unik,
                    );
                    $db->update("daily_slider", $datas, "id_daily_slider= '$_POST[id_daily_slider]' ");

                    $pathToImage = 'images/daily_slider/' . $nama_file_unik;
                    $pathSmall = 'images/daily_slider/small/' . $nama_file_unik;
                    lopoCompress('daily_slider', $pathToImage, $tipe_file2);
                    lopoCompress('daily_slider/small', $pathToImage, $tipe_file2, 3);

                    $image = new ImageResize($pathSmall);
                    $image->resizeToWidth(600);
                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->resize(1366,450);
                    $image2->save($pathToImage);

                    echo "<script>alert('daily_slider Berhasil diedit'); window.location = '$hal-edit-$_POST[id_daily_slider]'</script>";
                } catch (PDOException $e) {
                    echo "<script>alert('daily_slider Gagal diedit!'); window.location = '$hal-edit-$_POST[id_daily_slider]'</script>";
                }
            } else {
                echo "<script>alert('Something error with this image'); window.location(history.back(-1))</script>";
            }
        }
    } else {
        try {

            $edit = $db->connection("SELECT gambar FROM daily_slider WHERE id_daily_slider='$_POST[id_daily_slider]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);
            $datas = array();

            $datas = array(
                'judul' => $_POST["nama"],
            );
            $db->update("daily_slider", $datas, "id_daily_slider= '$_POST[id_daily_slider]' ");

            echo "<script>alert('daily_slider Berhasil diedit'); window.location = '$hal-edit-$_POST[id_daily_slider]'</script>";
        } catch (PDOException $e) {
            echo "<script>alert('daily_slider Gagal diedit!'); window.location = '$hal-edit-$_POST[id_daily_slider]'</script>";
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
            $res = lopoUpload($seojdul . '-' . $acak, 'daily_slider');
            if ($res == true) {
                try {

                    $datas = array(
                        'judul' => $_POST["nama"],
                        'gambar' => $nama_file_unik,
                    );
                    $saved = $db->insert('daily_slider', $datas);
                    $insertId = $db->lastId();

                    $pathToImage = 'images/daily_slider/' . $nama_file_unik;
                    $pathSmall = 'images/daily_slider/small/' . $nama_file_unik;
                    lopoCompress('daily_slider', $pathToImage, $tipe_file2, 1);
                    lopoCompress('daily_slider/small', $pathToImage, $tipe_file2, 3);

                    $image = new ImageResize($pathSmall);
                    $image->resizeToWidth(600);
                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->resize(1366,450);
                    $image2->save($pathToImage);

                    echo "<script>alert('daily_slider Berhasil ditambah'); window.location = '$hal-edit-$insertId'</script>";

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
    $edit = $db->connection("SELECT gambar FROM daily_slider WHERE id_daily_slider=$id ");
    $rr = $edit->fetch(PDO::FETCH_ASSOC);
    unlink("images/daily_slider/$rr[gambar]");
    unlink("images/daily_slider/small/$rr[gambar]");

    $del = $db->delete("daily_slider", "id_daily_slider=$id ");

    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";

} elseif ($module == $module2 and $act == 'addgallery') {
    $edit = $db->connection("SELECT nama FROM daily_slider WHERE id_daily_slider='$_POST[id]'");
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
            UploadNyan($nama_file_unik, 'gallery_daily_slider');

            $datas = array(
                'id_daily_slider' => $idku,
                'gambar' => $nama_file_unik,
                'nama' => $_POST['nama'],
            );
            $db->insert('gallery_daily_slider', $datas);

            unlink("../../../images/gallery_daily_slider/$nama_file_unik");

            echo "<script>alert('Gambar berhasil dimasukan!'); window.location = '../../$module-edit-$_POST[id]#gallery_daily_slider'</script>";
        } catch (PDOException $e) {
            echo "$e";
        }

    }
} elseif ($act == 'editgallery') {
    $edit = $db->connection("SELECT nama FROM daily_slider WHERE id_daily_slider='$_POST[idm]'");
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

        UploadNyan($nama_file_unik, 'gallery_daily_slider');

        $edit = $db->connection("SELECT gambar FROM gallery_daily_slider WHERE id_gallery ='$_POST[id]'");
        $tedit = $edit->fetch(PDO::FETCH_ASSOC);

        unlink("../../../images/gallery_daily_slider/$imgname1-$tedit[gambar]");
        unlink("../../../images/gallery_daily_slider/small/$imgname2-$tedit[gambar]");

        $datas = array(
            'id_daily_slider' => $idku,
            'gambar' => $nama_file_unik,
            'nama' => $_POST['nama'],
        );
        $db->update('gallery_daily_slider', $datas, " id_gallery = '$_POST[id]' ");

        unlink("../../../images/gallery_daily_slider/$nama_file_unik");

        echo "<script>alert('daily_slider gambar berhasil diedit!'); window.location = '../../$module-edit-$_POST[idm]#daily_sliderdaily_slider'</script>";
    }
} elseif ($act == 'removegallery') {
    $edit = $db->connection("SELECT id_gallery, gambar FROM gallery_daily_slider WHERE id_gallery='$_GET[id]'");
    $tedit = $edit->fetch(PDO::FETCH_ASSOC);
    unlink("../../../images/gallery_daily_slider/$imgname1-$tedit[gambar]");
    unlink("../../../images/gallery_daily_slider/small/$imgname1-$tedit[gambar]");
    $id = $tedit['id_gallery_daily_slider'];

    $del = $db->connection("DELETE FROM gallery_daily_slider WHERE id_gallery='$_GET[id]'");
    $del->execute();

    header('location:../../' . $module . '-edit-' . $_GET['idm'] . '#daily_sliderdaily_slider');
}
