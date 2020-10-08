<?php


 include "server.php";
    $username = 'nam';
    $password = '123';

    

    $sql = "SELECT * FROM account WHERE username='$username' and password='$password' ";

    $response = mysqli_query($conn, $sql);

    $result = array();
    $result['login'] = array();
    
    if ( mysqli_num_rows($response) === 1 ) {
        
        $row = mysqli_fetch_assoc($response);

       
            
            $index['name'] = $row['username'];
            $index['email'] = $row['email'];
            $index['id'] = $row['id'];

            array_push($result['login'], $index);

            $result['success'] = "1";
            $result['message'] = "success";
            echo json_encode($result);

            mysqli_close($conn);

        

    }



?>