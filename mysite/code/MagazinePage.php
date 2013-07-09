<?php
/**
 * Defines the Minisite page type
 */
class MagazinePage extends Page {

	static $defaults = array( 
	
	);
	
	

   static $db = array(
   
	"ArticleDate" => "Date",
	"ArticleTitle" => "Text",
	"ArticleAuthor" => "Text",
	"ArticleContent" => "HTMLText",

   


   );
   
   
   
   static $has_one = array(
   
   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->removeFieldFromTab("Root.Content","Content");

	$fields->addFieldToTab('Root.Content.ArticleDetails', new TextField('ArticleTitle', 'Article Title'));
	$fields->addFieldToTab('Root.Content.ArticleDetails', new TextField('ArticleAuthor', 'Article Author'));
	$fields->addFieldToTab('Root.Content.ArticleDetails', new CalendarDateField('ArticleDate', 'Article Date'));
	$fields->addFieldToTab('Root.Content.ArticleDetails', new HTMLEditorField('ArticleContent', 'Article Content'));

	
	
	
    return $fields;
	
   }
   
}
 
class MagazinePage_Controller extends Page_Controller {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>



