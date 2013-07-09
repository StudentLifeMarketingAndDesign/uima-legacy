<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">Press Room</h1>


<div id="content-container3">


<div class="news">
<h1><a href="/events">Events</a></h1>
<div class="bar1"></div>
<ul>
    
<% control ChildrenOf(events) %>
<li>

<h2><a href="$Link">$EventTitleBold $EventTitle</a></h2>
<h3>$EventDate.Format(F d&#44; Y)</h3>
</li>
<% end_control %>

</ul>


</ul>
</div>


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



<div id="content" class="fixed-width" >

<div id="press-room">
<h2>$NewsTitle</h2><br />
<h3>$NewsDate.Format(F d&#44; Y)</h3>
$Content



</div></div></div>
