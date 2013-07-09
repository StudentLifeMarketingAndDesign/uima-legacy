<?php

class LocationsHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);

static $allowed_children = array('LocationsPage');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();

	
    return $fields;
	
   }	
	
}

class LocationsHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>