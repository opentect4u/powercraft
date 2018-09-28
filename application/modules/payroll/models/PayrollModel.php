<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
		class PayrollModel extends CI_Model{
			public function select_all($table_name){			 /*Select All For List View*/
				$this->db->select('*');
				$data = $this->db->get($table_name);
				return $data->result();
			}
			
			public function insert_data($table_name,$dataval){		/*Insert Data In Tables*/
				$this->db->insert($table_name, $dataval);
				return;
			}
			
			public function select_emp($table_name,$data){			/*Select Emp.*/					
				$this->db->select('*');
                                $this->db->where('emp_no',$data);
                                $dept=$this->db->get($table_name);
                                return $dept->row();
			}
			
			public function edit_data($table_name, $data_array, $where){	/*Update Row*/
				$this->db->where($where);
				$this->db->update($table_name, $data_array);
				return;
			}
			
			public function select_row($table_name,$data){			/*Select a particular value with sl no */
				$this->db->select('*');
				$this->db->where('sl_no',$data);
				$dept=$this->db->get($table_name);
				return $dept->row();
			}

			public function select_paysheet(){				/*Select Last Month All Emp.Paysheet*/	
				$data = $this->db->query("Select *
					                  from tm_paysheet
							  where trans_dt = (Select max(trans_dt)
									    from   tm_paysheet)");
				return $data->result();
			}

			public function print_ps($emp_no){
				$this->db->select('*');
				$this->db->where('emp_no',$emp_no);
				$data=$this->db->get('tm_paysheet');
				return $data->row();
			}
		}
