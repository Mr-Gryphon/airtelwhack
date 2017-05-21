<?php if(!defined('BASEPATH')) exit ("Access Denied!");
class Ready_state_model extends CI_Model{
    public function fetch_users(){
      $timestamp = time();
      $timestamp = strtotime('-5 days', $timestamp);
      $result = $this->db->get_where('conversation_log',array('active'=>'1','user_id <>'=>'','last_conversation >='=>$timestamp));
      return $result->result_array();
    }
}
