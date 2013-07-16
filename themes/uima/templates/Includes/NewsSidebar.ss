<div class="news">
<h1><a href="/press-room/">News</a></h1>
<div class="bar3"></div>
<ul>  
<% control getSidebarNews %>
<li>
<h2><a href="$Link">$NewsTitle</a></h2>
<% if NewsDate %><p class="summary">$NewsDate.Format(F d&#44; Y)</p><% end_if %>
</li>
<% end_control %>
<li><a href="/press-room/">View All</a></li>
</ul>
</div>