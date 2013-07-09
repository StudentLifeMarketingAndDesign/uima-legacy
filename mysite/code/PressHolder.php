<?php

class PressHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
	);

static $allowed_children = array('HomePageNews');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	

	
    return $fields;
	
   }	
	
}

class PressHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>