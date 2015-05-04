    <script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>
   
    
<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">$Title</h1>


<div id="content-container3">

<% include NewsSidebar %>

</div>



<div id="content" class="fixed-width">
<div id='mediaspace'><p>Sorry, you need to install <a href="http://get.adobe.com/flashplayer/" target="_blank">flash</a> to see this content.</p></div>

<!--
<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','540','433','9','#');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','/video-player-holder');
  so.addVariable('playlist','bottom');
  so.addVariable('skin','http://www.longtailvideo.com/jw/upload/stylish.swf');
  so.addVariable('backcolor','ffffff');
    so.addVariable('playlistsize','90','ffffff');
  so.addVariable('frontcolor','666666');
  so.addVariable('lightcolor','f4f4f4');
  so.write('mediaspace');
</script>-->


<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','540','453','9','#');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
   so.addVariable('file','http://gdata.youtube.com/feeds/api/playlists/919A9FCB55ABBE35?v=2&max-results=50');
  so.addVariable('playlist','bottom');
  so.addVariable('skin','http://www.longtailvideo.com/jw/upload/overlay.swf');
  so.addVariable('backcolor','ffffff');
    so.addVariable('playlistsize','90');
  so.addVariable('frontcolor','000000');
  so.addVariable('lightcolor','b8da00');
  so.write('mediaspace');
</script>






</div></div>




    
   