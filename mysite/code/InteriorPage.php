<?php

 
class InteriorPage extends Page {
 static $db = array(
					
   'MainContent' => 'HTMLText',
   'ImageCaption' => 'HTMLText',
   
  

  
);
   static $has_one = array(
   
 'PageImage' => 'Image',
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content.Main","Content");
   
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('MainContent','Event Description'));
	$fields->addFieldToTab('Root.Content.PageContent', new ImageField('PageImage', 'Page Image (width must be 348 pixels)'));
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('ImageCaption','Image Caption'));
	

    	

   return $fields;
}
}
 
class InteriorPage_Controller extends Page_Controller {
	
}
?>