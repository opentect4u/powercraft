<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
		class PayrollModel extends CI_Model{
												/*Select All For List View*/
	       public function select_all($table_name){                 
		      		$this->db->select('*');
				$data = $this->db->get($table_name);
				return $data->result();
	       }
       												/*Insert Data In Tables*/		       
	       public function insert_data($table_name,$dataval){
		       $this->db->insert($table_name, $dataval);
		       return;
	       }		

	       public function select_emp($table_name,$data){					/*Select Emp.*/
                                $this->db->select('*');
                                $this->db->where('emp_no',$data);
                                $dept=$this->db->get($table_name);
                                return $dept->row();
	       }

	       public function edit_data($table_name, $data_array, $where) {			/*Update Row*/
			$this->db->where($where);
			$this->db->update($table_name, $data_array);
			return;

		}


											       /*Insert New Department In mm_department table*/      
			public function insert_dept($data){
				$time    = date("Y-m-d h:i:s");
				$user_id = $this->session->userdata('loggedin')->user_id;
				$value   = array('department'=>$data,
			                     'created_by'=>$user_id,
			       	             'created_dt'=>$time);
			    $this->db->insert('mm_department',$value);
			    return;
			}
											      /*Select a particular value with sl no */
			public function select_row($table_name,$data){
				$this->db->select('*');
				$this->db->where('sl_no',$data);
				$dept=$this->db->get($table_name);
				return $dept->row();
			}
											      /*Modify Department Name*/
		    public function update_dept($sl_no,$data){
		    	$user_id = $this->session->userdata('loggedin')->user_id;
		    	$time = date("Y-m-d h:i:s");
		    	$this->db->query('update mm_department set department ='."'".$data."'".
		    		                                       ',modified_by ='."'".$user_id."'".
		    		                                       ',modified_dt ='."'".$time."'".
														   ' where sl_no='.$sl_no);
		    		return;
		    }

		    									   /*Insert New Designation In mm_designation table*/      
			public function insert_desig($data){
				$time    = date("Y-m-d h:i:s");
				$user_id = $this->session->userdata('loggedin')->user_id;
				$value   = array('designation'=>$data,
			                     'created_by'=>$user_id,
			       	             'created_dt'=>$time);
			    $this->db->insert('mm_designation',$value);
			    return;
			}

											/*Modify Designation Name*/
		    public function update_desig($sl_no,$data){
		    	$user_id = $this->session->userdata('loggedin')->user_id;
		    	$time = date("Y-m-d h:i:s");
		    	$this->db->query('update mm_designation set designation ='."'".$data."'".
		    		                                       ',modified_by ='."'".$user_id."'".
		    		                                       ',modified_dt ='."'".$time."'".
														   ' where sl_no='.$sl_no);
		    	return;
		    }
 
		     public function insert_emp($data){
                                $time    = date("Y-m-d h:i:s");
                                $user_id = $this->session->userdata('loggedin')->user_id;
                                $value   = array('department'=>$data,
                                                 'created_by'=>$user_id,
                                                 'created_dt'=>$time);
                            $this->db->insert('mm_department',$value);
                            return;
                        }
			 
	}
