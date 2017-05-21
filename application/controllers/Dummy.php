<?php if(!defined('BASEPATH')) exit ("Access Denied");
class Dummy extends CI_Controller{
    public function addquestion(){
      $this->form_validation->set_rules('question','question','required');
      $this->form_validation->set_rules('answer','answer','required');
      if($this->form_validation->run()){
         $values = $this->input->post();
         $this->db->insert('questions',$values);
         redirect('dummy/load');
      }else{
        echo validation_errors();
        echo "Failure......";
      }
    }

    public function load(){
      $this->load->view('addquestion');
    }

    public function reset(){
      $this->db->update('conversation_log',array('active'=>'0'),array('id<>'=>''));
      echo "reset Succesfull!";
    }

}
