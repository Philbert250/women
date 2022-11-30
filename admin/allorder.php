<?php
include 'navbar.php'; 
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
                    <h4 class="card-title">All order, JIBU</h4>
                    </div>
                  </div>
                  <div class=" table-border-style">
                        <div class="table-responsive">
                            
                  <br>
                  <br>
                        <table id="zero_config" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product Ordered</th>
                                        <th>Agent Ordered</th>
                                        <th>Quantity Ordered</th>
                                        <th>ordered_time</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                    $quer=mysqli_query($conn,"SELECT * FROM ordertable");
                                    while ($row=mysqli_fetch_array($quer)){
                                    ?>
                                    <tr>
                                        <td>
                                        <?php
                                            $productid=$row['product_id'];
                                            $quertwo=mysqli_query($conn,"SELECT * FROM product WHERE product_id=$productid");
                                            $rowtwo=mysqli_fetch_array($quertwo);
                                            echo $rowtwo['product_name'] ;
                                        ?></td>
                                        <td>
                                        <?php
                                            $agentid=$row['agent_id'];
                                            $quertwo=mysqli_query($conn,"SELECT * FROM agent WHERE agent_id=$agentid");
                                            $rowtwo=mysqli_fetch_array($quertwo);
                                            echo $rowtwo['firstname'] ;
                                        ?>
                                        <?php echo $rowtwo['lastname'] ?>
                                        </td>
                                        <td><?php echo $row['product_quantity'] ?></td>
                                        <td><?php echo $row['timeordered'] ?></td>
                                        <td><?php echo $row['status'] ; ?></td>
                                        <td>
                                        <a class="btn btn-success"  href="available.php?makeapprove=<?php echo $row['order_id']; ?>"  id="red">Approved</a>   
                                        <a class="btn btn-danger"  href="available.php?noteapprove=<?php echo $row['order_id']; ?>"  id="red">Not Approved</a>   
                                         </td>

                                    </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                        </table>
                        </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <?php
include 'footer.php'; 
?>