<?php if(!defined('BASEPATH')) exit ("Access Denied!");
  class Excelexport_model extends CI_Model {
    public function get_logs(){
        $active = array('0','1');
        $this->db->where_in('active',$active);
        $temprow = $this->db->get('energy_log');
        return $temprow->result_array();
  }
}
