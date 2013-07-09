<?php
/**
 * Defines the HomePage page type
 */
 
class ExhibitionPage extends Page {
 static $db = array(
					
   'FirstEventTitle' => 'Text',
   'SecondEventTitle' => 'Text',
   'EventDate' => 'Text',
   'EventLocation' => 'Text',
   'ExhibitionAddress' => 'Text',
   'LocationLink' => 'Text',
   'ImageCaption' => 'HTMLText',
   'EventDescription' => 'HTMLText',
   	'EventImageAlt' => 'Text',
	'VideoLink' => 'Text',
   	'ExhibitionType' => 'Text',
  

  
);
   static $has_one = array(
   
   'EventPageImage' => 'Image',
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content.Main","Content");
   
    $fields->addFieldToTab('Root.Content.PageContent', new ImageField('EventPageImage', 'Exhibition Image (width must be 348 pixels)'));
 	$fields->addFieldToTab('Root.Content.PageContent', new TextField('FirstEventTitle','First Exhibition Title'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('SecondEventTitle','Second Exhibition Title'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('EventDate', 'Exhibition Date '));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('EventLocation','Exhibition Location'));
    $fields->addFieldToTab('Root.Content.PageContent', new TextField('ExhibitionAddress','Exhibition Address'));
    $fields->addFieldToTab('Root.Content.PageContent', new TextField('LocationLink','Location Link'));
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('ImageCaption','Image Caption'));
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('EventDescription','Exhibition Description'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('EventImageAlt', 'Image Alt Tag'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('VideoLink', 'Enter full youtube video url here'));
	

$array = array(
	  'Active' => 'Active',
	  'Archive' => 'Archive',
	);
	 
	$fields->addFieldToTab('Root.Content.Main', new DropdownField(
	  'ExhibitionType',
	  'Exhibition Type',
	  $array
	));
    	

   return $fields;
}
}
 
class ExhibitionPage_Controller extends Page_Controller {
	
}
?>