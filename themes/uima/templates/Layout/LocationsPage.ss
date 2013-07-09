<% include PageHeader %>
<div id="bodywrap">
<div id="content-container4">
<h1 class="title">Locations</h1>
    <div id="content">
        <% if LocationImage %>
        <div id="feature-image">
<a href="$Link"><img src="<% control LocationImage %><% control SetWidth(348) %> $URL <% end_control %><% end_control %>" alt="$LocationTitle" /></a>
     <p>$LocationImageCaption</p>
     </div><% end_if %>
     
<h2>$LocationTitle</h2><br />
<h3>$LocationAddress</h3>

<div class="location-details">
<h4><a href="$LocationUrl" target="_blank">$LocationLink</a></h4>
<p>$LocationHours</p>
<p><b>$LocationPhone</b></p>
</div>

<p>$LocationDescription</p>
    </div>
    
</div>


 