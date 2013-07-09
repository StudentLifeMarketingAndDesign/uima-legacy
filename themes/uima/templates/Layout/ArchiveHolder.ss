<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">


<h1 class="title">$Title</h1>
    <div id="content" style="width:auto;">

$Content
    
<% control Children %>
 <ul class="exhibitions">  

<li>
<div class="feature-img" style="background: url(<% control EventPageImage.SetWidth(289) %>$Filename<% end_control %>) no-repeat 0px 0px;"></div>

<h2><a href="$Link">$FirstEventTitle</a></h2><br />
<h3>$SecondEventTitle</h3> <br />
<h4>$EventDate</h4>
<h5>$EventLocation </h5>
$getSummaryHTML(EventDescription) 
<p class="more"><a href="$Link">Read More<img class="arrow" src="$ThemeDir/images/arrow.png" alt="arrow" /></a></p>

</li>

    
</ul>
<% end_control %>    
    
    
    
    
</div></div>



