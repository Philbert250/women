<?php
include 'navbar.php'; 
$seri_id=$_GET['updateagent'];

 if (isset($_POST['updateagent'])){
   
    $firstname=$_POST['firstname'];
    $lastname=$_POST['lastname'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $location=$_POST['location'];
    $role=$_POST['role'];
    $password=md5($_POST['password']);
    $confirmpassword=md5($_POST['confirmpassword']);
    if($_POST['password']==''){
        $sql=mysqli_query($conn,"UPDATE agent SET 
          firstname='$firstname',
          lastname='$lastname',
          email='$email',
          phone='$phone',
          locaction='$location',
          role='$role'
          WHERE agent_id=$seri_id;");
        if ($sql) {
            $successmessage .='Update user Successefully';	
        }
        else {
            $errormessage .='Update user failed!';	    
        }
    }else {

    if ($confirmpassword==$password) {
        $sql=mysqli_query($conn,"UPDATE agent SET 
         firstname='$firstname',
          lastname='$lastname',
          email='$email',
          phone='$phone',
          locaction='$location',
          role='$role',
          password='$password' WHERE agent_id=$seri_id;");
        if ($sql) {
            $successmessage .='Update user Successefully';	
        }
        else {
            $errormessage .='Update user failed!';	    
        }
    }
    else {
        $errormessage .='two password not match failed!';	
    }
 } 
   
}
?>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                    <h4 class="card-title">Update Agent</h4>
                    </div>
                    <div class="col-md-6">
                        <a href="agent.php" class=" float-right btn btn-primary mr-2">All Agent</a>
                    </div>
                  </div>
                  <?php
                if ( isset($successmessage)) {
                    echo '
                    <div class="row">
                        <div class="col-md-12 col-xl-12">
                            <span style="color:white;  background:green; padding:8px;">'.$successmessage.'</span>
                        </div>
                    </div>
                    <br>
                    ';
                }
                ?>
                <?php
                if ( isset($errormessage)) {
                    echo '
                    <div class="row">
                        <div class="col-md-12 col-xl-12">
                            <span style="color:white;  background:red; padding:8px;">'.$errormessage.'</span>
                        </div>
                    </div>
                    <br>
                    ';
                }
                ?>
                <?php
                if (isset($_GET['updateagent'])) {
                    $ser_id=$_GET['updateagent'];
                    $quer=mysqli_query($conn,"SELECT * FROM agent WHERE agent.agent_id=$ser_id");
                    while ($row=mysqli_fetch_array($quer)){

                        ?>
                
                  <form method="post" action="" class="forms-sample">
                    <div class="row">
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">First name</label>
                        <input type="text" name="firstname" value="<?php echo $row['firstname']; ?>" class="form-control">
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Last name</label>
                        <input type="text" name="lastname" value="<?php echo $row['lastname']; ?>" class="form-control">
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Email Address</label>
                        <input type="text" name="email" value="<?php echo $row['email']; ?>" class="form-control">
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Phone number</label>
                        <input type="text" name="phone" value="<?php echo $row['phone']; ?>" class="form-control">
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Location Address</label>
                        <input type="text" name="location" value="<?php echo $row['locaction']; ?>" class="form-control">
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Role</label>
                        <select name="role" class="form-control" id="">
                            <option value="<?php echo $row['role']; ?>"><?php echo $row['role']; ?></option>
                            <option value="agent">Agent</option>
                        </select>
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Password</label>
                        <input type="password" name="password" class="form-control">
                        </div>
                        <div class=" col-md-6 col-xl-6 form-group">
                        <label for="exampleInputUsername1">Confirm Password</label>
                        <input type="password" name="confirmpassword" class="form-control">
                        </div>
                    </div>
                    <button type="submit" name="updateagent" class="btn btn-primary mr-2">Update Agent</button>
                    <button type="reset" class="btn btn-light">Cancel</button>
                  </form>
                  <?php
                        } 
                    }
                    ?>
                </div>
              </div>
            </div>
          </div>
        </div>

        <?php
include 'footer.php'; 
?>