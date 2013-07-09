<?php

class ExhibitionArchive extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);

static $allowed_children = array('ExhibitionPage', 'ExhibitionHolder', 'ArchiveHolder');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeFieldFromTab("Root.Content","Content");
	
    return $fields;
	
   }	
	
}

class ExhibitionArchive_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
function rss() {
  $rss = new RSSFeed($this->Children(), $this->Link(), "Scope Shows Feed - The University of Iowa", "SCOPE", "ShowArtist","ShowDescription");
  $rss->outputToBrowser();
  
  }		
	
}

?>