<?php

$judul_seo = seo($_POST["judul"]);
// Update modul
if ($act == 'update') {
    try {
        $datas = array(
            'judul' => $_POST["judul"],
            'judul_seo' => $judul_seo,
        );
        $db->update('tour_kategori', $datas, "id_tour_kategori = $_POST[id_tour_kategori] ");

        echo "<script>alert('Data Berhasil diedit'); window.location = '$hal'</script>";
    } catch (PDOException $e) {
        echo "<script>alert('Data Gagal diedit!'); window.location = '$hal'</script>";
    }
}

// add modul
elseif ($act == 'add') {
    try {
        $datas = array(
            'judul' => $_POST["judul"],
            'judul_seo' => $judul_seo,
            'pien' => $_POST["pien"],
        );
        $saved = $db->insert('tour_kategori', $datas);

        echo "<script>alert('Datai Berhasil ditambah'); window.location = '$hal'</script>";

    } catch (PDOException $e) {
        echo "<script>window.alert('Data Gagal ditambah!'); window.location(history.back(-1))</script>";
    }
}

// remove modul
elseif ($act == 'remove') {
    $db->delete("tour_kategori", "id_tour_kategori='$id' ");
    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal'</script>";
}
