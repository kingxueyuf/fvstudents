<?php
class Kid_activity_model extends CI_Model {

    public function __construct()
    {
    	parent::__construct();
        $this->load->database();//链接数据库
    }

   	function get_kid_activity_by_parent_id($arr)
	{
		$parent_id = $arr['parent_id'];
		$sql = "select * from kid_activity where parent_id = '".$parent_id. "' order by activity_date";
		$res = $this->db->query($sql);
		return $res->result_array();
	}

	function get_kid_activity_by_kid_id($arr)
	{
		$kid_id = $arr['kid_id'];
		$sql = "select * from kid_activity where kid_id = '".$kid_id. "' order by activity_date DESC";
		$res = $this->db->query($sql);
		return $res->result_array();
	}

	function get_kid_activity_comment($kid_activity)
	{
		foreach ($kid_activity as &$kid_activity_item){
			$sql = "select * from kid_activity_comment where activity_id = '".$kid_activity_item['activity_id']. "'";
			$res = $this->db->query($sql);
			$kid_activity_item['kid_activity_comment'] = $res->result_array();
		}
		return $kid_activity;
	}

}