<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>$Title - University of Iowa Museum of Art  - The University of Iowa</title>
<% base_tag %>

<!--[if IE 6]><style type='text/css'>@import url(/themes/uima/css/ie6.css);</style><![endif]-->
<!--[if IE 7]><style type='text/css'>@import url(/themes/uima/css/ie7.css);</style><![endif]-->
<!--[if lte IE 6]>
<script type="text/javascript" src="/mysite/code/javascript/supersleight-min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="$ThemeDir/css/styles.css" />
<link rel="stylesheet" type="text/css" href="$ThemeDir/css/lightbox.css" />
<link rel="stylesheet" href="/mysite/code/javascript/ui.css" type="text/css" media="print, projection, screen"/>
<script src="/mysite/code/javascript/jquery-1.js" type="text/javascript"></script>
<script src="/mysite/code/javascript/ui_002.js" type="text/javascript"></script>
<script src="/mysite/code/javascript/ui.js" type="text/javascript"></script>
<script type="text/javascript">
            $(function() {
                $('#rotate > ul').tabs({ fx: { opacity: 'toggle' } }).tabs('rotate', 7000);
            });
        </script>
<style type="text/css">
/*img, div, a { behavior: url(/mysite/code/iepngfix.htc) }*/
#top-container {
	background-image: url(
	
	<% control  randomImage %>
	
	$BGImage.URL
	
	<% end_control %>
	);
	
}
</style> 
<link rel="SHORTCUT ICON" href="$ThemeDir/images/favicon.ico" />
</head>

<body>
<div id="container">

$Layout

<div id="content-container1">
<ul class="menu">
	<% control Menu(1) %>
	<li>
   	<% if LinkOrSection = section %>
		<a href="$Link" id="$URLSegment">$MenuTitle</a>
        <% if Children %> 
            <ul>
            <% control Children %> 
                <li>
                    <a href="$Link">$MenuTitle</a>
                    
                </li>
            <% end_control %>
           </ul>
    	<% end_if %>	
	<% else %>
		<a href="$Link" id="$URLSegment">$MenuTitle</a>
	<% end_if %>
	</li>
	<% end_control %>
</ul>

<div id="donate-nav" style="text-align:center;"><a href="/join/">Join</a></div>
        <div id="icons">
        <a href="http://www.twitter.com/UIMuseumofArt" target="_blank"><img src="$ThemeDir/images/twitter.png" alt="twitter" width="22" height="22" /></a>
        <a href="http://www.flickr.com/photos/iowaart/" target="_blank"><img src="$ThemeDir/images/flickr.png" alt="twitter" width="22" height="22" /></a>
        <a href="http://www.youtube.com/user/UIMAartmatters" target="_blank"><img src="$ThemeDir/images/youtube.png" alt="youtube" width="22" height="22" /></a>
        <a href="http://www.facebook.com/UIMuseumofArt" target="_blank"><img src="$ThemeDir/images/facebook2.png" alt="facebook" width="22" height="22" /></a></div>
<div id="newsletter2">
<form name="ccoptin" action="http://ui.constantcontact.com/d.jsp" target="_blank" method="post" >
<label><strong>Sign up for our Newsletter: </strong></label>
<input type="text" name="ea" size="20" class="text" value="E-mail Address"  />
<input type="submit" name="go" value="Join" class="submit" />
<input type="hidden" name="m" value="1101515594689" />
<input type="hidden" name="p" value="oi" />
</form>
</div>  
    
</div> <!--/content-container1-->


<div id="clear"></div>
</div><!--/end bodywrap div -->


<div id="footer-container">    
<div class="footer"><!--/end top div -->

<div class="footer-address">
<div class="address">
<a href="/"><img alt="University of Iowa Museum of Art" src="$ThemeDir/images/footer_logo.png" width="194" height="78" /></a><br />
<p>1375 Highway One West | 1840 Studio Arts Building | Iowa City, Iowa 52242<br />
Telephone: (319) 335-1727 | Fax: (319) 335-3677 | <a href="mailto:uima@uiowa.edu">uima@uiowa.edu</a>
</p>
</div>



