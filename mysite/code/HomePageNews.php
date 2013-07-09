<?php
/**
 * Defines the Minisite page type
 */
class HomePageNews extends Page {

	static $defaults = array( 
	
	);
	
	

   static $db = array(
   
   'NewsTitle' => 'Text',
   'NewsDate' => 'Date',
   'MoreLink' => 'Text',
      'NewsDescription' => 'HTMLText',
   

   );
   
   
   
   static $has_one = array(
   

   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new TextField('NewsTitle', 'News Title '));
	/*$fields->addFieldToTab('Root.Content.Main', new CalendarDateField('NewsDate', 'News Date '));*/
	$calendarfield = new DateField('NewsDate', 'News Date'); 
	$calendarfield->setConfig('showcalendar', true);
	$fields->addFieldToTab('Root.Content.Main', $calendarfield);
	$fields->addFieldToTab('Root.Content.Main', new TextField('MoreLink', 'Read More Link '));
	$fields->removeFieldFromTab('Root.Content.Main', 'NewsDescription');


	
	
	
    return $fields;
	
   }
   
}
 
class HomePageNews_Controller extends Page_Controller {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>