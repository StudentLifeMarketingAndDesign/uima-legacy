<div class="blogSummary">
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long<a href="$Link#PageComments_holder" title="View Comments Posted"></a></p>
	<% if TagsCollection %>
		<p class="tags">
			Tags:
			<% control TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	<div class="summaryContent">
		$Content.FirstParagraph(html)
		<% if Image %><a href="$Link"><% control Image.SetWidth(157) %><img src="$URL" /><% end_control %></a><% end_if %>
	</div>
	
	<p class="blogVitals">
		<a href="$Link" class="readmore" title="Read Full Post">Read the full post</a>
	</p>
</div>