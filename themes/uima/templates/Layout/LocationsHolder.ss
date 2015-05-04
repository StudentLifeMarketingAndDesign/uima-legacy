<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>
    
<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">$Title</h1>


<div id="content-container3">


<% include NewsSidebar %>


</div>



<div id="content">

$Content

<div id="locations">


<ul>
<% control allChildren %>
<li class="locations$Pos">
<h2>UIMA </h2><p>at the</p><h3><a href="$Link">$LocationTitleShorthand</a></h3>
<a href="$Link"><img src="<% control LocationImage %><% control SetWidth(173) %> $URL <% end_control %><% end_control %>" alt="$LocationTitle" /></a>
</li>
<% end_control %>

</ul>

</div>



</div></div>




    
   