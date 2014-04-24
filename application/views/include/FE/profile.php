<div class="row">
                <div class="col-md-4">
                     <?php if ($profile->num_rows > 0) { ?>
                       <?php foreach($profile->result() as $row) { ?>
                                        <span>
                                           <h2>Welcome to :&nbsp; &nbsp;<?php 
                                                echo ucfirst($row->pass_fname).'&nbsp;'.strtoupper($row->pass_lname);
                                                ?></h2>
                                        </span>

                       <div class="table-responsive">
                              <table class="table table-bordered">
                                <tr>
                                        <th>First Name</th> <td><?php echo $row->pass_fname; ?></td>
                                </tr>
                                <tr>
                                        <th>Last Name</th> <td><?php echo $row->pass_lname; ?></td>
                                </tr>
                                <tr>
                                        <th>Email</th> <td><?php echo $row->pass_email; ?></td>
                                </tr>
                                <tr>
                                        <th>Phone number </th> <td><?php echo $row->pass_phone; ?></td>
                                </tr>
                                <tr>
                                        <th>Address</th> <td><?php echo $row->pass_address; ?></td>
                                </tr>
                                 <tr>
                                        <th>Company</th> <td><?php echo $row->pass_company ; ?></td>
                                </tr>
                                <tr>
                                        <th>Gender</th> <td><?php echo $row->pass_gender; ?></td>
                                </tr>
                                
                            </table>
                       </div>
                    <?php }?>
                <?php }?>
                  <?php $this->load->view(INCLUDE_FE_MODEL."updateprofile"); ?>

                    <a href="#"><button class="btn btn-default" data-toggle="modal" data-target=".updateprofileuser">Edit Profile</button></a>		
                            
                </div>
                  
            <div class="col-md-8">
                    <div class="table-responsive">
                        <h2>Passenger Booking information</h2>
                        <table class="table table-bordered">
                            <tr> 
                                <!-- <th>Passenger come with</th> -->
                                <th>Booking date</th>
                                <th>Arrival date</th>
                                <th>Booking total people</th>
                                <th>Booking pay date</th>
                                <th>Booking pay prices</th>
                            </tr>
                        <tbody class="tbl_body">	
                    <?php if ($passengerbooking_info->num_rows > 0) { ?>
                       <?php foreach($passengerbooking_info->result() as $row) { ?>
                            <tr>
                                    <!-- <td><?php// echo $row->pbk_pass_come_with; ?></td> -->
                                    <td><?php echo $row->bk_date; ?></td>
                                    <td><?php echo $row->bk_arrival_date; ?></td>
                                    <td><?php echo $row->bk_total_people; ?></td>
                                    <td><?php echo $row->bk_pay_date; ?></td>
                                    <td><?php echo $row->bk_pay_price; ?></td>
                            </tr>
                       <?php }?>
                <?php }?>
                        </tbody>
                        
                    </table>
                        <?php $this->load->view(INCLUDE_FE_MODEL."passenger_detailbookingform"); ?>

                    <a href="#"><button class="btn btn-default" data-toggle="modal" data-target=".passenger_detailbookingform">Passenger Detail Booking</button></a>		
                     
                 </div>   
            </div>
       </div>