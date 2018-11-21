<script type="text/javascript">
  $(document).ready(function() {
    $('#dataTable').dataTable( {
       "order": [0, "asc"]
    } );
    $('#dataTable_filter').hide();
    $('#dataTable_length').hide();
    $('#dataTable_info').hide();
    $('#dataTable_paginate').hide();
    $('#hie').hide();
    //var x = document.getElementById('hide');
    //x.style.display = 'none';
} );

   
  function printClaimDtls() { 
    $('#hie').show();   
  var divToPrint = document.getElementById('divToPrint');

  var WindowObject = window.open('','Print-Window');
        WindowObject.document.open();
        WindowObject.document.writeln('<!DOCTYPE html>');
        WindowObject.document.writeln('<html><head><title></title>');

        WindowObject.document.writeln('<style type="text/css">@media print { .center { text-align: center;} .underline { text-decoration: underline; } p { display:inline; } .left { margin-left: 315px; text-align="left"; display: inline; } .right { margin-right: 375px; display: inline; } td.left_algn { text-align: left; } td.right_algn { text-align: right; } td.hight { hight: 15px; } table.width { width: 100px; } table.noborder { border: 0px solid black; } th.width { width: 10px; } .border { border: 1px solid black; } .bottom { position: absolute; bottom: 5px; width: 100%; } .tValHide { display:none; } } </style>');
       
        WindowObject.document.writeln('</head><body onload="window.print()">');
        WindowObject.document.writeln(divToPrint.innerHTML);
        WindowObject.document.writeln('</body></html>');
        WindowObject.document.close();
        $('#hie').hide();
        setTimeout(function(){WindowObject.close();},10);
    }
</script>
<div id="divToPrint">
  <div class="content-wrapper">
    <div class="container-fluid">
      <h3 style="text-align: center;">SYNERGIC SOFTEK SOLUTIONS PVT. LTD.</h3>
      <h5 style="text-align: center;">55 D, DESAPRAN SASHMAL ROAD</h5>
      <h5 style="text-align: center;">KOLKATA-33</h5>
      <h5 style="text-align: center;">Employeewise Claim Details Between <?php echo date('d/m/Y', strtotime($date->from_date)).' to '.date('d/m/Y', strtotime($date->to_date));?></h5>
      <div>
        <hr>
        <?php 
          if($alldata && $alltrans && $emp_dtls && $date){
            foreach($emp_dtls as $allemp){
                echo "<b>"."Name   : ".$allemp->emp_name."</b>";
                echo "<hr>";
                $totcount = 0;
              foreach ($alldata as $aldta) {
                echo "<table class=table table-bordered width id=dataTable cellpadding=4><thead><tr>";
              
                echo "<th>"."Claim Date"."</th>";
                echo "<th>"."Claim No."."</th>";
                echo "<th>"."Period"."</th>";
                echo "<th>"."Approved Date"."</th>";
                echo "</tr></thead>";

                echo "<tr>";
                echo "<td class=center>".date("d/m/Y",strtotime($aldta->claim_dt))."</td>";
                echo "<td class=center>".$aldta->claim_cd."</td>";
                echo "<td class=center>".date("d/m/Y",strtotime($aldta->from_dt))." To ".date("d/m/Y",strtotime($aldta->to_dt))."</td>";
                echo "<td class=center>".date("d/m/Y",strtotime($aldta->approval_dt))."</td>";

                echo "</tr></table>";
////
                echo "<table class=table table-bordered width id=dataTable cellpadding=4><thead><tr>";
                echo "<th>"."Project Name"."</th>";
                echo "<th>"."Purpose"."</th>";
                echo "<th>"."Narration"."</th>";
    
                echo "</tr></thead>";

                echo "<tr>";
                echo "<td class=center>".$aldta->project_name."</td>";
                echo "<td class=center>".$aldta->purpose."</td>";
                echo "<td class=center>".$aldta->narration."</td>";

                echo "</tr></table>";

                echo "<hr>";
                $count = 0;
                
                foreach ($alltrans as $key) {
                        if ($aldta->claim_cd == $key->claim_cd) {
                            echo "<div style='margin-left:100px;'>";
                            ?>
                            <table class="width" style="width: 85%;">
                             <thead><tr>
                              <th></th>
                              <th></th>
                              <th></th>
                              <th></th>
                             </tr></thead>   
                              <tr>
                                <td class="width" width="10%"><?php echo $key->sl_no;?></td>
                                <td class="width" width="35%"><?php echo $key->claim_hd;?></td>
                                <td class="width" width="60%"><?php echo trim($key->remarks);?></td>
                                <td class="width" width="20%"><?php echo $key->amount;?></td>
                              </tr>
                            </table>
                            <?php
                            echo "</div>";
                            $count += $key->amount;
                             echo "<br>";
                        }
                    }?>
                    <div style='margin-left:325px;'>
                      <table class="width" style="width: 85%;">
                      <tr>
                        <td class="width" width="75%"><hr></td>
                        <td class="width" width="25%"><hr></td>
                      </tr>
                      <tr>
                        <td style="text-align: right;" >Total:</td>
                        <td class="right_algn"><?php echo $count; 
                                                     $totcount = $totcount + $count; 
                                                ?>
                        </td>
                      </tr>
                    </table>
                    </div>
                    
                    <?php
                      echo"<hr>"; 
                      echo "Grand Total : ".$totcount." ( ".getIndianCurrency($totcount).")" ;
              }
                 
                  
            }///////
              }
            ?>
          </div>
          <div class="card-footer">
            <button class="btn print-btn tValHide" type="button" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Print" style="width: 95px;" id="" onclick="printClaimDtls();"><i class="fa fa-print fa-lg" aria-hidden="true"></i></button>
          </div>
        </div>
      </div>
    </div>


    <?php
    function getIndianCurrency($number)
    {
      $decimal = round($number - ($no = floor($number)), 2) * 100;
      $hundred = null;
      $digits_length = strlen($no);
      $i = 0;
      $str = array();
      $words = array(0 => '', 1 => 'One', 2 => 'Two',
          3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six',
          7 => 'Seven', 8 => 'Eight', 9 => 'Nine',
          10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve',
          13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
          16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen',
          19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty',
          40 => 'Forty', 50 => 'Fifty', 60 => 'Sixty',
          70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety');
      $digits = array('', 'Hundred','Thousand','Lakh', 'Crore');
      while( $i < $digits_length ) {
          $divider = ($i == 2) ? 10 : 100;
          $number = floor($no % $divider);
          $no = floor($no / $divider);
          $i += $divider == 10 ? 1 : 2;
          if ($number) {
              $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
              $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
              $str [] = ($number < 21) ? $words[$number].' '. $digits[$counter]. $plural.' '.$hundred:$words[floor($number / 10) * 10].' '.$words[$number % 10]. ' '.$digits[$counter].$plural.' '.$hundred;
          } else $str[] = null;
      }
      $Rupees = implode('', array_reverse($str));
      $paise = ($decimal) ? "and " . ($words[$decimal / 10] . " " . $words[$decimal % 10]) . ' Paise' : '';
      return ($Rupees ? $Rupees . 'Rupees ' : '') . $paise .' Only.';
    }
    ?>

        