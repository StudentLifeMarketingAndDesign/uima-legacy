<?php

class EventsHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);

static $allowed_children = array('EventsPage','EventsHolder');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeFieldFromTab("Root.Content","Content");
	
    return $fields;
	
   }	
	
}

class EventsHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	

	function rss() {
		$rss = new RSSFeed($this->Children(), $this->Link(), "UIMA Events Feed - The University of Iowa", "UIMA", "EventTitle","EventDescription");
		$rss->outputToBrowser();
	  }	
	  

	public function archivedEvents() {
		
		$archiveID = 486;
		$eventsPerPage = 10;
		
		if (!isset($_GET['start']) || !is_numeric($_GET['start'])){
        	$start = 0;
      	}
		else {
       		$start = intval($_GET['start']);
      	}
      	
      	$limit = "{$start},{$eventsPerPage}";
      	
    

		
		
		$eventSet = DataObject::get("EventsPage", "ParentID = ".$archiveID, "EventDate DESC", null, $limit );
		
		return $eventSet;
	
	
	}	
	  
	  
	
}

?>