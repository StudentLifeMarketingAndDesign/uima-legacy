<?php

class Page extends SiteTree {
	
	public static $db = array(
	);
	
	public static $has_one = array(
	);
	
	  /*
   * limits words to a number, but tries to validate the code
   */
   public function getSummaryHTML ($ContentArea='Content', $limit = 25){
      $m = 0;
      $addEplisis = '';
      $returnstr = '';
      $returnArray = array();
      $html = array();
      $chars = preg_split('/(<[^>]*[^\/]>| )/i', $this->$ContentArea, -1, PREG_SPLIT_NO_EMPTY | PREG_SPLIT_DELIM_CAPTURE);
      foreach ($chars as $elemnt) {
         // found start tag
         if(preg_match('/^<(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt)){
            preg_match('/^<(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt, $matches);
            array_push($html, $matches[1]);// convert <p class=""> to p
            array_push($returnArray, $elemnt);
            // found end tag
         } else if(preg_match('/^<\/(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt)){
            preg_match('/^<\/(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt, $matches);
            $testelement = array_pop ($html);
            // match (ie: <p>etc</p>)
            if($testelement==$elemnt[1]) array_pop($html);
            array_push($returnArray, $elemnt);
         } else {
            // done
            if($elemnt == ' ') continue;
            array_push($returnArray, $elemnt);
            $m++;
            if($m > $limit) {
               $addEplisis = '&hellip;';
               break;
            }
         }
      }
      // convert start tags to end tags
      $tmpr = '';
      foreach ($html as $elemnt) {
         $tmpr.='</'.$elemnt.'>';
      }
      return implode($returnArray, ' ') . $addEplisis . $tmpr;
   }
	
}

class Page_Controller extends ContentController {
	
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work
		Requirements::themedCSS("form"); 
	
	}
	
		function LatestNews($num=3) {
		$news = DataObject::get_one("BlogHolder");
		return ($news) ? DataObject::get("BlogEntry", "ParentID = $news->ID", "Date DESC", "", $num) : false;
	} 
	
	
	
	
	function RSSFeedImport($numItems) {
		
		$feedURL= "feed://uima.blogspot.com/feeds/posts/default?alt=rss";
	  $output = new DataObjectSet();
	  
	  require_once(Director::getAbsFile('/local/www/vhosts/uima.uiowa.edu/htdocs/mysite/code/simplepie/simplepie.inc'));
	  
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
			$title->setValue(html_entity_decode($item->get_title()));
			
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
	
	/**
	 * Site search form 
	 */ 
	function SearchForm() {
		$searchText = isset($_REQUEST['Search']) ? $_REQUEST['Search'] : 'Search';
		$fields = new FieldSet(
	      	new TextField("Search", "", $searchText)
	  	);
		$actions = new FieldSet(
	      	new FormAction('results', 'Search')
	  	);

	  	return new SearchForm($this, "SearchForm", $fields, $actions);
	}
	
	/**
	 * Process and render search results
	 */
	function results($data, $form){
	  	$data = array(
	     	'Results' => $form->getResults(),
	     	'Query' => $form->getSearchQuery(),
	      	'Title' => 'Search Results'
	  	);

	  	return $this->customise($data)->renderWith(array('Page_results', 'Page'));
	}
	
	function randomImage() {
		/*$imageNumber = rand(1,20);
		$imageName = '<img src="/themes/dpa/images/background_'.$imageNumber.'.jpg" class="bg" />';
		
		return $imageName;*/
		return DataObject::get('BackgroundImage', null, 'RAND()',null,1); 
		
						
	}
	
	public function currentEvents(){
		
		$eventsPageID = 23;
		$limit = 10;
		$eventSet = DataObject::get("EventsPage", "ParentID = ".$eventsPageID, 'EventDate DESC', null, $limit );
		
		
		if($eventSet){
			return $eventSet;
		}
	
	}  
	
	public function getSidebarNews(){
		 $limit = "0, 10";
		

		 $newsEntries = DataObject::get('HomePageNews', '' , 'NewsDate DESC', '', $limit);
		 
		 return $newsEntries; 
	}
	
}

?>