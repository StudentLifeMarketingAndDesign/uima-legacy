<?php

class TwoColumnPage extends Page {
	static $db = array(
		'MainContent' => 'HTMLText',
		'VideoLink' => 'Text',
		'SidebarContent' => 'HTMLText',
		'SidebarHeading' => 'Text'
	);
	static $has_one = array(
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('MainContent','Content Here'));
		
		$fields->addFieldToTab('Root.Content.Sidearea', new TextField('VideoLink', 'Enter full youtube video url here.'));
		$fields->addFieldToTab('Root.Content.Sidearea', new TextField('SidebarHeading','Heading for side area content.'));
		$fields->addFieldToTab('Root.Content.Sidearea', new HTMLEditorField('SidebarContent','Content for side area here.'));
		
		return $fields;
	}
}

class TwoColumnPage_Controller extends Page_Controller {
	
}
?>