

			

			<label for="sample_file" class="col-sm-2 col-form-label">Sample File:</label>	
			
			
			    <a name="sample_file" href="<?php echo site_url('payroll/dwnEmp');?>">Download</a>
		    	
				
		     <form method="POST" action="<?php site_url("payroll/uplEmp"); ?>" enctype="multipart/form-data">
			
		      
		       <label for="upemp" class="col-sm-2 col-form-label">Browse CSV File:</label>

		       
		   	    <input type="file" name="upemp">
		      
			   <input type="submit" class="submit" name="importSubmit" value="Save" >
	               
		     </form>






	

