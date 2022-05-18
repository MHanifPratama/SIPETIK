<?php
session_start();
if(!isset($_SESSION['login_admin'])){
  header('Location: login_admin.php');
  exit;
} 
?>
<!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Sistem Penjualan Tiket">
        <meta name="author" content="Hanif">
        <title>SIPETIK</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link href="styles.css" rel="stylesheet">

        <body>
            <!-- Sidebar -->
            <nav class="sidebar d-flex flex-nowrap col-md-3 col-lg-2 d-md-inline bg-light">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
                        <span class="fs-4">SIPETIK</span>
                    </a>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="index_admin.php" class="nav-link link-dark btn-toggle"> Home
                            </a>
                        </li>
                        <li>
                            <a href="supir.php" class="nav-link link-dark btn-toggle"> Tambah Supir
                            </a>
                        </li>
                        <li>
                            <a href="tipe_bus.php" class="nav-link link-dark btn-toggle"> Tipe Bus
                            </a>
                        </li>
                    </ul>
                    <hr>
                    <div class="dropdown">
                        <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://avatars.githubusercontent.com/u/79374942?v=4" alt="" width="32" height="32" class="rounded-circle me-2">
                            <strong>Admin</strong>
                        </a>
                        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                            <li><a class="dropdown-item" href="#">Pengaturan</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="logout_admin.php">Keluar</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End of Sidebar -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        </body>

    </html>
