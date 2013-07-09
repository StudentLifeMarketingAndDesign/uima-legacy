<?php

class LocationsPage extends Page {
	
	
		
	
	public static $db = array(
	
	"LocationTitle" => "Text",
	"LocationTitleShorthand" => "Text",
	"LocationAddress" => "Text",
	"LocationLink" => "Text",
	"LocationUrl" => "Text",
	"LocationHours" => "HTMLText",
	"LocationPhone" => "Text",
	"LocationDescription" => "HTMLText",
	"LocationImageCaption" => 'HTMLText',
	
	
	
	
	);
	
	public static $has_one = array(
	
	"LocationImage" => "Image",
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeFieldFromTab("Root.Content","Content");

	$fields->addFieldToTab('Root.Content.LocationDetails', new TextField('LocationTitle', 'Location Title'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new TextField('LocationTitleShorthand', 'Location Title For Display Boxes'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new TextField('LocationAddress', 'Location Address'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new TextField('LocationUrl', 'Location Full Url'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new TextField('LocationLink', 'Location Short Url for display only'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new TextField('LocationPhone', 'Location Phone'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new HTMLEditorField('LocationHours', 'Location Hours'));
	$fields->addFieldToTab('Root.Content.LocationDetails', new HTMLEditorField('LocationDescription', 'Location Description'));
		$fields->addFieldToTab('Root.Content.Images', new HTMLEditorField('LocationImageCaption', 'Location Caption'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('LocationImage', 'Event Image width must be 348 pixels'));

	
	
	
	
	
    return $fields;
	
   }	
	
}

class LocationsPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>