<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>
<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">
<h1 class="title">Collections</h1>
    <div id="content" style="width:auto;">
    
    
     
        <div id="artwork-image">
        
        
        
 <% if ArtworkImage %>

<img src="<% control ArtworkImage %><% control SetWidth(500) %> $URL <% end_control %><% end_control %>" alt="$ArtworkArtist" />

  <% end_if %>    
     </div>
     

<h2>$ArtworkArtist</h2><br />
<h3>$ArtworkArtistLifespan</h3> <br />

<div class="artwork-details">
<h4>$ArtworkTitle  $ArtworkYear</h4>
<h5>$ArtworkDimensions </h5>
<p>$ArtworkCollectionInfo</p>



</div>


 <% if VideoLink %>
<div class="video-container-small">
<div id='mediaspace'></div>

<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','234','159','9','#ffffff');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','$VideoLink');
  so.write('mediaspace');
</script>

</div><% end_if %>

          
<p>$ArtworkText</p>
            
 
<div id="artwork-siblings">           
<% control Parent %>
<p>Other pages in the <a href="$Link">$Title</a> Collection</p>
<ul>
<% control Children %>
<li>
<h3><a href="$Link">$Title</a></h3>
</li>
<% end_control %>
</ul>
<% end_control %>
  
</div>         
</div>
    
</div>


 