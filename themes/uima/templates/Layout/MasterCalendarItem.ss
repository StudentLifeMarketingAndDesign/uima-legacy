<div id="content-container3">
 
<div id="content">

<div id="widgets">
<a href="/"><img alt="Add to Calendar" title="Add to Calendar" src="$ThemeDir/images/calendar.png" width="24" height="26" /></a>
<a href="/"><p>Add to Calendar</p></a>
<a href="/"><img src="$ThemeDir/images/email.png" alt="Email" title="Email" width="27" height="19" /></a>
<a href="/"><p>Email</p></a>
<a href="/"><img alt="Tickets" title="Tickets" src="$ThemeDir/images/tickets.png" width="31" height="23" /></a>
<a href="/"><p>Buy Tickets</p></a>
 

<span class="share">

<p>Share</p><img alt="divider" src="$ThemeDir/images/slash.png" width="15" height="26" />
<a href="/"><img alt="facebook" title="Facebook" src="$ThemeDir/images/facebook.png" width="66" height="20" />
<img alt="divider" src="$ThemeDir/images/slash.png" width="15" height="26" /> 
<a href="/"><img alt="twitter" title="twitter" src="$ThemeDir/images/twitter.png" width="64" height="19" /></a>
<img alt="divider" src="$ThemeDir/images/slash.png" width="15" height="26" />

</span><!-- end share span -->

</div><!-- end top div -->




<div class="eventimage">
<% if EventImage %> 
$EventImage

<% else %>
<a href="$Link"><img src="$ThemeDir/images/interior_image2.jpg" alt="Performing Arts at Iowa Image"/></a>

<% end_if %>
<br />
 <% if Video %>
<h1 class="video">Video</h1>
<div class="eventvideo">

<object width="336" height="205"><param name="movie" value="http://www.youtube.com/v/{$Video}&hl=en_US&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/{$Video}&hl=en_US&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="336" height="205"></embed></object>

</div><% end_if %>

</div><!-- end right column interior -->



  
  <h2>$Title</h2>
  <h3>$EventDate.Format(F d&#44; Y)  at  $EventStartTime.Nice</h3>
  <h4><a href="$LocationURL" target="_blank"> $Location</a></h4>
 <% if EventTickets %>  <h5>$EventTickets</h5><% end_if %>
  $EventDescription
  
 


  

</div><!-- end content div -->

</div><!-- end main wrapper div -->

</div><!-- end body wrapper div -->
