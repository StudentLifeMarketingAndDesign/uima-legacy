<?php

class EventsPage extends Page {
	
	
		
	
	public static $db = array(
	
	"EventDate" => "Date",
	"EventTitle" => "Text",
	"EventTitleBold" => "Text",
	"EventLocation" => "Text",
	"LocationMap" => "Text",
	"EventTime" => "Text",
	"EventAddress" => "Text",
	"EventDescription" => "HTMLText",
	"ImageDescription" => "HTMLText",
	'DonorEvent' => 'Text',
	"VideoLink" => "Text",
	
	
	
	
	);
	
	public static $has_one = array(
	
	"EventImage" => "Image",
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
		$array = array(
	  'No' => 'No',
	   'Yes' => 'Yes',
	);
	 
	 $fields->addFieldToTab('Root.Content.EventDetails', new DropdownField(
	  'DonorEvent',
	  'Donor Event?',
	  $array
	));
	
	$fields->removeFieldFromTab("Root.Content","Content");

	$fields->addFieldToTab('Root.Content.EventDetails', new TextField('EventTitleBold', 'Event Title Bold'));
	$fields->addFieldToTab('Root.Content.EventDetails', new TextField('EventTitle', 'Event Title'));
	$cfield = new DateField('EventDate', 'Event Date'); 
	$cfield->setConfig('showcalendar', true);
	#$fields->addFieldToTab('Root.Content.EventDetails', new CalendarDateField('EventDate', 'Event Date'));
	$fields->addFieldToTab('Root.Content.EventDetails', $cfield);
	$fields->addFieldToTab('Root.Content.EventDetails', new TextField('EventTime', 'Event Time'));
	$fields->addFieldToTab('Root.Content.EventDetails', new TextField('EventAddress', 'Event Address'));
	$fields->addFieldToTab('Root.Content.EventDetails', new TextField('LocationMap', 'Event Location Map Link'));
	$fields->addFieldToTab('Root.Content.EventDetails', new TextField('EventLocation', 'Event Location'));
	$fields->addFieldToTab('Root.Content.EventDetails', new HTMLEditorField('EventDescription', 'Event Description'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('EventImage', 'Event Image width must be 348 pixels'));
	$fields->addFieldToTab('Root.Content.Images', new HTMLEditorField('ImageDescription', 'Image Description'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('VideoLink', 'Enter full youtube video url here'));

	
	
	
	
	
    return $fields;
	
   }	
	
}

class EventsPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>