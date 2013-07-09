<?php
/**
 * Defines the Minisite page type
 */
class HomePageTab extends SiteTree {

	static $defaults = array( 
	
	);
	
	

   static $db = array(

	'FirstTitle' => 'Text',
	'SecondTitle' => 'Text',
	'ContentLink' => 'Text',
	'ShortDescription' => 'Text',
	'DateText' => 'Text',
	'LocationText' => 'Text',

   );
   
   
   
   static $has_one = array(
   	'FeatureImage' => 'Image'
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('FirstTitle','Bold First Title:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('SecondTitle','Secondary Title:'));
    $fields->addFieldToTab('Root.Content.Main', new TextField('ContentLink','Enter the link here:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('ShortDescription','Short Description Here:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('DateText','Date Text:'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('LocationText','Location Text:'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('FeatureImage', 'Feature Box Image'));

	
		$fields->removeFieldFromTab("Root.Content","Content");
	
    return $fields;
	
   }
   
}
 
class HomePageTab_Controller extends Page_Controller {

function init() {
		parent::init();
		
		
	
	}
 
}
?>