<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">
<div class="blog-title"><a href="/blog"><img src="$ThemeDir/images/artmatters2.png" width="225" height="39" alt="art matters" longdesc="http://uima.uiowa.edu/blog" /></a></div>


<div id="content-container3">

<div class="news">
<h1><a href="/">Blog Archive</a></h1>
<div class="bar4"></div>
<ul>
<% control LatestNews(3) %>
<li><h2><a href="$Link">$MenuTitle</a></h2>
<p class="summary">$Date.Format(F d&#44; Y)</p></li>
<% end_control %>
</ul>
</div>


<div class="news">
<!--<h1><a href="/">Video</a></h1>-->
<div class="bar5"></div>

   
  <% include BlogSideBar %>

</div>
</div>








    <div id="content" >
    
   
   
   
<div id="BlogContent" class="typography">
	<% include BreadCrumbs %>
	
	<div class="blogEntry">
		<h2 class="postTitle">$Title</h2>
		<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long <% _t('COMMENTS', 'Comments') %></p>
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('TAGS', 'Tags:') %> 
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>
		<% if Image %>
			<% control Image.setWidth(235) %>
				<img src="$URL" class="right" />
			<% end_control %>
		<% end_if %>
		<% if IsWYSIWYGEnabled %>
			$Content
		<% else %>
			$ParsedContent
		<% end_if %>
		
		<br />
	</div>
	
	<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
	
	<% if TrackBacksEnabled %>
		<% include TrackBacks %>
	<% end_if %>
</div>

   
   
   
   
   
   
   


<br /><br />



</div></div>