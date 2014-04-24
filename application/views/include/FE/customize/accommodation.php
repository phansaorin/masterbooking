<!-- start accommodation -->
<?php  echo form_open_multipart('site/customizes/accommodation', 'class="form-horizontal"'); ?>
	   <div class="col-sm-12 form-booking" id="accommodation">
	   		<h2>Choose Accommodation</h2>
	   		<hr>
	   		<div class="col-sm-12">
	   			<?php foreach ($recordAccommodation as $acc) {?>
	   					<div class="col-sm-3">
	   				<?php 
			            $accomodation_img = array('src' => 'assets/img/BE/hotel-sleeping-accomodation-md.png', 'alt' => 'accomodation','class' => 'img-thumbnail images-dashboard','title' => 'Accomodation'
			            );
			        ?>
			        <?php echo anchor('accommodation/list_record',img($accomodation_img)).br(1);?>
	   			</div>
	   			<div class="col-sm-9">
	   				<label><?php echo $acc['acc_name'];?></label>
	   				<p><?php echo $acc['acc_bookingtext'];?></p>
	   				<div class="form-group">
				        <label class="col-sm-2 control-label">Check In :</label>
				        <div class="col-sm-4">
				            <select class="form-control">
								<option> Monday to Friday </option>
								<option> Tuesday to Sunday </option>
								<option> Sunday to Wednesday </option>
							</select>
						</div>
						<label class="col-sm-2 control-label">Check Out :</label>
						<div class="col-sm-4">
							<select class="form-control">
								<option> Monday to Friday </option>
								<option> Tuesday to Sunday </option>
								<option> Sunday to Wednesday </option>
							</select>
				        </div>
			    	</div>
			    	<div class="form-group">
				        <label class="col-sm-3 control-label">Amount of Room :</label>
				        <div class="col-sm-3">
				            <select class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
				        </div>
			    	</div>
	   			</div>
	   			<?php }?>	
	   		</div> 			
	   		<button type="button" class="btn btn-primary btn-sm"> Back </button>
			<?php $input = array('name' => 'btnAccommodation', 'class' => 'btn btn-primary btn-sm', 'value' => ' Next '); echo form_submit($input);?>
			<p></p>
	   </div>
<?php echo form_close(); ?>
<!-- end accommodation -->