<!--<p style="font-size:11px;text-align:center;color:#999;">Telephone: (319) 335-1725 | 
Fax: (319) 335-3677 |
<a href="mailto:uima@uiowa.edu">uima@uiowa.edu</a></p>-->



<div id="newsletter">
<p>Sign up for our Newsletter</p>	
<form name="ccoptin" action="http://ui.constantcontact.com/d.jsp" target="_blank" method="post" >
<label><strong>E-Mail Address: </strong></label>
<input type="text" name="ea" size="20" class="text" />
<input type="submit" name="go" value="Join" class="submit" />
<input type="hidden" name="m" value="1101515594689" />
<input type="hidden" name="p" value="oi" />
</form>
</div>            
   
  <a href="http://www.uiowa.edu"><img class="uiowa" alt="The University of Iowa" src="$ThemeDir/images/uiowalogo.png" /></a>
  <p class="provost"><a href="http://provost.uiowa.edu/">Office of the Provost</a></p>
             
</div>

<div class="footer-links1">
<ul>
<li><h5><a href="/collections">Collections</a></h5></li>
<li><a href="/european-art-1900-1970/">European Art 1900-1970</a></li>
<li><a href="/american-art-1900-1970/">American Art 1900-1970</a></li>
<li><a href="/contemporary-painting-and-sculpture/">Contemporary Painting and Sculpture</a></li>
<li><a href="/african-art/">African Art</a></li>
<li><a href="/works-on-paper-before-1900/">Works on Paper Before 1900</a></li>
<li><a href="/european-and-american-prints-drawings-photographs-1900-1970/">European and American Prints,<br /> Drawings, Photographs 1900-1970</a></li>
<li><a href="/arts-of-the-ancient-americas-and-native-america/">Arts of the Ancient Americas<br /> and Native America</a></li>
<li><a href="/ceramics-and-metal-work/">Ceramics and Metal Work</a></li>
<li><a href="/iowa-gallery/">Iowa Gallery: Digitalized Art Collections</a></li>
</ul>

<ul>
<li>
  <h5><a href="/exhibitions">Exhibitions</a></h5></li>
</ul>

<ul>
<li><h5><a href="/events/">Events & Programs</a></h5></li>

</ul>
</div>


<div style="margin-left:25px;" class="footer-links2">


<ul>
<li><h5><a href="/education-tours/">Education & Tours</a></h5></li>
<li><a href="/school-programs/">School Programs</a></li>
<li><a href="/book-a-tour/">Book a Tour</a></li>
</ul>

<ul>
<li><h5><a href="/uima-merchandise/">Shop</a></h5></li>
</ul>

<ul>
<li><h5><a href="/visit-us/">Visit Us</a></h5></li>
<li><a href="/black-box-theater/">Black Box Theater</a></li>
<li><a href="/iowa-memorial-union/">Iowa Memorial Union</a></li>
<li><a href="/figge-art-museum/">Figge Art Museum</a></li>
<li><a href="/studio-arts-building/">Studio Arts Building</a></li>
<li><a href="/levitt-center/">Levitt Center</a></li>
</ul>
</div>

<div style="margin-left:10px;" class="footer-links4">

<ul>
<li><h5><a href="/blog/">Blog</a></h5></li>
</ul>

<ul>
<li><h5><a href="/support/">Donate</a></h5></li>
<li><a href="/donor-levels">Donor Levels and Courtesies</a></li>
<li><a href="/volunteer">Volunteer Opportunities</a></li>
</ul>

<ul>
<li><h5><a href="/contact/">Contact</a></h5></li>
<li><a href="/contact">Staff List</a></li>
<li><a href="/press-room">Press Room</a></li>
</ul>



</div>


</div>   <!--/end footblock2 div -->
</div><!--/end footer div -->
</div><!--/end container div -->

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-426753-17");
pageTracker._trackPageview();
} catch(err) {}</script>

</body>


</html>




