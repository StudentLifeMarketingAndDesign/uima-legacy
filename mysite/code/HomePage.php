<?php
/**
 * Defines the HomePage page type
 */
 
class HomePage extends Page {
 static $db = array(
   'Content1' => 'HTMLText',
   'VideoURL' => 'Text'
  
);
   static $has_one = array(
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content.Main","Content");
   
 	$fields->addFieldToTab('Root.Content.VisitUs', new HTMLEditorField('Content1','Visit Us Text'));
 	 $fields->addFieldToTab('Root.Content.Main', new TextField('VideoURL','YouTube Video URL'));



    	

   return $fields;
}
}
 
class HomePage_Controller extends Page_Controller {
	public function Tabs(){
		
		$whereStatement = "ParentID = ".$this->ID;
		return DataObject::get("HomePageTab", $whereStatement);
		
	}	
}




?>