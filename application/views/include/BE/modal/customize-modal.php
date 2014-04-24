<input type="hidden" name="customize-date" id="cus-date" value="<?php echo $this->uri->segment(4); ?>" />
<!-- Add activities -->
<div class="modal fade modal-cusaddactivities" tabindex="-1" role="dialog" aria-labelledby="cusactivitiesModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <?php echo form_open("customize/add_activities/".$this->uri->segment(3).'/'.$this->uri->segment(4), 'class="frm_cus_act"'); ?>
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="cusactivitiesModalLabel">Add Activities to Customize</h4>
      </div>
      <div class="modal-body modal-act-body">
        <div class="form-group">
          <label class="col-sm-5 control-label">Activities name <span class="require">*</span> :</label>
          <div class="col-sm-7">
            <?php
            echo form_dropdown('cusact', $cusSelectedAct, '', 'class="form-control actOnchange" data-url="'.base_url().'"');
            ?>
          </div>
          <div id="display_sub_ep_activities"></div>
        </div>
      </div>
      <div class="modal-footer modal-act-footer">
        <?php echo form_submit("btnsubmitcusact", "Save Activities", 'class="btn btn-primary"'); ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    <?php echo form_close(); ?>
    </div>
  </div>
</div>

<!-- Add accommodation -->
<div class="modal fade modal-cusaddaccommocation" tabindex="-1" role="dialog" aria-labelledby="cusaccommodationModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <?php echo form_open("customize/add_accommodation/".$this->uri->segment(3).'/'.$this->uri->segment(4), 'class="frm_cus_acc"'); ?>
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="cusaccommodationModalLabel">Add Accommodation to Customize</h4>
      </div>
      <div class="modal-body modal-acc-body">
        <div class="form-group">
          <label class="col-sm-5 control-label">Accommodation name <span class="require">*</span> :</label>
          <div class="col-sm-7">
            <?php
              echo form_dropdown('cusacc', $cusSelectedAcc, '', 'class="form-control accOnchange" data-url="'.base_url().'"');
            ?>
          </div>
          <div id="display_sub_ep_accommodation"></div>
        </div>
      </div>
      <div class="modal-footer modal-acc-footer">
        <?php echo form_submit("btnsubmitcusacc", "Save Accommodation", 'class="btn btn-primary"'); ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      <?php echo form_close(); ?>
    </div>
  </div>
</div>

<!-- Add transportation -->
<div class="modal fade modal-cusaddtransport" tabindex="-1" role="dialog" aria-labelledby="custransportModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <?php echo form_open("customize/add_transport/".$this->uri->segment(3).'/'.$this->uri->segment(4), 'class="frm_cus_tps"'); ?>
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="custransportModalLabel">Add Transportation to Customize</h4>
      </div>
      <div class="modal-body modal-tps-body">
        <div class="form-group">
          <label class="col-sm-5 control-label">Transportation name <span class="require">*</span> :</label>
          <div class="col-sm-7">
            <?php
              echo form_dropdown('custps', $cusSelectedTps, '', 'class="form-control tpsOnchange" data-url="'.base_url().'"');
            ?>
          </div>
          <div id="display_sub_ep_transport"></div>
        </div>
      </div>
      <div class="modal-footer modal-tps-footer">
        <?php echo form_submit("btnsubmitcustps", "Save Transportation", 'class="btn btn-primary"'); ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- modal for detail -->
<div class="modal fade modalDetials" tabindex="-1" role="dialog" aria-labelledby="modalDetialsLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="modalDetialsLabel">Details</h4>
      </div>
      <div class="modal-body modal-detail-body">
        &nbsp;
      </div>
      <div class="modal-footer modal-activities-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>