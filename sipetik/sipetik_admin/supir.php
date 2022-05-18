<?php
    require_once "sidebar.php";
    require "function.php";
    $data_p = mysqli_query($conn,"SELECT * FROM supir");

    if(isset($_POST["kirim_supir"])){
        if(tambah_data_supir($_POST)>0){
            echo "<script>
                    alert('Supir Berhasil Ditambahkan!');
                    </script>";
            header("Location: supir.php");
            exit();
                    
        }
        else{
            echo mysqli_error($conn);
        }
    }
    if(isset($_POST["kirim_perubahan"])){
        if(ubah_data_supir($_POST)>0){
            echo "<script>
                    alert('user baru berhasil diubah!');
                    </script>";
            header("Location: supir.php");
            exit();
                    
        }
        else{
            echo mysqli_error($conn);
        }
    }
?>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="styles.css" rel="stylesheet">
    <!-- DataTales Example -->
    <div class="card mb-4 col-md-7 ms-sm-auto col-lg-7 px-md-4">
        <div class="card-header py-3">
        </div>
        <div class="card-body mb-4 col-md-7 ms-sm-auto col-lg-7 px-md-4">
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#tambah">Tambah Data</button>
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Id</th>
                            <th>Nama Supir</th>
                            <th>Nomor Hp</th>
                            <th>Aksi </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        
                        $no = 1;
                        foreach ($data_p as $ambil) : ?>
                            <tr>
                                <td>
                                    <?= $no++; ?>
                                </td>
                                <td>
                                    <?= $ambil['id_supir'] ?>
                                </td>
                                <td>
                                    <?= $ambil['nama_supir'] ?>
                                </td>
                                <td>
                                    <?= $ambil['nomor_hp_supir'] ?>
                                </td>
                                <td>
                                <button class="btn btn-danger btn-lg" href="hapus.php?id=<?=$ambil["id_supir"];?>" onclick="return confirm('Apakah Ingin Menghapus Data ini ?')">Hapus</button>

                                <a class="btn btn-info btn-lg" id="tombolUbah" data-toggle="modal" data-target="#ubah" data-nama="<?=$ambil["nama_supir"];?>" data-id="<?=$ambil["id_supir"];?>"
                                data-hp="<?=$ambil["nomor_hp_supir"];?>">Ubah</button>                                
                            </td>
                            </tr>
                            <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<!-- Modal -->
            <div class="modal fade" id="tambah">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Tambah Supir </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <form method="POST">
                            <div class="modal-body">
                                <input type="text" id="namaSupir" name="namaSupir" placeholder="Nama Supir" class="form-control"required>
                                <input type="number" id="noHp" name="noHp" placeholder="Nomor HP" class="form-control" required> 
                            </div>
                            <button id="kirim_supir"name="kirim_supir" type="submit" class="btn btn-primary btn-lg btn-block">Kirim</button>
                        </form>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="ubah">
            <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Ubah Supir </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <form method="POST">
                            <div class="modal-body">
                                <input type="hidden" name="id_supir_html" id="id_supir_html">
                                <input type="text" id="namaSupir" name="namaSupir" placeholder="Nama Supir" class="form-control"required>
                                <input type="number" id="noHp" name="noHp" placeholder="Nomor HP" class="form-control" required> 
                            </div>
                            <button id="kirim_perubahan"name="kirim_perubahan" type="submit" class="btn btn-primary btn-lg btn-block">Ubah</button>
                        </form>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>
            
        <script>
            $(document).on("click","#tombolUbah",function(){
                let id = $(this).data('id');
                let nama = $(this).data('nama');
                let hp = $(this).data('hp');
                $(".modal-body #id_supir_html").val(id);
                $(".modal-body #namaSupir").val(nama);
                $(".modal-body #noHp").val(hp);
            });
        </script>