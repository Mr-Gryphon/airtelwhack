<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Fbconfig {

      public function load_config()
      {
        $welcome_msg = "Hello world";
        $default_msg = "Sorry, I'm still learning, as soon as i'll get Answer for it, i'll return back to you!";
        $access_token = "EAAQxQgCnZCEwBAOfcGh8MhDU13YrzL08ZCIHo8Te2x6SL0x4vFurIMqZAq4sLt2pnKH1pwRD5TJ4PFMpjd9Fjl6ClwQPOCtEIpdtjOwRLuxitZBZB4WUAl4RTbBq1AaWEHw4nZCm3bf8FZAkoXZBbpD4sP9fryR5LZAalob5evNRXfwZDZD";
        $configarr = array('access_token'=>$access_token,'welcome_msg'=>$welcome_msg,'default_msg'=>$default_msg);
        return $configarr;
      }
}
