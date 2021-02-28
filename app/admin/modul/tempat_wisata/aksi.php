<?php

$judul_seo = seo($_POST["judul"]);
// Update modul
if ($act == 'update') {
    try {
        $datas = array(
            'id_lokasi' => $_POST["id_lokasi"],
            'judul' => $_POST["judul"],
            'judul_seo' => $judul_seo,
        );
        $db->update('tempat_wisata', $datas, "id_tempat_wisata = $_POST[id_tempat_wisata] ");

        echo "<script>alert('Data Berhasil diedit'); window.location = '$hal'</script>";
    } catch (PDOException $e) {
        echo "<script>alert('Data Gagal diedit!'); window.location = '$hal'</script>";
    }
}

// add modul
elseif ($act == 'add') {
    try {
        $datas = array(
            'id_lokasi' => $_POST["id_lokasi"],
            'judul' => $_POST["judul"],
            'judul_seo' => $judul_seo,
        );
        $saved = $db->insert('tempat_wisata', $datas);

        echo "<script>alert('Datai Berhasil ditambah'); window.location = '$hal'</script>";

    } catch (PDOException $e) {
        echo "<script>window.alert('Data Gagal ditambah!'); window.location(history.back(-1))</script>";
    }
}

// remove modul
elseif ($act == 'remove') {
    $db->delete("tempat_wisata", "id_tempat_wisata='$id' ");
    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";
}