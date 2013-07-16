<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>
    
<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">$Title</h1>


<div id="content-container3">


<% include NewsSidebar %>


<div class="news">

<h1><a href="/blog">Blog</a></h1>
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



</div>



<div id="content">

$Content

<div id="locations">


<ul>
<% control allChildren %>
<li class="locations$Pos">
<h2>UIMA </h2><p>at the</p><h3><a href="$Link">$LocationTitleShorthand</a></h3>
<a href="$Link"><img src="<% control LocationImage %><% control SetWidth(173) %> $URL <% end_control %><% end_control %>" alt="$LocationTitle" /></a>
</li>
<% end_control %>

</ul>

</div>



</div></div>




    
   