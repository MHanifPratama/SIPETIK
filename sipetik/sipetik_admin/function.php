<?php
$conn = mysqli_connect("localhost","root","","sipetik");
 function query($query){
     global $conn;
     $result = mysqli_query($conn,$query);
     $rows = [];
     while($rows = mysqli_fetch_array($result)){
         $rows[] = $rows;

     }
     return $rows;
 }
 function registrasi($data){
     global $conn;
     $email = htmlspecialchars( $data["email"]);
     $username = htmlspecialchars($data["username"]);
     $password = mysqli_real_escape_string($conn,$data["password"]);
     $passwordconf = mysqli_real_escape_string($conn,$data["confpassword"]);
     $temp = mysqli_query($conn,"SELECT username FROM akun_admin WHERE username = '$username'");
     $temp_email = mysqli_query($conn,"SELECT email FROM akun_admin WHERE email = '$email'");

     if(mysqli_fetch_assoc($temp_email)){
        echo "<script>
        alert('Email Sudah Ada');
        </script>";
        return false;
     }


     if(mysqli_fetch_assoc($temp)){
        echo "<script>
        alert('Username Sudah Ada');
        </script>";
        return false;
     }
     if($password !== $passwordconf){
         echo "<script>
                    alert('Password Tidak Sesuai');
                    </script>";
        return false;
     }
     $password = password_hash($password,PASSWORD_DEFAULT);
     mysqli_query($conn,"INSERT INTO akun_admin VALUES ('','$username','$password','','$email')");
     return mysqli_affected_rows($conn);
 }

 function tambah_data_supir($data){
    global $conn;
    $nama_supir = htmlspecialchars($data["namaSupir"]);
    $telepon_supir = htmlspecialchars( $data["noHp"]);
    if (empty($nama_supir) || empty($telepon_supir)) {
        echo "<script>
        alert('Mohon masukan data');
        </script>";
        return false;
      }
    mysqli_query($conn,"INSERT INTO supir VALUES ('','$nama_supir','$telepon_supir')");
    return mysqli_affected_rows($conn);
 }
 function hapus($id){
     global $conn;
     mysqli_query($conn,"DELETE FROM supir WHERE id_supir = $id");
     return mysqli_affected_rows($conn);
 }
//  function kueri ($query){
//      global $conn;
//      $result = mysqli_query($conn,$query);
//      $rows=[];
//      while($row = mysqli_fetch_assoc($result)){
//          $rows[] = $row;
//      }
//      return $rows;
//  }

 function ubah_data_supir($data){
    global $conn;
    $id = htmlspecialchars($data["id_supir_html"]);
    $nama = htmlspecialchars($data["namaSupir"]);
    $telepon_supir = htmlspecialchars( $data["noHp"]);
    mysqli_query($conn,"UPDATE supir SET id_supir = '$id',nama_supir = '$nama',nomor_hp_supir = '$telepon_supir' WHERE id_supir = $id");
    return mysqli_affected_rows($conn);
 }
