<?php
use \Gumlet\ImageResize;
$jdl2 = substr($_POST['judul'], 0, 80);
$tipe_file = $_FILES['lopoFile']['type'];
$nama_file = $_FILES['lopoFile']['name'];
$ukuran = $_FILES['lopoFile']['size'];
$tipe_file2 = seo2($tipe_file);
$judul_seo = seo($_POST['judul']);
$acak = rand(00, 99);
$nama_file_unik = $judul_seo . '-' . $acak . '.' . $tipe_file2;

// Update modul
if ($act == 'update') {

    if (!empty($nama_file)) {
        if (($ukuran == 0) or ($ukuran == 02) or ($ukuran > 9060817)) {
            echo "<script>window.alert('Gagal Upload Gambar, ukuran gambar lebih dari 2 MB !'); window.location(history.back(-1))</script>";
        } else {
            $edit = $db->connection("SELECT gambar FROM tour_kategori WHERE id_tour_kategori='$_POST[id_tour_kategori]'");
            $tedit = $edit->fetch(PDO::FETCH_ASSOC);
            unlink("images/tour_kategori/$tedit[gambar]");
            unlink("images/tour_kategori/small/$tedit[gambar]");

            // Upload Image
            $res = lopoUpload($judul_seo . '-' . $acak, 'tour_kategori');
            if ($res == true) {
                try {

                    $datas = array(
                        'judul' => $_POST["judul"],
                        'judul_seo' => $judul_seo,
                        'deskripsi' => $_POST["deskripsi"],
                        'gambar' => $nama_file_unik,
                    );
                    $db->update('tour_kategori', $datas, "id_tour_kategori = $_POST[id_tour_kategori] ");

                    $pathToImage = 'images/tour_kategori/' . $nama_file_unik;
                    $pathSmall = 'images/tour_kategori/small/' . $nama_file_unik;
                    lopoCompress('tour_kategori', $pathToImage, $tipe_file2, 1);
                    lopoCompress('tour_kategori/small', $pathToImage, $tipe_file2, 6);

                    $image = new ImageResize($pathSmall);
                    $image->resize(683, 250);
                    $image->save($pathSmall);

                    $image2 = new ImageResize($pathToImage);
                    $image2->resize(1366, 500);
                    $image2->save($pathToImage);

                    echo "<script>alert('$hal Berhasil diedit'); window.location = '$hal'</script>";
                } catch (PDOException $e) {
                    echo "<script>alert('$hal Gagal diedit!'); window.location = '$hal'</script>";
                }
            } else {
                echo "<script>alert('Something error with this image'); window.location = '$hal'</script>";
            }

        }
    } else {
        try {
            $datas = array(
                'judul' => $_POST["judul"],
                'judul_seo' => $judul_seo,
                'deskripsi' => $_POST["deskripsi"],
            );
            $db->update('tour_kategori', $datas, "id_tour_kategori = $_POST[id_tour_kategori] ");

            echo "<script>alert('$hal Berhasil diedit'); window.location = '$hal'</script>";
        } catch (PDOException $e) {
            echo "<script>alert('$hal Gagal diedit!'); window.location = '$hal'</script>";
        }
    }
}

// add modul
elseif ($act == 'add') {

    // Upload Image
    $res = lopoUpload($judul_seo . '-' . $acak, 'tour_kategori');

    if ($res == false) {
        echo "<script>window.alert('Gambar Tidak Boleh Kosong Atau melebihi 2 MB'); window.location(history.back(-1))</script>";
    } else {

        try {
            $datas = array(
                'judul' => $_POST["judul"],
                'judul_seo' => $judul_seo,
                'pien' => $_POST["pien"],
                'deskripsi' => $_POST["deskripsi"],
                'gambar' => $nama_file_unik,
            );
            $saved = $db->insert('tour_kategori', $datas);
            $insertId = $db->lastId();

            $pathToImage = 'images/tour_kategori/' . $nama_file_unik;
            $pathSmall = 'images/tour_kategori/small/' . $nama_file_unik;

            lopoCompress('tour_kategori', $pathToImage, $tipe_file2, 1);
            lopoCompress('tour_kategori/small', $pathToImage, $tipe_file2, 6);

            $image = new ImageResize($pathSmall);
            $image->resize(683, 250);
            $image->save($pathSmall);

            $image2 = new ImageResize($pathToImage);
            $image2->resize(1366, 500);
            $image2->save($pathToImage);

            echo "<script>alert('$hal Berhasil ditambah'); window.location = '$hal'</script>";

        } catch (PDOException $e) {
            echo "<script>window.alert('Data Gagal ditambah!'); window.location(history.back(-1))</script>";
        }
    }

}

// remove modul
elseif ($act == 'remove') {
    $edit = $db->connection( "SELECT gambar FROM tour_kategori WHERE id_tour_kategori='$id'" );
    $rr = $edit->fetch( PDO::FETCH_ASSOC );
    unlink( "images/tour_kategori/$rr[gambar]" );
    unlink( "images/tour_kategori/small/$rr[gambar]" );
    $db->delete("tour_kategori", "id_tour_kategori='$id' ");
    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";
}
