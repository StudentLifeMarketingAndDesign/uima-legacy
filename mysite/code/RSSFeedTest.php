<?php
/**
 * Defines the Minisite page type
 */
class RSSFeedTest extends Page {

	public static $db = array(
		
	);
	

	static $has_one = array(
	   
	);

function getCMSFields() {
	$fields = parent::getCMSFields();

	$fields->removeByName('Content2'); 
	$fields->removeByName('Content3'); 
	$fields->removeByName('Content4'); 
	
    return $fields;
	
   }
   
}

 
 
class RSSFeedTest_Controller extends Page_Controller {

	function init() {
			parent::init();
		}
	
	function RSSFeedImport($numItems) {
		
		$feedURL= "http://static.imu.uiowa.edu/blog/?feed=rss2&amp;p=37";
	  $output = new DataObjectSet();
	  
	  include_once(Director::getAbsFile(SAPPHIRE_DIR . '/thirdparty/simplepie/SimplePie.php'));
	  
	  $t1 = microtime(true);
	  $feed = new SimplePie($feedURL, TEMP_FOLDER);
	  $feed->init();
	  if($items = $feed->get_items(0, $numItems)) {
		 foreach($items as $item) {
			
			// Cast the Date
			$date = new Date('Date');
			$date->setValue($item->get_date());
	
			// Cast the Title
			$title = new Text('Title');
			$title->setValue($item->get_title());
			
			// Cast the description and strip
			$desc = new Text('Description');
			$desc->setValue(strip_tags($item->get_description()));
	
			$output->push(new ArrayData(array(
			   'Title'         => $title,
			   'Date'         => $date,
			   'Link'         => $item->get_link(),
			   'Description'   => $desc
			)));
		 }
		 return $output;
	  }
	}
 
}
?>