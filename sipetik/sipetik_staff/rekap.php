<?php
    require 'function.php';
    require 'sidebar.php';

$data_bus = mysqli_query($conn,"SELECT * FROM tiket,bus,jadwal WHERE tiket.id_bus = bus.id_bus AND bus.id_jadwal = jadwal.id_jadwal");
$data_laporan = mysqli_query($conn,"SELECT * FROM laporan");
if(isset($_POST["kirim_tanggal_laporan"])){
    if(tambah_data_laporan($_POST)>0){
        echo "<script>
                alert('Bus Berhasil Ditambahkan!');
                </script>";
        header("Location: rekap.php");
        exit();
    }
    else{
        echo mysqli_error($conn);
    }
}
?>
<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="table-responsive">Data Semua Bus
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No </th>
                        <th>Id Laporan</th>
                        <th>Tanggal</th>
                        <th>harga</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    foreach ($data_bus as $ambil) : ?>
                        <tr>
                            <td>
                                <?= $no++; ?>
                            </td>
                            <td>
                                <?= $ambil['id_tiket'] ?>
                            </td>
                            <td>
                                <?= $ambil['tanggal'] ?>
                            </td>
                            <td>
                                <?= $ambil['harga_tiket'] ?>
                            </td>
                            <td>                               
                        </td>
                        </tr>
                        <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <button type="button" class="btn btn-info btn-lg" data-bs-toggle="modal" data-bs-target="#tambah">Tambah Data Rekap</button>
        <div class="table-responsive"> Data Rekap per Tanggal
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No </th>
                        <th>Id Laporan</th>
                        <th>Tanggal Laporan</th>
                        <th>Total Tiket</th>
                        <th>Total Harga</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    foreach ($data_laporan as $ambil) : ?>
                        <tr>
                            <td>
                                <?= $no++; ?>
                            </td>
                            <td>
                                <?= $ambil['id_laporan'] ?>
                                <?php $tmp = $ambil['id_laporan'];?>
                            </td>
                            <td>
                                <?= $ambil['tanggal_laporan'] ?>
                            </td>
                            <td>
                                <?= $ambil['total_tiket'] ?>
                            </td>
                            <td>
                                <?= $ambil['total_harga'] ?>
                            </td>
                            <td>                               
                        </td>
                        </tr>
                        <?php endforeach; ?>
                        
                </tbody>
                
            </table>

        </div>
        
</div>
<!-- Modal -->
        <div class="modal fade" id="tambah">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Tambah Laporan </h4>
                        <button type="button" class="close" data-bs-dismiss="modal">&times;</button>
                    </div>
                    <form method="POST">
                            <div class="modal-body">
                            <input type="date" id="tanggal" name="tanggal" placeholder="Tanggal" class="form-control"required>
                            </div>
                            <button id="kirim_tanggal_laporan"name="kirim_tanggal_laporan" type="submit" class="btn btn-primary btn-lg btn-block">Kirim</button>
                    </form>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
        