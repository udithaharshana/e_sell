<?php

//item image
  if(!function_exists('item_image')){
    function item_image($iid){
      if(file_exists('disk/item/'.$iid)){
        return '/disk/item/'.$iid;
      }else{
        return '/disk/default-image.png';
      }
    }
  }
//user image
  if(!function_exists('user_image')){
    function user_image($uid){
      if(file_exists('disk/users/user_'.$uid.'.jpg')){
        return '/disk/users/user_'.$uid.'.jpg';
      }else{
        return '/disk/blank.jpg';
      }
    }
  }

?>
