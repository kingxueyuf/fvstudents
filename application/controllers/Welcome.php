<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index1()
	{
		$this->load->view('welcome_message');
	}

	public function index()
	{
		$kid_id = $this->input->get('kid_id');
		$arr = array(
			'kid_id' => $kid_id
		);
		$this->load->model('kid_activity_model');
		$kid_activity = $this->kid_activity_model->get_kid_activity_by_kid_id($arr);
		$data['kid_activity'] = $kid_activity;
		$this->load->view('main', $data);
	}

	public function login()
	{
		// Check account and password
		$cookie = array(
			'name'   => 'parent_id',
	        'value'  => '00A001',
	        'expire' => '86500');
		$this->input->set_cookie($cookie);
		$this->load->view('login.html');
	}

	function output_activity($kid_activity)
	{
		$res_array = array();
		if($kid_activity ==false)
		{
			echo "failure";
		}else
		{
			foreach($kid_activity as $row)
			{
				 $temp = array( "activity_id"=>$row->activity_id,
				 				"kid_id" =>$row->kid_id,
				 				"parent_id"=>$row->parent_id,
				 				"parent_name"=>$row->parent_name,
				 				"picture_1_path"=>$row->picture_1_path,
				 				"picture_2_path"=>$row->picture_2_path,
				 				"picture_3_path"=>$row->picture_3_path,
				 				"activity_date"=>$row->activity_date,
				 				"activity_category"=>$row->activity_category,
				 				"teacher_id"=>$row->teacher_id,
				 				"teacher_name"=>$row->teacher_name,
				 				"teacher_comment"=>$row->teacher_comment);
				 array_push($res_array,$temp);
			}
		}
		echo json_encode($res_array);
	}

}
