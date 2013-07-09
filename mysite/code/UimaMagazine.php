<?php
/**
 * Defines the HomePage page type
 */
class UimaMagazine extends SiteTree {

   static $db = array(
   
    'MagazineText' => 'HTMLText',
	
   );
   
   
   
   static $has_one = array(
  
	 
	  
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */


	
	
	
	//$fields->renameField("ContentImage", "A better Title for Image");
	

		
		// remove a field from a tab
		$fields->removeFieldFromTab('Root.Content', 'Content');
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('MagazineText', 'Text Here'));
	
    return $fields;
	
   }
   
}



 
class UimaMagazine_Controller extends Page_Controller {


 
}
 
?>