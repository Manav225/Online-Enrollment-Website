<?php

    session_start();

    include_once 'dbh.inc.php';

    if(isset($_POST['submit'])){

        $name = mysqli_real_escape_string($conn, $_POST['school_name']);
        $address = mysqli_real_escape_string($conn, $_POST['school_address']);
        $contact = mysqli_real_escape_string($conn, $_POST['school_contact']);

        if(!(
            empty($name) ||
            empty($address)  ||
            empty($contact)
        )){
            $schoolQuery = "UPDATE school SET school_name='$name', school_address='$address', contact_number='$contact' WHERE school_id=1;";
            if(mysqli_query($conn, $schoolQuery)){
                header("Location: ../admin_dashboard.php?school_edit=success");
                exit();
            }
            else{
                header("Location: ../admin_dashboard.php?school_edit=databaseerror");
                exit();
            }
        }
        else{
            header("Location: ../admin_dashboard.php?school_edit=error");
            exit();
        }

        

    }
