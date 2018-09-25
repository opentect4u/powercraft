<?php
	class Payroll extends MX_Controller{
	   public function __construct(){
		parent::__construct();
		$this->load->model('PayrollModel');
		$this->load->model('AdminProcess');
		$this->load->model('Process');
	   }
													/*Department Dashboard*/
	   public function department(){
		if($this->session->userdata('is_login')->user_type == 'A'){
		   $title['title']         = 'Claim-Manage Department';
		   $dept['dept_dtls']      = $this->PayrollModel->select_all('mm_department');
		   $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
    	   $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
    	   $title['total_reject']  = $this->Process->countRejClaim('tm_claim');
		   $this->load->view('templetes/welcome_header',$title);
		   $this->load->view("department/viewDepartment",$dept); 
		   $this->load->view('templetes/welcome_footer');
		}

	  }
													/*Add New Department*/
	   public function addDept(){
		   if($_SERVER['REQUEST_METHOD']=="POST"){
			   $dept = $this->input->post('dept');
			   
			$this->PayrollModel->insert_dept($dept);
			$this->session->set_flashdata('msg','Save Successful');
			redirect('payroll/department');
		   }else{
		   	 $title['title']         = 'Claim-Add New Department';
		   	 $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
		   	 $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
             $title['total_reject']  = $this->Process->countRejClaim('tm_claim');
		   	 $this->load->view('templetes/welcome_header',$title);
		   	 $this->load->view("department/addDepartment");
		   	 $this->load->view('templetes/welcome_footer');
		 }
	   }

	   												/*Edit Department Name*/
	   public function editDept(){								
	   		if($_SERVER['REQUEST_METHOD']=="POST"){
	   				$slno = $this->input->post('sl_no');
	   				$dept = $this->input->post('dept');						
	   				$ret=$this->PayrollModel->update_dept($slno,$dept);
	   				$this->session->set_flashdata('msg','Save Successful');
				    redirect('payroll/department');
	   		}else{
	   			$title['title']         = 'Claim-Edit Department';
                $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
                $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
                $title['total_reject']  = $this->Process->countRejClaim('tm_claim');

                $params = $this->input->get('sl_no');        
                $dept['dept_dtls']  = $this->PayrollModel->select_row('mm_department',$params);
                $this->load->view('templetes/welcome_header',$title);
                $this->load->view("department/editDept",$dept);
                $this->load->view('templetes/welcome_footer');
            }
	   }
													/*Designation Dashboard*/
       public function designation(){
		if($this->session->userdata('is_login')->user_type == 'A'){
		   $title['title']         = 'Claim-Manage Designation';
		   $desig['desig_dtls']    = $this->PayrollModel->select_all('mm_designation');
		   $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
    	   $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
    	   $title['total_reject']  = $this->Process->countRejClaim('tm_claim');
		   $this->load->view('templetes/welcome_header',$title);
		   $this->load->view("designation/viewDesig",$desig); 
		   $this->load->view('templetes/welcome_footer');
		}													
	   }	
	   												/*Add New Designation*/
	   public function addDesig(){
		   if($_SERVER['REQUEST_METHOD']=="POST"){
			   $desig = $this->input->post('desig');
			   
			$this->PayrollModel->insert_desig($desig);
			$this->session->set_flashdata('msg','Save Successful');
			redirect('payroll/designation');
		   }else{
		   	 $title['title']         = 'Claim-Add New Designation';
		   	 $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
		   	 $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
             $title['total_reject']  = $this->Process->countRejClaim('tm_claim');
		   	 $this->load->view('templetes/welcome_header',$title);
		   	 $this->load->view("designation/addDesig");
		   	 $this->load->view('templetes/welcome_footer');
		 }
	   }
	   												/*Edit Designation Name*/
	   public function editDesig(){
	   		if($_SERVER['REQUEST_METHOD']=="POST"){
	   				$slno  = $this->input->post('sl_no');
	   				$desig = $this->input->post('desig');						
	   				$ret=$this->PayrollModel->update_desig($slno,$desig);
	   				$this->session->set_flashdata('msg','Save Successful');
				    redirect('payroll/designation');
	   		}else{
	   			$title['title']         = 'Claim-Edit Designation';
                $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
                $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
                $title['total_reject']  = $this->Process->countRejClaim('tm_claim');

                $params = $this->input->get('sl_no');
                $desig['desig_dtls']  = $this->PayrollModel->select_row('mm_designation',$params);
                $this->load->view('templetes/welcome_header',$title);
                $this->load->view("designation/editDesig",$desig);
                $this->load->view('templetes/welcome_footer');
            }
	   }
	
	   public function employee(){									 /*Employee Dashboard*/
		   if($this->session->userdata('is_login')->user_type == 'A'){
                   	$title['title']         = 'Claim-Manage Employee Details';
                   	$data['data_dtls']      = $this->PayrollModel->select_all('mm_employee');
                   	$title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
           	   	$title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
           	   	$title['total_reject']  = $this->Process->countRejClaim('tm_claim');
                   	$this->load->view('templetes/welcome_header',$title);
                   	$this->load->view("employee/viewEmployee",$data);
                   	$this->load->view('templetes/welcome_footer');
                }				
	   } 	
		
	   public function addEmp(){									/*Add Employee*/
                   if($_SERVER['REQUEST_METHOD']=="POST"){
			   $empno 	= $this->input->post('emp_no');
			   $empname	= $this->input->post('emp_name');
			   $empdept     = $this->input->post('emp_dept');
			   $empdesg	= $this->input->post('emp_desg');
			   $dojtemp     = DateTime::createFromFormat('d/m/Y',$this->input->post('doj'));
			   $doj		= $dojtemp->format('Y-m-d');
			   $emppan      = $this->input->post('pan_no');
			   $empacno     = $this->input->post('ac_no');
			   $status	= 1;
			   $user_id 	= $this->session->userdata('loggedin')->user_id;
			   $time    	= date("Y-m-d h:i:s");
			   $data_array  = array(
			      	"emp_no"  		=> $empno,
			      	"emp_name"		=> $empname,
			      	"emp_catg"		=> 0,
			      	"designation"		=> $empdesg,
    			      	"sector"		=> $empdept,
	 		      	"date_of_joining"	=> $doj,
		    	      	"status_flag"		=> $status,
			      	"pan_no"		=> $emppan,
	 		      	"bank_ac_no"		=> $empacno,
			      	"created_by"		=> $user_id,
				"created_dt"		=> $time		      
				);
			   	   
			 $this->PayrollModel->insert_data('mm_employee',$data_array);
                         $this->session->set_flashdata('msg','Save Successful');
                         redirect('payroll/employee');
		   }else{
                    $title['title']         = 'Claim-Add New Employee';
                    $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
                    $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
             		$title['total_reject']  = $this->Process->countRejClaim('tm_claim');
             		$data['dept'] 			= $this->PayrollModel->select_all('mm_department');
             		$data['desg'] 			= $this->PayrollModel->select_all('mm_designation');

                         $this->load->view('templetes/welcome_header',$title);
                         $this->load->view("employee/addEmp",$data);
                         $this->load->view('templetes/welcome_footer');
                 }
	    }

	   public function editEmp(){									/*Edit Employee*/
		   if($_SERVER['REQUEST_METHOD']=="POST"){
			   $empno	= $this->input->post('emp_no');
                           $empname     = $this->input->post('emp_name');
                           $empdept     = $this->input->post('emp_dept');
                           $empdesg     = $this->input->post('emp_desg');
                           $doj         = $this->input->post('doj');
                           $emppan      = $this->input->post('pan_no');
                           $empacno     = $this->input->post('ac_no');
			   			   $status      = $this->input->post('status');
			   //$dottemp     = DateTime::createFromFormat('d/m/Y',$this->input->post('dot'));
			               $dot         = $this->input->post('dot');
                           $user_id     = $this->session->userdata('loggedin')->user_id;
			   $time        = date("Y-m-d h:i:s");
			   $data_array  = array(
                                "emp_name"              => $empname,
                                "emp_catg"              => 0,
                                "designation"           => $empdesg,
                                "sector"                => $empdept,
                                "date_of_joining"       => $doj,
                                "date_of_termination"   => $dot,
                                "status_flag"           => $status,
                                "pan_no"                => $emppan,
                                "bank_ac_no"            => $empacno,
                                "modified_by"           => $user_id,
                                "modified_dt"           => $time
			);
			 $where_array    = array("emp_no"	=> $empno);
			 $this->PayrollModel->edit_data('mm_employee',$data_array,$where_array);
                         $this->session->set_flashdata('msg','Save Successful');
                         redirect('payroll/employee');
		   }else{   
	   		$title['title']		= 'Edit Employee Details';
			$title['total_claim']	= $this->AdminProcess->countClaim('mm_manager');
			$title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
			$title['total_reject']  = $this->Process->countRejClaim('tm_claim');

			$params=$this->input->get('emp_no');
			$data['data_dtls']      = $this->PayrollModel->select_emp('mm_employee',$params);

                	$this->load->view('templetes/welcome_header',$title);
                	$this->load->view('employee/editEmp',$data);
                	$this->load->view('templetes/welcome_footer');
		 }
	   }

														/*Earning Deduction Dashboard*/
	   public function earningDeduction(){
                if($this->session->userdata('is_login')->user_type == 'A'){
                   $title['title']         = 'Claim-Manage Earning & Deductions';
                   $data['data_dtls']      = $this->PayrollModel->select_all('mm_earning_deduction');
                   $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
           	   $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
           	   $title['total_reject']  = $this->Process->countRejClaim('tm_claim');
                   $this->load->view('templetes/welcome_header',$title);
                   $this->load->view("heads/viewHeads",$data);
                   $this->load->view('templetes/welcome_footer');
                }
	   }
	   													/*Add Earning Deduction*/
	   public function addEdh(){
                   if($_SERVER['REQUEST_METHOD']=="POST"){
			   $type 	= $this->input->post('edh_type');
			   $name 	= $this->input->post('edh');	
			   $user_id     = $this->session->userdata('loggedin')->user_id;
			   $time        = date("Y-m-d h:i:s");
			   $data_array	= array("ed_type"=>$type,
			   			"ed_desc"=>$name);

                           $this->PayrollModel->insert_data('mm_earning_deduction',$data_array);
                           $this->session->set_flashdata('msg','Save Successful');
                           redirect('payroll/earningDeduction');
                   }else{
                         $title['title']         = 'Claim-Add New Earnings & Deductions';
                         $title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
                         $title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
             		 $title['total_reject']  = $this->Process->countRejClaim('tm_claim');
                         $this->load->view('templetes/welcome_header',$title);
                         $this->load->view("heads/addEdh");
                         $this->load->view('templetes/welcome_footer');
                 }
	   }
	   												      /*Edit Earning Deduction*/
	   public function editEdh(){
		   if($_SERVER['REQUEST_METHOD']=="POST"){
			   $slno  	= $this->input->post('sl_no');
                           $type  	= $this->input->post('edh_type');
			   $desc  	= $this->input->post('edh_desc');
			   $user_id     = $this->session->userdata('loggedin')->user_id;
                           $time        = date("Y-m-d h:i:s");
			   $data_array	= array(
				   "ed_type"	=>$type,
				   "ed_desc"	=>$desc,
				   "modified_by"=>$user_id,
				   "modified_dt"=>$time
			   );
			   $where_array = array("sl_no"=>$slno);		
			   $this->PayrollModel->edit_data('mm_earning_deduction',$data_array,$where_array);
                           $this->session->set_flashdata('msg','Save Successful');
                           redirect('payroll/earningDeduction');
                        }else{
                                $title['title']         = 'Claim-Edit Head';
                		$title['total_claim']   = $this->AdminProcess->countClaim('mm_manager');
                		$title['total_payment'] = $this->AdminProcess->countRow('tm_payment');
                		$title['total_reject']  = $this->Process->countRejClaim('tm_claim');

                		$params = $this->input->get('sl_no');
                		$data['data_dtls']  = $this->PayrollModel->select_row('mm_earning_deduction',$params);
                		$this->load->view('templetes/welcome_header',$title);
                		$this->load->view("heads/editEdh",$data);
                		$this->load->view('templetes/welcome_footer');
            		}
           	}


	
	}
