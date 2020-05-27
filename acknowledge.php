<?php
	$fname=strtoupper($_POST["first_name"]);
	$lname=strtoupper($_POST["last_name"]);
 	$email=$_POST["email"];
	$phone=$_POST["phone"];
	$college_id=strtoupper($_POST["c_id"]);
    $college_name=strtoupper($_POST["c_name"]);
    $college_city=strtoupper($_POST["college_city"]);

?>

<br/>
<br/>

<?php
   

   if(strlen($phone)>=10 && validate_phone_and_mail($phone,$email))
   {
    insert($phone,$fname,$lname,$college_id,$college_name,$college_city,$email);
   }else{
       if(strlen($phone)<10)
       {
        echo "<center style=\"color:red;font-size:20px;font-weight:bolder;\">Registration Unsuccessfull</center><br/>";
           echo "<center>Phone number not valid</center>";
       }else {
        echo "<center style=\"color:red;font-size:20px;font-weight:bolder;\">Registration Unsuccessfull</center><br/>";
        echo "<center>Email or Phone already exists </center>";
       }
        
   }

    function insert($phone,$fname,$lname,$college_id,$college_name,$college_city,$email)
    {
    $servername = "localhost";
    $username = "root";
    $password = "root";
    $dbname = "techofesdb";
    $rand_no = rand(10,100);
    $pay_at_hospi = substr($phone, 4,9 ).$rand_no;


// Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
    if (!$conn) {
        die("DB Connection failed: ");
    }

    $sql = "INSERT INTO tfest (phone, name, college_id,college_name,college_place,mail_id,pay_at_hospi_id) VALUES ('".$phone."','".$fname." ".$lname."','".$college_id."','".$college_name."','".$college_city."','".$email."','".$pay_at_hospi."');" ;                                                      

    if (mysqli_query($conn, $sql)) {
        echo "<center style=\"color:green;font-size:20px;\">Registration Successfull</center><br/>";
        echo "<h3 style=\"text-align: center;color:white;font-weight:bolder\">TAKE A SCREENSHOT</h3></br>
        <center><b style=\"color:white;text-align: center; \">";
        echo "Name                    :".$fname." ".$lname."<br />";
        echo "Phone                   :".$phone."<br />";
        echo "E-Mail ID               :".$email."<br />";
        echo "College Roll no   :".$college_id."<br />";
        echo "College name            :".$college_name."<br />";
        echo "College city            :".$college_city."<br /><br/>";
        echo "</b></center>";
        echo ("<center><b style=\"font-weight:700;color:white;font-size:20px;color:green\">PAY_AT_HOSPI_ID :".$pay_at_hospi."</b><center><br/><br/>");
        echo ("<h4>Note : </h4>
        <ol>
          <li>Show the PAY_AT_HOSPI ID in the Hospitality desk and pay the entry fee during techofes.</li>
          <li>After paying entry fees at hospitality desk,Unique T-ID is given</li>
          <li>Using T-ID you can attend the respective events</li>
        </ol>");
    } else {
        echo "<center style=\"color:red\">Registration Unuccessfull</center><br/>";
        echo "Error occoured ! Try again later !";
    }

    mysqli_close($conn);
    
    }

    function validate_phone_and_mail($temp_phone, $temp_mail){
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $dbname = "techofesdb";

// Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
        if ($conn->connect_error)
        {
        echo "<center style=\"color:red\">Registration Unuccessfull</center><br/>";
        echo "<center> DB error</center>";
        die("DB Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM online_reg where phone='".$temp_phone."' or mail_id='".$temp_mail."';";
        $result = $conn->query($sql);
        if ($result->num_rows == 0){
            $conn->close();
            return 1;
        }else return 0;

    }
?>

                            