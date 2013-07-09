<?php

class MagazineHolder extends Page {
	
	public static $db = array(
							  
	"MagazineDescription" => "HTMLText",					  

	);
	
	public static $has_one = array(
	);

static $allowed_children = array('MagazinePage');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	


	$fields->addFieldToTab('Root.Content.MagazineDetails', new HTMLEditorField('MagazineDescription', 'Magazine Date Range'));
	
    return $fields;
	
   }	
	
}

class MagazineHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
		
	
}

?>