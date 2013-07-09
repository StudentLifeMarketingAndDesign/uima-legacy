<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">
<div class="blog-title"><a href="/blog"><img src="$ThemeDir/images/artmatters2.png" width="225" height="39" alt="art matters" longdesc="http://uima.uiowa.edu/blog" /></a></div>


<div id="content-container3">


<div class="news">
<h1><a href="/blog">Recent Blog Posts</a></h1>
<div class="bar5"></div>

<% if LatestNews %>
<ul>
<% control LatestNews(3) %>
<li><h2><a href="$Link">$MenuTitle</a></h2>
<p class="summary">$Date.Format(F d&#44; Y)</p></li>
<% end_control %>
</ul>
<% end_if %>
</div>


<div id="video">
<h1><a href="/">Blog Archive</a></h1>
<div class="bar5"></div>
<% include BlogSideBar %>
</div>


<div class="news">
<h1><a href="http://uima.blogspot.com/" target="_blank">Blog Archive 2008-09</a></h1>
<div class="bar4"></div>
<ul>
<% control RSSFeedImport(3) %>
  <li><h2><a target="_blank" href="$Link">$Title</a></h2><p class="summary">$Date.Format(F d&#44; Y)</p></li>
   <% end_control %>
</ul>
</div>
</div>







    <div id="content" class="fixed-width">
    
   
   
   


<div id="BlogContent" class="blogcontent typography">
	
	<% include BreadCrumbs %>
	
	<% if Tag %>
		<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$Tag'</h3>
	<% end_if %>
	
	<% if BlogEntries %>
		<% control BlogEntries %>
				<% include BlogSummary %>
		<% end_control %>
	<% else %>
		<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
	<% end_if %>
	
	<% include BlogPagination %>
	
</div>
 
   
   
   
   
   
   
   
   
   


<br /><br />



</div></div>