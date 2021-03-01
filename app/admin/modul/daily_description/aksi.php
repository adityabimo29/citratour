<?php


// Update modul
if ($act == 'update') {
    try {
        $datas = array(
            'deskripsi' => $_POST["deskripsi"],
        );
        $db->update('daily_description', $datas, "id_daily_description = $_POST[id_daily_description] ");

        echo "<script>alert('Data Berhasil diedit'); window.location = '$hal-edit-$_POST[id_daily_car]'</script>";
    } catch (PDOException $e) {
        echo "<script>alert('Data Gagal diedit!'); window.location(history.back(-1))</script>";
    }
}

// add modul
elseif ($act == 'add') {
    try {
        $datas = array(
            'deskripsi' => $_POST["deskripsi"],
            'id_daily_car' => $_POST["id_daily_car"],
        );
        $saved = $db->insert('daily_description', $datas);

        echo "<script>alert('Datai Berhasil ditambah'); window.location = '$hal-edit-$_POST[id_daily_car]'</script>";

    } catch (PDOException $e) {
        echo "<script>window.alert('Data Gagal ditambah!'); window.location(history.back(-1))</script>";
    }
}

// remove modul
elseif ($act == 'remove') {
    $d = $db->connection("SELECT id_daily_car FROM daily_description WHERE id_daily_description = $id ")->fetchColumn();
    $db->delete("daily_description", "id_daily_description='$id' ");
    echo "<script>alert('Data Berhasil dihapus'); window.location = '$hal-edit-$d'</script>";
}
