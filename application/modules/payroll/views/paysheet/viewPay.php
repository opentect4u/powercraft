<div class="content-wrapper">
    <div class="container-fluid">
      <h3>View Paysheet</h3>
      <hr>
        <div class="card mb-3">
        <div class="card-header">
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
		<tr>
		  <th>Date</th>
		  <th>Year</th>
		  <th>Month</th>
            	  <th>Gross Amount</th>
		  <th>Net Amount</th>
                  <th></th>
                </tr>
              </thead>
              <tfoot>
		<tr>
		  <th>Date</th>	
                  <th>Year</th>
                  <th>Month</th>
                  <th>Gross Amount</th>
                  <th>Net Amount</th>
                  <th></th>
                </tr>
              </tfoot>
              <tbody>
              <?php if($data_dtls){
               foreach ($data_dtls as $values):
                ?>
                <tr>
		  <td><?php echo 'hw'//echo date('d/m/Y',strtotime($values->trans_dt));?></td>
                  <td><?php echo $values->sal_year;?></td>
                  <td><?php echo $values->sal_month;?></td>
                  <td><?php echo $values->tot_ear;?></td>
		  <td><?php echo $values->net_amt;?></td>            
                  <td><button class="btn btn-primary edit-btn" data-toggle="tooltip" data-placement="bottom" title="" 
		       data-original-title="Edit Employee Details" 
		       onclick="location.href='<?php echo site_url("payroll/editEmp?emp_no=$values->emp_no"); ?>'">
		       
                      <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
		      </button>
		  </td>
                </tr>
                <?php
                endforeach;
                } 
              ?>
              </tbody>
            </table>
          </div>
      </div>
        <div class="card-footer small text-muted"></div>
      </div>
      </div>
      </div>
    </div>
 </div>
</div>			

<script>

    $(document).ready(function() {

    <?php if($this->session->flashdata('msg')){ ?>
	window.alert("<?php echo $this->session->flashdata('msg'); ?>");
    });

    <?php } ?>
</script>

