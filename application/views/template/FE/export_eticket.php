<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <script type="text/javascript">

            function printPage(id) {
                //alert('successfully');
                var html = "<fieldset>";
                html += document.getElementById(id).innerHTML;
                html += "</fieldset>";
                var printWin = window.open('', '', 'left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status =0');
                printWin.document.write(html);
                printWin.document.close();
                printWin.focus();
                printWin.print();
                printWin.close();

                var html = "<html>";
                html += "<head>";
                // html+="<style type='text/css'>.mytable{border:1px solid #ccc;}.mytable tr{background-color:#008000;color:#FFF;}</style>";
                html += "<link rel='Stylesheet' type='text/css' href='<?php echo base_url(); ?>bootstrap/css/bootstrap.css' media='print' />";
                html += "<link rel='Stylesheet' type='text/css' href='<?php echo base_url(); ?>bootstrap/css/bootstrap-responsive.css' media='print' />";
                html += "<link rel='Stylesheet' type='text/css' href='<?php echo base_url(); ?>bootstrap/css/style.css' media='print' />";
                html += "<link rel='Stylesheet' type='text/css' href='<?php echo base_url(); ?>bootstrap/css/demo_table_jui.css' media='print' />";
                html += "</head>";
                html += document.getElementById(id).innerHTML;
                html += "</html>";
           }
        </script>
    </head>
    <body>
         <fieldset id="report" style="border:1px solid #239DA9 ;margin: 0 auto;width:96%;height: auto; padding:20px;border-radius:5px;">
                <div>
                    <?php echo '<br/><div style="float:right;color:#239DA9;width:40%;text-align:right; margin-right: 15%; margin-top:2%;"><span>Print Date:</span>' . '<span style="color:#3488CC;"> ' . date("D/M/Y") . '</span><br/>';
                    ?>
                    Print &nsp;
                   <img src="<?php echo base_url(); ?>assets/img/FE/printer.gif" align="center" onClick="return printPage('report');" id="image"  alt="image" title="Print"/>
               </div>
               <div style=" height: 50px;  margin:10px;">
                <img src="<?php echo base_url(); ?>assets/img/FE/cg-logo.png" align="center"   alt="logo" />
              </div>
        <div>
        <?php
              echo '<h1 style="color: #239DA9;
                    font-family: verdana;
                    font-size: 20px;
                    font-weight: bold;
                    text-align: center;">E-ticket Masterbookingform.com</h1></div>';
         ?>
                <?php 
               // $passengerWith = '';
                foreach ($eticket_collection as $value){
                   $passengerWith = unserialize($value->pbk_pass_come_with);
                ?>
                <div>
                    <img src="<?php echo base_url(); ?>assets/img/FE/etichet/booking_type.PNG" align="center"   alt="E-ticket" style="margin-left:100px;"/><br/>
                   <p style="margin-left:120px;"> 
                    - Country: Cambodia <br/>
                    - Type of Booking :<?php echo $value->bk_type;?><br/>
                    - Festival Type:<?php echo $value->cuscon_ftv_id; ?><br/>
                </div>
                <div>
                    <img src="<?php echo base_url(); ?>assets/img/FE/etichet/booking_information.PNG" align="center"   alt="E-ticket" style="margin-left:100px;"/><br/>
                <p style="margin-left:120px;font-size:15px;"> 
                    
                    - Start Date: <?php echo $value->bk_date;?> <br/>
                    - End Date: <?php echo $value->bk_arrival_date;?><br/>
                    - Amout of people: <?php echo $value->bk_total_people;?> <br/>
                    - Activity Type: <?php echo $value->act_name; ?><br/>
                    - Accommodation: <?php echo $value->acc_name; ?><br/>
                    - Transportation: By bus<br/>
                    - Extra Product: two can of beer,humberger<br/>
                    - Personal of Accompany: <br/>
                </p>
                <p style="margin-left:130px;font-size:15px;">
                <?php 
                $accompany = mod_index::getAccompany($passengerWith);
               // var_dump($accompany->result());
                foreach($accompany->result() as $rows){
                    echo 'Frist Name :'.$rows->pass_fname.'<br />';
                    echo 'Last Name :'.$rows->pass_lname.'<br />';
                    echo 'Email :'.$rows->pass_email.'<br />';
                    echo 'Phone Number :'.$rows->pass_phone.'<br />';
                    echo 'Address :'.$rows->pass_address.'<br />';
                    echo 'Company :'.$rows->pass_company.'<br />';
                    echo 'Gender :'.$rows->pass_gender.'<br />';
                }
                   // $accompany = unserialize($rows->pbk_pass_come_with);
                    //var_dump($accompany);
                   // echo $rows->pass_fname.'<br/>';
                //}?>
            </p>
                </p>
                </div>
                <?php }?>
              </fieldset>
    
    </body>

     