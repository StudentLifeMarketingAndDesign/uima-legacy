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
	
	function AllNewsPosts() {
    if(!isset($_GET['start']) || !is_numeric($_GET['start']) || (int)$_GET['start'] < 1) 
    {
        $_GET['start'] = 0;
    }

    $SQL_start = (int)$_GET['start'];
    $itemsPerPage = 10;
    $limit = "{$SQL_start}, $itemsPerPage";
    //$filter = 'canView = 1';

    $newsEntries = DataObject::get('HomePageNews', '', 'NewsDate DESC', '', $limit);
    /*
    $doSet = new DataObjectSet();
    foreach ($newsEntries as $newsEntry) {
        if ($newsEntry->canView()) {
            $doSet->push($newsEntry);
        }
    }
   */

   
    return $newsEntries;
}
	
	
	
}
?>