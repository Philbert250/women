<?php
include 'navbar.php'; 
if (isset($_POST['registerwoman'])){   
    $name=$_POST['name'];
    $gender=$_POST['gender'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $dob=$_POST['dob'];
    $location=$_POST['location'];
    $sql=mysqli_query($conn,"INSERT INTO women(
        name,
        gender,
        dob,
        email,
        phone,
        location
    ) VALUES (
        '$name',
        '$gender',
        '$dob',
        '$email',
        '$phone',
        '$location'
    )");
    if ($sql) {
        $successmessage .='Register  product, Successfull';	
    }
    else {
        $errormessage .= mysqli_error($conn);	    
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
                    <h4 class="card-title">Register New woman</h4>
                    </div>
                    <div class="col-md-6">
                        <a href="womanall.php" class=" float-right btn btn-primary mr-2">All Women</a>
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
                  <form method="post" action="" class="forms-sample">
                    <div class="row">
                        <div class=" col-md-4 col-xl-4 form-group">
                        <label for="exampleInputUsername1">Name</label>
                        <input type="text" name="name" class="form-control">
                        </div>
                        <div class=" col-md-4 col-xl-4 form-group">
                        <label for="exampleInputUsername1">Gender</label>
                        <select name="gender" class="form-control" id="">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                        </div>
                        <div class=" col-md-4 col-xl-4 form-group">
                        <label for="exampleInputUsername1">Phone</label>
                        <input type="text" name="phone" class="form-control">
                        </div>
                        <div class=" col-md-4 col-xl-4 form-group">
                        <label for="exampleInputUsername1">Email</label>
                        <input type="text" name="email" class="form-control">
                        </div>
                        <div class=" col-md-4 col-xl-4 form-group">
                        <label for="exampleInputUsername1">Date of birth</label>
                        <input type="date" name="dob" class="form-control">
                        </div>
                        <div class=" col-md-4 col-xl-4 form-group">
                        <label for="exampleInputUsername1">Location/cell</label>
                        <select name="location" class="form-control" id="">
                            <option value="Huye">Huye</option>
                            <option value="Tumba">Tumba</option>
                            <option value="Gisagara">Gisagara</option>
                        </select>
                        </div>
                    </div>
                    <button type="submit" name="registerwoman" class="btn btn-primary mr-2">New Woman</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>

        <?php
include 'footer.php'; 
?>