<?php
use \Gumlet\ImageResize;
    // Update modul
    if ( $act == 'update' ) {

        $jdl2 				 = substr( $_POST['judul'], 0, 80 );
        $tipe_file   	 	 = $_FILES['lopoFile']['type'];
        $nama_file   		 = $_FILES['lopoFile']['name'];
        $ukuran   			 = $_FILES['lopoFile']['size'];
        $tipe_file2   	 	 = seo2( $tipe_file );
        $judul_seo 		 	 = seo( $_POST['judul'] );
        $acak           	 = rand( 00, 99 );
        $nama_file_unik 	 = $judul_seo.'-'.$acak.'.'.$tipe_file2;

        $tgl_post = convertDate('/', $_POST['tgl']);

        if ( !empty( $nama_file ) ) {
            if ( ( $ukuran == 0 ) OR ( $ukuran == 02 ) OR ( $ukuran>9060817 ) ) {
                echo "<script>window.alert('Gagal Upload Gambar, ukuran gambar lebih dari 2 MB !'); window.location(history.back(-1))</script>";
            } else {
                $edit = $db->connection( "SELECT gambar FROM tour WHERE id_tour='$_POST[id_tour]'" );
                $tedit = $edit->fetch( PDO::FETCH_ASSOC );
                unlink( "images/tour/$tedit[gambar]" );
                unlink( "images/tour/small/$tedit[gambar]" );

                // Upload Image
                $res = lopoUpload( $judul_seo.'-'.$acak, 'tour' );
                if ( $res == true ) {
                    try {

                        $datas = array(
                            'id_tour_kategori' => $_POST['id_tour_kategori'],
                            'judul' => $_POST['judul'],
                            'judul_seo' => $judul_seo,
                            'deskripsi' => $_POST['deskripsi'],
                            'harga_mulai' => $_POST['harga_mulai'],
                            'harga' => $_POST['harga'],
                            'fasilitas' => $_POST['fasilitas'],
                            'id_admin' => $_SESSION['id_admin'],
                            'status' => $_POST['status'],
                            'keyword' => $_POST['keyword'],
                            'description' => $_POST['description'],
                            'destinasi' => $_POST['destinasi'],
                            'gambar' => $nama_file_unik,
                            'tgl' => $tgl_post

                        );
                        $saved = $db->update( 'tour', $datas, "id_tour = '$_POST[id_tour]' " );
                        $pathToImage = 'images/tour/'.$nama_file_unik;
                        $pathSmall   =  'images/tour/small/'.$nama_file_unik;
                        lopoCompress( 'tour', $pathToImage, $tipe_file2, 1 );
                        lopoCompress( 'tour/small', $pathToImage, $tipe_file2, 6 );
                        
                        $image = new ImageResize($pathSmall);
                        $image->resize(500, 347);
                        $image->save($pathSmall);

                        $image2 = new ImageResize($pathToImage);
                        $image2->resize(500, 500);
                        $image2->save($pathToImage);

                        echo "<script>alert('$hal Berhasil diedit'); window.location = '$hal-edit-$_POST[id_tour]'</script>";
                    } catch( PDOException $e ) {
                        echo "<script>alert('$hal Gagal diedit!'); window.location = '$hal-edit-$_POST[id_tour]'</script>";
                    }
                } else {
                    echo "<script>alert('Something error with this image'); window.location = '$hal-edit-$_POST[id_tour]'</script>";
                }

            }
        } else {
            try {
                $datas = array(
                    'id_tour_kategori' => $_POST['id_tour_kategori'],
                    'judul' => $_POST['judul'],
                    'id_admin' => $_SESSION['id_admin'],
                    'judul_seo' => $judul_seo,
                    'deskripsi' => $_POST['deskripsi'],
                    'harga_mulai' => $_POST['harga_mulai'],
                    'harga' => $_POST['harga'],
                    'fasilitas' => $_POST['fasilitas'],
                    'status' => $_POST['status'],
                    'keyword' => $_POST['keyword'],
                    'destinasi' => $_POST['destinasi'],
                    'description' => $_POST['description'],
                    'tgl' => $tgl_post

                );
                $saved = $db->update( 'tour', $datas, "id_tour = '$_POST[id_tour]' " );

                echo "<script>alert('$hal Berhasil diedit'); window.location = '$hal-edit-$_POST[id_tour]'</script>";
            } catch( PDOException $e ) {
                echo "<script>alert('$hal Gagal diedit!'); window.location = '$hal-edit-$_POST[id_tour]'</script>";
            }
        }
    }

    // add modul
    elseif (  $act == 'add' ) {
        $jdl2 				 = substr( $_POST['judul'], 0, 80 );
        $tipe_file   	 	 = $_FILES['lopoFile']['type'];
        $tipe_file2   	 	 = seo2( $tipe_file );
        $judul_seo 		 	 = seo( $_POST['judul'] );
        $acak           	 = rand( 00, 99 );
        $nama_file_unik 	 = $judul_seo.'-'.$acak.'.'.$tipe_file2;

        $tgl_post = convertDate('/', $_POST['tgl']);
        

        // Upload Image
        $res = lopoUpload( $judul_seo.'-'.$acak, 'tour' );
        if ( $res == false ) {
            echo "<script>window.alert('Gambar Tidak Boleh Kosong Atau melebihi 2 MB'); window.location(history.back(-1))</script>";
        } else {
            try {
                $datas = array(
                    'jenis' => $_POST['jenis'],
                    'id_tour_kategori' => $_POST['id_tour_kategori'],
                    'judul' => $_POST['judul'],
                    'id_admin' => $_SESSION['id_admin'],
                    'judul_seo' => $judul_seo,
                    'deskripsi' => $_POST['deskripsi'],
                    'harga_mulai' => $_POST['harga_mulai'],
                    'harga' => $_POST['harga'],
                    'fasilitas' => $_POST['fasilitas'],
                    'status' => $_POST['status'],
                    'keyword' => $_POST['keyword'],
                    'description' => $_POST['description'],
                    'destinasi' => $_POST['destinasi'],
                    'gambar' => $nama_file_unik,
                    'tgl' => $tgl_post
                );
                $saved = $db->insert( 'tour', $datas );
                $insertId = $db->lastId();

                $pathToImage = 'images/tour/'.$nama_file_unik;
                $pathSmall   =  'images/tour/small/'.$nama_file_unik;

                lopoCompress( 'tour', $pathToImage, $tipe_file2, 1 );
                lopoCompress( 'tour/small', $pathToImage, $tipe_file2, 6 );
                
                $image = new ImageResize($pathSmall);
                $image->resize(500, 347);
                $image->save($pathSmall);
                        
                $image2 = new ImageResize($pathToImage);
                $image2->resize(500, 500);
                $image2->save($pathToImage);

                echo "<script>alert('$hal Berhasil ditambah'); window.location = '$hal-edit-$insertId'</script>";

            } catch( PDOException $e ) {
                echo "<script>alert('$hal Gagal diedit!'); window.location = '$hal'</script>";
            }
        }

    }

    // remove modul
    elseif ( $act == 'remove' ) {
        $edit = $db->connection( "SELECT gambar FROM tour WHERE id_tour='$id'" );
        $rr = $edit->fetch( PDO::FETCH_ASSOC );
        unlink( "images/tour/$rr[gambar]" );
        unlink( "images/tour/small/$rr[gambar]" );

        $del = $db->delete( 'tour', "id_tour='$id'" );

        echo "<script>alert('$hal Berhasil dihapus'); window.location = '$hal'</script>";
    }
?>
