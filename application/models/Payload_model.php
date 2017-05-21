<?php
class Payload_model extends CI_Model{
    public function payloads($payload,$senderId){

        $enteryourmobile_no = array(
            'recipient' => array('id' => $senderId),
            'message' => array('text' => "Please enter your mobile number")
          );

        $phone_no="";
        if(strpos($payload,'@@##$$') !== false){
          $message = explode('@@##$$',$payload);
          $payload = $message[0];
          $phone_no = $message[1];
          $service_provider = $message[2];
          $phone_confirm_text = "Please confirm, your mobile number is ".$phone_no." and service provider is ".$service_provider;
        }

        $payload_arr = array(
          'user_selected_phone_bill'=>array('recipient' =>
                          array('id' => $senderId,),
                                'message' =>
                          array('text' => "Please select your service provider!",
                                'quick_replies' =>
                                array(0 => array(
                                'content_type' => 'text',
                                'title' => 'Airtel',
                                'payload' => 'user_selected_airtel',
                              ),1 => array(
                                 'content_type' => 'text',
                                 'title' => 'Idea',
                                 'payload' => 'user_selected_idea',
                                  ),2 => array(
                                 'content_type' => 'text',
                                 'title' => 'MTS',
                                 'payload' => 'user_selected_mts',
                               ),3 => array(
                                  'content_type' => 'text',
                                  'title' => 'Vodafone',
                                  'payload' => 'user_selected_vodafone',
                                ),4 => array(
                                  'content_type' => 'text',
                                  'title' => 'BSNL',
                                  'payload' => 'user_selected_bsnl',
                                   ),
                              ),
                            ),
                          ),
          'user_selected_airtel'=>$enteryourmobile_no,
          'user_selected_idea' =>$enteryourmobile_no,
          'user_selected_mts'=>$enteryourmobile_no,
          'user_selected_vodafone'=>$enteryourmobile_no,
          'user_selected_bsnl'=>$enteryourmobile_no,
          'confirm_mobile_no'=>array('recipient' =>
                          array('id' => $senderId,),
                                'message' =>
                          array('text' => $phone_confirm_text,
                                'quick_replies' =>
                                array(0 => array(
                                'content_type' => 'text',
                                'title' => 'Yes',
                                'payload' => 'user_confirmed_phone_yes',
                              ),1 => array(
                                 'content_type' => 'text',
                                 'title' => 'No',
                                 'payload' => 'user_confirmed_phone_no',
                                  ),
                              ),
                            ),
                          ),
          'user_confirmed_phone_no'=>array('recipient' =>
                          array('id' => $senderId,),
                                'message' =>
                          array('text' => "would you like to try again!",
                                'quick_replies' =>
                                array(0 => array(
                                'content_type' => 'text',
                                'title' => 'Yes',
                                'payload' => 'user_selected_phone_bill',
                              ),1 => array(
                                 'content_type' => 'text',
                                 'title' => 'No',
                                 'payload' => 'user_donotwant_toreenter_phoneno',
                                  ),
                              ),
                            ),
                          ),
         'user_donotwant_toreenter_phoneno' => array(
             'recipient' => array('id' => $senderId),
             'message' => array('text' => "Ok! no problem, i'll be there whenever you need me!")
           ),

        );
        //output return start here
        return $payload_arr[$payload];

    }
}
