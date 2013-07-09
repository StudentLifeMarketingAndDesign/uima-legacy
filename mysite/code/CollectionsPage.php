<?php
/**
 * Defines the HomePage page type
 */
 
class CollectionsPage extends Page {
 static $db = array(
					
   'CollectionsTitle' => 'Text',
   'CollectionsText' => 'HTMLText',
   'CollectionsImageCaption' => 'HTMLText',

   
  

  
);
   static $has_one = array(
   
   'CollectionsImage' => 'Image',
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content.Main","Content");
   
    $fields->addFieldToTab('Root.Content.PageContent', new ImageField('CollectionsImage', 'Collections Image (width must be 348 pixels)'));
 	$fields->addFieldToTab('Root.Content.PageContent', new TextField('CollectionsTitle','Collections Title'));
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('CollectionsImageCaption','Collections Image Caption'));
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('CollectionsText','Collections HTML Text'));

	

    	

   return $fields;
}
}
 
class CollectionsPage_Controller extends Page_Controller {
	
}
?>