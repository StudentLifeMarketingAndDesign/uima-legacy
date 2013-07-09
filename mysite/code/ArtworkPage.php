<?php
/**
 * Defines the HomePage page type
 */
 
class ArtworkPage extends Page {
 static $db = array(
					
   'ArtworkArtist' => 'Text',
   'ArtworkArtistLifespan' => 'Text',
   'ArtworkTitle' => 'Text',
   'ArtworkYear' => 'Text',
   'ArtworkMedium' => 'Text',
   'ArtworkDimensions' => 'Text',
   'ArtworkCollectionInfo' => 'Text',
   'ArtworkText' => 'HTMLText',
   'VideoLink' => 'Text',
   
  

  
);
   static $has_one = array(
   
   'ArtworkImage' => 'Image',
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content.Main","Content");
   
    $fields->addFieldToTab('Root.Content.PageContent', new ImageField('ArtworkImage', 'Artwork Image'));
 	$fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkArtist','Artwork Artist'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkArtistLifespan','Artist Lifespan Information'));
    $fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkTitle','Artwork Title'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkYear','Artwork Year'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkMedium','Artwork Medium'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkDimensions','Artwork Dimensions'));
	$fields->addFieldToTab('Root.Content.PageContent', new TextField('ArtworkCollectionInfo','Collections Information'));
	$fields->addFieldToTab('Root.Content.PageContent', new HTMLEditorField('ArtworkText','Artwork HTML Text'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('VideoLink', 'Enter full youtube video url here'));
	

    	

   return $fields;
}
}
 
class ArtworkPage_Controller extends Page_Controller {
	
}
?>