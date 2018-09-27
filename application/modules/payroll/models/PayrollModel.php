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

	       public function edit_data($table_name, $data_array, $where) {	/*Update Row*/
			$this->db->where($where);
			$this->db->update($table_name, $data_array);
			return;

			}

										      							/*Select a particular value with sl no */
			public function select_row($table_name,$data){
				$this->db->select('*');
				$this->db->where('sl_no',$data);
				$dept=$this->db->get($table_name);
				return $dept->row();
			}
			
 
	}
