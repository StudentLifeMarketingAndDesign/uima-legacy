    <script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>

<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">
<h1 class="title">Exhibitions</h1>
    <div id="content" style="width:auto;">
    
    
        <% if EventPageImage %>
        <div id="feature-image">
    
     <img src="<% control EventPageImage %><% control SetWidth(348) %> $URL <% end_control %><% end_control %>" alt="$FirstEventTitle $SecondEventTitle" />
     
     
     <p>$ImageCaption</p>
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
      
      
        
  
<h2>$FirstEventTitle</h2><br />
            <h3>$SecondEventTitle</h3> <br />
            <h4>$EventDate</h4>
            
            <h5><a href="$LocationLink">$EventLocation</a> </h5>
           
            <p>$ExhibitionAddress</p>
            
            <p>$EventDescription</p>
    </div>
    
</div>


 