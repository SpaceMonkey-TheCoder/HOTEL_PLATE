<?php
ob_start();
$nameErr = $mailErr = $phoneErr = $passErr = $ageErr = $positionErr = $photoErr = "";
$name = $mail = $phone = $pass = $age = $position = $photo = "";

function purify($data){
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);

  return $data;
  }

//if(isset($_POST["submit"])){


   if($_SERVER['REQUEST_METHOD'] == 'POST'){

     if(empty($_POST["name"])){
      $nameErr = "Name Is Required";
    }
    else{
      if(!preg_match("/^[a-zA-Z ]*$/", $_POST["name"])){
        $nameErr = "Only Letter and Space Allow";
      }
    }

    if(empty($_POST["mail"])){
      $mailErr = "E-mail Is Required";
    }
    else{
      if(!filter_var($_POST["mail"],FILTER_VALIDATE_EMAIL)){
        $mailErr = "Invalid Email Formate";
      }
    }

    if(empty($_POST["phone"])){
      $phoneErr = "Phone Number Is Required";
    }
    else{
      if(!preg_match("/^[0-9]*$/", $_POST["phone"])){
        $phoneErr = "Only Number Allow";
      }
    }

    if(empty($_POST["pass"])){
      $passErr = "Password Is Required";
    }
    else{
      $pass = purify($_POST['pass']);
    }

    if(empty($_POST["age"])){
      $ageErr = "Age Is Required";
    }
    else{
		if(!preg_match("/^[0-9]*$/", $_POST["age"])){
        $ageErr = "Only Number Allow";
      }
    }

    if(empty($_POST["position"])){
      $positionErr = "Your Position Is Required";
    }
    else{
		if(!preg_match("/^[a-zA-Z ]*$/", $_POST["position"])){
        $positionErr = "Only Letter and Space Allow";
      }
    }

    if(empty($_POST["photo"])){
      $photoErr = "Your Photo Is Required";
    }
    else{
      $photo = purify($_POST['fileToUpload']);
    }

     $name = purify($_POST['name']);
     $email = purify($_POST['mail']);
     $phone = purify($_POST['phone']);
     $pass = purify($_POST['pass']);
     $age = purify($_POST['age']);
     $position = purify($_POST['position']);
     $photo = purify($_POST['fileToUpload']);






   $servername = "localhost";
   $username = "root";
   $password = "";
   $dbname = "wtproject";

   // Create connection
   $conn = mysqli_connect($servername, $username, $password, $dbname);
   // Check connection
   if (!$conn) {
       die("Connection failed: " . mysqli_connect_error());
   }

if(!empty($_POST["mail"])){

 $sql = "INSERT INTO agent (a_name, a_email, a_pass, a_phone, a_age, a_position, a_photo)
 VALUES ('$name', '$mail', '$pass', '$phone', '$age', '$position', '$photo')";

     if (mysqli_query($conn, $sql)) {
       echo "<script>alert('Successfully Register!');</script>";
       header("Location: index.php");
}
 else {
   echo "Error: " . $sql . "<br>" . $conn->error;
 }
}
 else{
   header("location:agent_reg.php");
 }

 mysqli_close($conn);
}

  ?>


<!DOCTYPE html>

<html>
<head>
  <title> Agent Registration </title>

  <style>
        header
        {
          padding: 20px;
          text-align: center;
          background-color: orange;
          color: black;
          text-transform: uppercase;
          letter-spacing: 8px;
          font-family: impact;
          font-weight: lighter;
          font-size: 32px;
          background-color:#2ECC71;
        }

        div {
          opacity: 0.8;
          border-radius: 4px;
          background-color: #ffcc99;
          margin-top: 2%;
          margin-left: 33%;
          margin-right: 35%;
          padding: 20px;
          width: 600px;
          text-indent: 230px;
        }

        .container{
          opacity: 0.8;
          border-radius: 4px;
          background-color: #F5B7B1;
          margin-top: 4%;
          margin-left: 52.5%;
          margin-right: -30%;
          padding: 20px;
          width: 600px;
          text-align: center;
        }

        body{
          background-image: url("img/30.jpg");
          background-size: cover;
          background-repeat: no-repeat;
          background-attachment: fixed;
        }

        h1{
          font-family: impact;
          font-weight: lighter;
          text-transform: uppercase;
        }

        label{
          margin-top: 10px;
          margin-bottom: 10px;
          display: inline-block;
          float: left;
          clear: left;
          width: 250px;
          text-align: center;
          font-family: calibri;
          font-weight: lighter;
          text-transform: uppercase;
        }

        .btn{
          background-color: green;
          padding: 15px 32px;
          color: white;
          border: none;
          text-decoration: none;
          text-transform: uppercase;
          font-weight: 500;
          text-align: center;
          margin-left: 25%;
          margin-top: 50px;
        }

        .btn:hover{
          background-color: #00cc00;
        }

        input {
          border-radius: 0px;
          border: none;
          text-align: center;
          padding: 5px;
          margin-top: 10px;
          margin-left: -10px;
          margin-bottom: 10px;
          width: 300px;
          display: inline-block;
          float: left;
        }

        form{
          float:left;
        }

        a{
          text-decoration: none;
          color: black;
        }

        ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
        float: right;
            }

      li {
          float: left;
          }

      li a {
          display: block;
          color: white;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
            }

      li a:hover {
          background-color: #111;
            }

          li a:hover:not(.active){
            background-color:#D6EAF8;
              }
          footer{
            text-align: center;
            position: fixed;
            left: 45%;
            bottom: 0%;
              }
        .error {
        	color: #FF0000;

        	}
        </style>

</head>

<body>

  <header> sala_dia_dhaka </header>
  <ul>
    <li style="margin-top:00px;"><a class = "active" href="index.php">LOG IN</a></li>


  </ul>

    <form class ="container"  method = "post" action = "<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
      <label>Name</label>
      <span class="error"><?php echo $nameErr;?></span>
      <input type="text" name = "name" placeholder="Your Name">
      <label>Email</label>
      <span class="error"><?php echo $mailErr;?></span>
      <input type="email" name = "mail" placeholder="ex: someone@domain.com">
  	  <label>password</label>
      <span class="error"><?php echo $passErr;?></span>
      <input type="password" name = "pass" placeholder="Password">

	  <!--
      <label for="gender">Gender</label>
	  <input type="radio" name="gender" value="male" checked="checked">Male
	  <input type="radio" name="gender" value="female">Female
	  -->

	    <label>Phone </label>
      <span class="error"><?php echo $phoneErr;?></span>
      <input type="text" name = "phone" placeholder="ex: 01710XXXXXX">
      <label>Age</label>
      <span class="error"><?php echo $ageErr;?></span>
      <input type="text" name = "age" placeholder="Your Age">
	    <label>Position</label>
      <span class="error"><?php echo $positionErr;?></span>
      <input type="text" name = "position" placeholder="Your Position In Hotel">
	    <label>Photo</label>
      <span class="error"><?php echo $photoErr;?></span>
	    <input type="file" name="fileToUpload" id="fileToUpload">


      <input class = "btn" style = "width: 165px; margin-left: 215px" type = "submit" value = "Register">


    </form>

<footer style = "font-family:calibri; letter-spacing:2px; background: orange; text-transform: uppercase;"> Copyright &copy 2018 </footer>
</body>

</html>
