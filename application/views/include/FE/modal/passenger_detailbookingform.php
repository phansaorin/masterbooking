<div class="modal fade passenger_detailbookingform" tabindex="-1" role="dialog" aria-labelledby="passenger_detailbookingform" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <center><h2>Details information of passenger booking form</h2></center>   
                    <div class="table-responsive">
                          <table class="table table-bordered">
                           <?php if ($passengerbooking_info->num_rows > 0) { ?>
                            <?php foreach($passengerbooking_info->result() as $row) { ?>
                      
                            <!-- <tr>
                                    <th>Passenger come with </th> <td><?php // echo $row->pbk_pass_come_with  ; ?></td> 
                            </tr> -->
                            <tr>
                                    <th>Booking date</th> <td><?php echo $row->bk_date; ?></td>
                            </tr>
                            <tr>
                                    <th>Arrival date</th> <td><?php echo $row->bk_arrival_date; ?></td>
                            </tr>
                            <tr>
                                    <th>Booking total people</th> <td><?php echo $row->bk_total_people; ?></td>
                            </tr>
                            <tr>
                                    <th>Booking pay date</th> <td><?php echo $row->bk_pay_date ; ?></td>
                            </tr>
                             <tr>
                                    <th>Booking pay prices</th> <td><?php echo $row->bk_pay_price ; ?></td>
                            </tr>
                            <tr>
                                    <th>Payment</th> <td><?php echo $row->bk_pay_status; ?></td>
                            </tr> 	
                             <!-- <tr>
                                    <th>Customize accommodation</th> <td><?php //echo $row->cuscon_accomodation; ?></td>
                             </tr> -->
                              <!-- <tr>
                                    <th>Customize activities</th> <td><?php // echo $row->cuscon_activities ; ?></td>
                             </tr> -->
                             <!-- <tr>
                                    <th>Customize transportation</th> <td><?php // echo $row->cuscon_transportation; ?></td>
                             </tr> -->
                             <tr>
                                    <th>Package start date</th> <td><?php echo $row->pkcon_start_date; ?></td>
                             </tr>
                             <tr>
                                    <th>Package end date</th> <td><?php echo $row->pkcon_end_date ; ?></td>
                             </tr>
                              <!-- <tr>
                                    <th>Package accommodation</th> <td><?php // echo $row->pk_accomodation ; ?></td> 	 	
                             </tr>
                              <tr>
                                    <th>Package activities</th> <td><?php // echo $row->pk_activities ; ?></td>
                             </tr>
                             <tr>
                                    <th>Package transportation</th> <td><?php // echo $row->pk_transportation ; ?></td>
                             </tr> -->
                             <tr>
                                    <th>Package description</th> <td><?php echo $row->pkcon_description ; ?></td>
                             </tr>
                             <tr>
                                    <th>Package original stock</th> <td><?php echo $row->pkcon_originalstock ; ?></td>
                             </tr>
                          
                     
                       <?php } ?>
                   <?php } ?>
                   </table>
             </div>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

</div>
  </div>
</div>