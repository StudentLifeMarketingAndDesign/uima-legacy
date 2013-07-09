<script src="/mysite/code/javascript/jquery-1.js" type="text/javascript"></script>
<script src="/mysite/code/javascript/ui_002.js" type="text/javascript"></script>
<script src="/mysite/code/javascript/ui.js" type="text/javascript"></script>
<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>
<script type="text/javascript">
            $(function() {
                $('#rotate > ul').tabs({ fx: { opacity: 'toggle' } }).tabs('rotate', 7000);
            });
        </script> 
<% include HomeHeader %>


<div id="bodywrap"><!--  / header div -->

<div id="content-container3">
<div class="news">
<h1><a href="/events">Events</a></h1>
<div class="bar1"></div>
<ul>  
<% control currentEvents %>
<li>
<h2><a href="$Link">$EventTitleBold $EventTitle</a></h2>
<h3>$EventDate.Format(F d&#44; Y)</h3>
</li>
<% end_control %>
</ul>
</div>



<div class="news">
<h1><a href="/press-room/">News</a></h1>
<div class="bar3"></div>
<ul>  
<% control ChildrenOf(press-room) %>
<li>
<h2><a href="$Link">$NewsTitle</a></h2>
<% if NewsDate %><p class="summary">$NewsDate.Format(F d&#44; Y)</p><% end_if %>
</li>
<% end_control %>
</ul>
</div>

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

<div class="news">
<h1><a href="http://www.youtube.com/user/UIMAartmatters">Video</a></h1>
<div class="bar3"></div>

<div id='mediaspace-small'></div>

<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','220','151','9','#ffffff');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','{$VideoURL}');
  so.write('mediaspace-small');
</script>


</div>
</div><!--/contentcontainer-->
 

<div id="content-container2">
<div id="rotate">
<% control Tabs %>
<div <% if First %>class="ui-tabs-panel" <% else %> class="ui-tabs-panel ui-tabs-hide"<% end_if %> id="tab$Pos">
<a href="$ContentLink"><img alt="$FirstTitle $SecondTitle" src="$FeatureImage.URL" /></a>
<h2><a href="$ContentLink">$FirstTitle</a></h2><br />
               <% if SecondTitle %><h3>$SecondTitle</h3> <br /><% end_if %>
            <% if DateText %><h4>$DateText</h4><% end_if %>
           <% if LocationText %> <h5>$LocationText </h5> <% end_if %>
             <% if ShortDescription %><p>$ShortDescription</p><% end_if %>
           </div> 
<% end_control %>
<ul class="ui-tabs-nav">
<% control Tabs %>
<li <% if First %>class="ui-tabs-selected"<% end_if %>><a href="#tab$Pos">$Title</a></li>
<% end_control %>
</ul>
</div>
    
<div id="locations">
<ul>
<% control ChildrenOf(visit-us) %>
<li class="locations$Pos">
<h2>UIMA </h2><p>at the</p><h3><a href="$Link">$LocationTitleShorthand</a></h3>

<a href="$Link"><img src="<% control LocationImage %><% control SetWidth(173) %> $URL <% end_control %><% end_control %>" alt="$LocationTitle" /></a>
</li>
<% end_control %>

</ul>

<div style="clear:both"></div>

<h1><a href="/visit-us">Visit Us</a></h1>

<!-- visit text
<p><strong>The UIMA@IMU will be closed from July 2-5 for the Fourth of July weekend. Normal hours will resume on July 6.</strong></p>
-->
$Content1

</div>
</div>