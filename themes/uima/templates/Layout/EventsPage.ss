    <script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>

<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">
<h1 class="title">Events &amp; Programs</h1> 


<div id="content">


<% if EventImage %>
<div id="feature-image">
       

<img src="<% control EventImage %><% control SetWidth(348) %> $URL <% end_control %><% end_control %>" alt="$EventTitleBold $EventTitle" />
     
     
     
<p>$ImageDescription</p>
</div><% end_if %>
    
    
    
    
<% if VideoLink %>
<div class="video-container">
<h5>Video</h5>
<div id='mediaspace'></div>

<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','348','247','9','#ffffff');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','$VideoLink');
  so.write('mediaspace');
</script>

</div><% end_if %>
      
 <div class="$DonorEvent">
	<h2>$EventTitleBold</h2><br />
	<h3>$EventTitle</h3>
	<h4>  <% if EventDate %> $EventDate.Format(F d&#44; Y),<% end_if %>  <% if EventTime %>$EventTime <% end_if %> </h4>
   <% if EventLocation %> <h5><a href="$LocationMap">$EventLocation</a></h5><% end_if %>
     <% if EventAddress %> <h6>$EventAddress</h6><% end_if %>
     <p style="float:right;">$EventDescription</p>
</div>
</div>

</div>
       
      