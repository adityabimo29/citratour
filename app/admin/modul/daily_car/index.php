<?php $this->layout('template', ['hal'=> $potion]) ?>
<?php
	$module = "daily-car";

	switch($act){
        case "list":
?>
<a href="<?=$jenis?>-add" class="btn btn-primary"> <i class="fa fa-plus"></i> Tambah Data</a>
<br><br>
<div class="table-responsive">
    <table id="my_table" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
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
                <td><?php echo $row['judul'] ?></td>
                <td><img src="../images/daily_car/small/<?php echo $row['gambar']; ?>"
                        style="width:100px;margin:0 auto;display:block">
                </td>
                <td style="width:19%"><a href="<?=$jenis?>-edit-<?php echo $row['id_daily_car'] ?>"
                        class="btn btn-warning "> <i class="fas fa-pencil-alt"></i> Edit</a>
                    <a onClick="javascript: return confirm('Yakin untuk Menghapus data ?');"
                        href="<?php echo $module; ?>-delete-<?php echo $row['id_daily_car']; ?>" class="btn btn-danger "
                        role="button" aria-pressed="true" style="min-width: 60px;"> <i class="fa fa-trash"></i>
                        Delete</a>
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
            if($jenis == 'daily-car'){
                $urk = 'daily';
             }elseif($jenis == 'wedding-car'){
                $urk = 'wedding';
             }
?>
<div class="card">
    <div class="card-body">
        <form action="<?=$jenis?>" method="POST" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Nama</label>
                        <input type="hidden" name="jenis" value="<?=$jenis?>">
                        <input type="text" class="form-control" name="nama" required>
                    </div>
                </div>
                <?php if(isset($kategori)) : ?>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Kategori</label>
                        <select name="id_daily_kategori" class="form-control">
                            <?php foreach($kategori as $r) : ?>
                            <option value="<?=$r['id_daily_kategori']?>"><?=$r['judul']?></option>
                            <?php endforeach ?>
                        </select>
                    </div>
                </div>
                <?php endif; ?>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="message-text" class="control-label">Gambar</label>
                        <input type="file" class="form-control" name="lopoFile" required>
                        <small style="color:red">*) ukuran gambar minimal 500 px x 260 px</small>
                    </div>
                </div>
                <div class="col-md-12">
                    <button type="submit" id="btn-daily-car" class="btn btn-primary"><i class="fa fa-paper-plane"></i>
                        Simpan</button>
                </div>
            </div>
        </form>
    </div>
</div>
<?php
	break;
	case "edit":
?>
<div class="card">
    <div class="card-body">
        <form action="<?=$jenis?>" id="form-daily-car" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="id_daily_car" value="<?php echo $data['id_daily_car'] ?>">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Nama</label>
                        <input type="text" class="form-control" name="nama" value="<?php echo $data['judul'] ?>">
                    </div>
                </div>
                <?php if(isset($kategori)) : ?>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Kategori</label>
                        <select name="id_daily_kategori" class="form-control">
                            <?php foreach($kategori as $r) : ?>
                            <option value="<?=$r['id_daily_kategori']?>"
                                <?=($r['id_daily_kategori'] == $data['id_daily_kategori'])? 'selected' : '' ?>>
                                <?=$r['judul']?></option>
                            <?php endforeach ?>
                        </select>
                    </div>
                </div>
                <?php endif; ?>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Deskripsi</label>
                        <br>
                        <?php
                         if($jenis == 'daily-car'){
                            $urk = 'daily-description';
                         }elseif($jenis == 'wedding-car'){
                            $urk = 'wedding-description';
                         }
                        ?>
                        <a class="btn btn-sm btn-info mb-2" href="<?=$urk?>-add-<?=$data['id_daily_car']?>"><i
                                class="fa fa-plus" aria-hidden="true"></i> Tambah</a>
                        <div class="table-responsive">
                            <table id="my_table2" class="table table-sm table-bordered">
                                <thead class="bg-info">
                                    <tr>
                                        <th width="10%" class="center">No</th>
                                        <th width="70%" class="center">Description</th>
                                        <th width="20%" class="center">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $no = 1;
                                        foreach($desc as $r){
                                    ?>
                                    <tr>
                                        <td><?=$no?></td>
                                        <td><?php echo  $r['deskripsi']; ?></td>
                                        <td align="center" width="20%">
                                            <a href="<?=$urk?>-edit-<?php echo $r['id_daily_description']; ?>"
                                                class="btn btn-warning btn-sm " role="button" aria-pressed="true"
                                                style=""> <i class="fa fa-pencil"></i>
                                            </a>
                                            <a onClick="javascript: return confirm('Data yang Sudah di Hapus TIDAK BISA Dikembalikan Kembali. Apakah Anda yakin ingin Menghapus Data Ini!!');"
                                                href="<?=$urk?>-delete-<?php echo $r['id_daily_description']; ?>"
                                                class="btn btn-danger btn-sm" role="button" aria-pressed="true"
                                                style=""> <i class="fa fa-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php
                                    $no++;
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="message-text" class="control-label">Gambar </label>
                        <input type="file" class="form-control" name="lopoFile">
                        <div class="" id="img-lopo">
                            <img style="max-height:200px" src="../images/daily_car/<?php echo $data['gambar'] ?>">
                        </div>
                    </div>
                </div>
                <input type="submit" id="btn-daily-car" class="btn btn-primary" value="Simpan Data">
            </div>
        </form>
    </div>
</div>

<?php
		break;  
	}
?>