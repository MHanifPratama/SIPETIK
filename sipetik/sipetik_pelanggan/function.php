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
     $email = $data["email"];
     $username = $data["username"];
     $password = mysqli_real_escape_string($conn,$data["password"]);
     $passwordconf = mysqli_real_escape_string($conn,$data["confpassword"]);
     $temp = mysqli_query($conn,"SELECT username FROM akun_user WHERE username = '$username'");
     $temp_email = mysqli_query($conn,"SELECT email FROM akun_user WHERE email = '$email'");

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
     mysqli_query($conn,"INSERT INTO akun_user VALUES ('','$username','$password','','$email')");
     return mysqli_affected_rows($conn);
 }
