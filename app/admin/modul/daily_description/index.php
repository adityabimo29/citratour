<?php $this->layout('template', ['hal'=>'Daily Car Description']) ?>
<?php
	$module = "daily_description";

	switch($act){
        case "list":
?>
<a href="daily_description-add" class="btn btn-primary"> <i class="fa fa-plus"></i> Tambah Data</a>
<a href="kategori-daily_description" class="btn btn-warning"> <i class="fa fa-cubes"></i> Data Kategori</a>
<br><br>
<div class="table-responsive">
    <table id="my_table" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Kategori</th>
                <th>Gambar</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php
				$no 	= 1;
				foreach($dataku as $row) :
            ?>
            <tr>
                <td><?php echo $no ?></td>
                <td><?php echo $row['nama'] ?></td>
                <td><?php echo $row['judul']; ?></td>
                <td><img src="../images/daily_description/small/<?php echo $row['gambar']; ?>"
                        style="width:100px;margin:0 auto;display:block">
                </td>
                <td style="width:19%"><a href="daily_description-edit-<?php echo $row['id_daily_description'] ?>"
                        class="btn btn-warning"> <i class="fas fa-pencil-alt"></i> Edit</a>
                    <a onClick="javascript: return confirm('Yakin untuk Menghapus data ?');"
                        href="<?php echo $module; ?>-delete-<?php echo $row['id_daily_description']; ?>"
                        class="btn btn-danger " role="button" aria-pressed="true" style="min-width: 60px;"> <i
                            class="fa fa-trash"></i> Delete</a>
                </td>
            </tr>
            <?php 
			    $no++;
				endforeach
			?>
        </tbody>
    </table>
</div>
<?php
		break;
		case "add":
?>
<div class="card">
    <div class="card-body">
        <form action="daily-description" method="POST" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <input type="hidden" class="form-control" name="id_daily_car" value="<?=$id?>">
                        <textarea name="deskripsi" id="ckeditor2" rows="4"></textarea>
                    </div>
                </div>
                <div class="col-md-12">
                    <button type="submit" id="btn-daily_description" class="btn btn-primary"><i
                            class="fa fa-paper-plane"></i> Simpan</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
document.querySelector('#btn-daily_description').addEventListener('click', function(e) {
    loadingSweet();
})
</script>
<?php
	break;
	case "edit":
?>
<div class="card">
    <div class="card-body">
        <form action="daily-description" id="form-daily_description" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="id_daily_description" value="<?php echo $data['id_daily_description'] ?>">
            <input type="hidden" name="id_daily_car" value="<?php echo $data['id_daily_car'] ?>">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <textarea name="deskripsi" id="ckeditor2" rows="4"><?php echo $data['deskripsi'] ?></textarea>
                    </div>
                </div>

                <input type="submit" id="btn-daily_description" class="btn btn-primary" value="Simpan Data">
            </div>
        </form>
    </div>
</div>
<script>
document.querySelector('#btn-daily_description').addEventListener('click', function(e) {
    loadingSweet();
})
</script>
<?php
    break;
	case "addgallery":
?>
<form action="modul/daily_description/aksi.php?module=<?php echo $module; ?>&act=addgallery" method="POST"
    enctype="multipart/form-data">
    <div class="row">
        <div class="col-md-12 card">
            <div class="card-body">
                <div class="form-group">
                    <label>nama</label>
                    <input type="text" class="form-control" name="nama">
                </div>
                <div class="form-group ">
                    <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">
                    <label for="">Gambar</label>
                    <input type="file" name="nyanpload" class="form-control">
                </div>
            </div>
        </div>
        <input type="submit" class="btn btn-info" value="Simpan Data">
    </div>
</form>
<?php
    break;
	case "editgallery":
	$gam =  $db->connection("SELECT * FROM gallery_daily_description WHERE id_gallery = '$_GET[id]'  ")->fetch();
?>
<form action="modul/<?php echo $module; ?>/aksi.php?module=<?php echo $module; ?>&act=editgallery" method="POST"
    enctype="multipart/form-data">
    <div class="row">
        <div class="col-md-12 card">
            <div class="card-body">
                <div class="form-group">
                    <label>nama</label>
                    <input type="text" class="form-control" name="nama" value="<?php echo $gam['nama'] ?>">
                </div>
                <div class="form-group">
                    <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">
                    <input type="hidden" name="idm" value="<?php echo $_GET['idm']; ?>">
                    <label for="">Gambar</label>
                    <input type="file" name="nyanpload" class="form-control">
                    <br><br>
                    <img style="height:300px"
                        src="../images/gallery_daily_description/<?php echo $imgname2."-".$gam['gambar']?>">
                </div>
            </div>
        </div>
        <input type="submit" class="btn btn-info" value="Simpan Data">
    </div>
</form>
<?php
		break;  
	}
?>