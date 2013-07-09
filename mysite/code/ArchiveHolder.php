<?php

class ArchiveHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);

static $allowed_children = array('ExhibitionPage', 'ExhibitionArchive', 'ExhibitionHolder', 'ArchiveHolder');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	

	
    return $fields;
	
   }	
	
}

class ArchiveHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
function rss() {
  $rss = new RSSFeed($this->Children(), $this->Link(), "Scope Shows Feed - The University of Iowa", "SCOPE", "ShowArtist","ShowDescription");
  $rss->outputToBrowser();
  
  }		
	
}

?>