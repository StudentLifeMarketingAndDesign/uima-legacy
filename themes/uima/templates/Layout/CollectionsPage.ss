<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>

<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">
<h1 class="title">Collections</h1>
    <div id="content" style="width:auto;">
    
   
   

<div id="feature-image">

 <% if CollectionsImage %>

<img src="<% control CollectionsImage %><% control SetWidth(348) %> $URL <% end_control %><% end_control %>" alt="$Title" />

<% end_if %> 



<p>$CollectionsImageCaption</p>
</div>
     
     
  
<h2>$CollectionsTitle</h2><br />
<p>$CollectionsText</p>


 <% if URLSegment = iowa-gallery %>
 <div id="digital-search">
 <h3>Search the Iowa Digital Library</h3>

  <form action="http://digital.lib.uiowa.edu/cdm4/results.php" target="_blank" method="get" name="simplesearchform" id="simplesearchform" style="margin: 0 0 0.5em 0;">
          <input type="text"  value="" onfocus="clearDefaultandCSS (this)" name="CISOBOX1" size="22" title="Search Iowa Digital Library"   />
          <input type="hidden" name="CISOOP1" value="all" />
          <input type="hidden" name="CISOFIELD1" value="CISOSEARCHALL" />
          <input type="hidden" name="CISOROOT" value="/uima"  />
          <input type="submit"  name="btnG" value="Search" class="submit"  title="Search Iowa Digital Library"  onclick="javascript:dmTextCookie(document.simplesearchform.CISOBOX1)" />
		 
       
            

        </form>

</div>

<% end_if %>
            

            
<ul class="artwork">
    
<% control Children %>
<li>
<a href="$Link">$ArtworkImage.SetWidth(90)</a>
<h3><a href="$Link">$Title</a></h3>
 <h4>$ArtworkTitle  $ArtworkYear</h4>


</li>
<% end_control %>

</ul>


<% if InSection(iowa-gallery) %>


<% end_if %>
            
    </div>
    
</div>