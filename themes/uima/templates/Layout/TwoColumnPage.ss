<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>

<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">$Title</h1>


<div id="content-container3">

<% if SidebarHeading %>
<div class="news">
<h1><a href="/blog">$SidebarHeading</a></h1>
<div class="bar4"></div>
$SidebarContent
</div>
<% end_if %>


<% if VideoLink %>
<div class="news">
<h1><a href="/blog">Video</a></h1>
<div class="bar4"></div>


<div id='mediaspace-small'></div>

<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','220','151','9','#ffffff');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','$VideoLink');
  so.write('mediaspace-small');
</script>



</div>
<% end_if %>



<% include NewsSidebar %>

<div class="news">
<h1><a href="blog">Blog</a></h1>
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



<div id="content" class="fixed-width">


$MainContent



</div>



</div>




    
   