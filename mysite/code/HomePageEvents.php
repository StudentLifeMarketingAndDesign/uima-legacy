<?php
/**
 * Defines the Minisite page type
 */
class HomePageEvents extends SiteTree {

	static $defaults = array( 
	
	);
	
	

   static $db = array(
   
   'EventsTitle' => 'Text',
   'EventsDate' => 'Date',
   'EventsLink' => 'Text',
   'EventsDescription' => 'HTMLText',
   

   );
   
   
   
   static $has_one = array(
   
   	'EventImage' => 'Image'
   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventsTitle', 'Events Title '));
	#$fields->addFieldToTab('Root.Content.Main', new CalendarDateField('EventsDate', 'Events Date '));
	$calendarfield = new DateField('EventsDate', 'Events Date'); 
	$calendarfield->setConfig('showcalendar', true);
	$fields->addFieldToTab('Root.Content.Main', $calendarfield);
	$fields->addFieldToTab('Root.Content.Main', new TextField('EventsLink', 'Events Link '));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('EventsDescription', 'Events Description'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('EventImage', 'Event Image (539 pixels wide by 356 tall)'));
	$fields->removeFieldFromTab('Root.Content', 'Content');

	
	
	
    return $fields;
	
   }
   
}
 
class HomePageEvents_Controller extends ContentController {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>