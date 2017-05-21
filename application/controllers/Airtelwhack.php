<?php
class Airtelwhack extends CI_Controller{
      public  function eHys3q8JgWRdaH4Vkuk5vSTc3KNBYjcx(){
         date_default_timezone_set('UTC');
         $inputdata = $this->input->get();

         //code for user registration start here
            if($inputdata['call_id']=='1'){
              $temprow = $this->db->get_where('conversation_log',array('active'=>'1','user_id'=>$inputdata['userid']));
              if($temprow->num_rows() > 0){
                echo json_encode(array('user_status'=>'Please select the suitable mode!'));
                }else{
                echo json_encode(array('user_status'=>'Please provide your Airtel phone number!'));
              }
            }
         //code for user registration ends here

         //code for call id2 start here
         if($inputdata['call_id']=='2'){
           $this->db->insert('conversation_log',array('user_mobile'=>$inputdata['user_mobile'],'otp'=>'1111','user_id'=>$inputdata['userid']));
           echo json_encode(array('user_mobile'=>$inputdata['user_mobile']));
         }
         //code for call id2 ends here

         //code for call id 3 start here
         if($inputdata['call_id']=='3'){
           $temprow = $this->db->get_where('conversation_log',array('active'=>'1','user_id'=>$inputdata['userid'],'user_mobile'=>$inputdata['user_mobile']));
           $temprow = $temprow->row_array();
           echo json_encode(array('otp'=>$temprow['otp']));

          //  if($temprow->num_rows() > 0){
          //    echo json_encode(array('otp_verification'=>'Thank you for verify your phone number.'));
          //    }else{
          //      $temprow = $temprow->row_array();
          //      echo json_encode(array('otp_verification'=>'Please enter a valid OTP.'));
          //  }
         }
         //code for call id 3 ends here

         //code for call id 4 start here
         if($inputdata['call_id']=='4'){
           $temprow = $this->db->get_where('conversation_log',array('active'=>'1','user_id'=>$inputdata['userid'],'user_mobile'=>$inputdata['user_mobile']));
           if($temprow->num_rows() > 0){
             $temprow = $temprow->row_array();
             echo json_encode(array('mobile_balance'=>$temprow['account_balance'],'mobile_number'=>$temprow['user_mobile']));
             }else{
             $temprow = $temprow->row_array();
             echo json_encode(array('mobile_balance'=>'0.0','mobile_number'=>$temprow['user_mobile']));
           }
         }
         //code for call id 4 ends here

         //code for call id 5 start here
         if($inputdata['call_id']=='5'){
           $temprow = $this->db->get_where('conversation_log',array('active'=>'1','user_id'=>$inputdata['userid'],'user_mobile'=>$inputdata['user_mobile']));
           if($temprow->num_rows() > 0){
             $temprow = $temprow->row_array();
             echo json_encode(array('data_balance'=>$temprow['data_balance'],'dmobile_number'=>$temprow['user_mobile']));
             }else{
             $temprow = $temprow->row_array();
             echo json_encode(array('data_balance'=>'0.0','dmobile_number'=>$temprow['user_mobile']));
           }
         }
         //code for call id 5 ends here

         //code for call id 6 start here
         if($inputdata['call_id']=='6'){
           if($inputdata['cat']=='voice'){
             echo json_encode(array('bmobile_number'=>$inputdata['user_mobile'],'plan_one'=>'Price 35 INR, 1 Day validity, Full Talktime','plan_two'=>'Price 55 INR, 3 Days validity, Full Talktime','plan_three'=>'Price 75 INR, 5 Days validity, Full Talktime','cat'=>$inputdata['cat']));
           }else if($inputdata['cat']=='sms'){
             echo json_encode(array('bmobile_number'=>$inputdata['user_mobile'],'plan_one'=>'Price 50 INR, 500 SMS, validity 10 Days','plan_two'=>'Price 100 INR, 1100 SMS, validity 22 Days','plan_three'=>'Price 150 INR, 1500 SMS, validity 30 Days','cat'=>$inputdata['cat']));
           }else {
             echo json_encode(array('bmobile_number'=>$inputdata['user_mobile'],'plan_one'=>'Price 50 INR, 500 MB, validity 10 Days','plan_two'=>'Price 100 INR, 1000 MB, validity 15 Days','plan_three'=>'Price 150 INR, 1500 MB, validity 20 Days','cat'=>$inputdata['cat']));
           }
         }
         //code for call id 6 ends here


         //echo json_encode(array('output'=>$inputdata),true);
      }
}
