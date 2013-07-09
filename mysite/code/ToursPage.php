<?php

 
class ToursPage extends Page {
 static $db = array(

   'VideoLink' => 'Text',
   
  

  
);
   static $has_one = array(
   
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   

	$fields->addFieldToTab('Root.Content.Video', new TextField('VideoLink', 'Enter full youtube video url here'));

	

    	

   return $fields;
}
}
 
class ToursPage_Controller extends Page_Controller {
	
}
?>