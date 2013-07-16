    <script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>
    
<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title"><% if URLSegment = events %>Events &amp; Programs<% else_if URLSegment = archived-events %>Past Events <% end_if %></h1>


<div id="content-container3">

<% include NewsSidebar %>


<div class="news">
<h1><a href="/blog">Blog</a></h1>
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





</div>







    <div id="content" class="fixed-width">
    
 
 <ul class="events-page">
 	<% if URLSegment = events %>
		<% control currentEvents %>
		<li class="$DonorEvent">
		
		
			<h3><a href="$Link">$EventTitleBold $EventTitle</a></h3>
			<h4>  <% if EventDate %> $EventDate.Format(F d&#44; Y),<% end_if %>  <% if EventTime %>$EventTime <% end_if %> </h4>
		   <% if EventLocation %> <h5><a href="$LocationMap">$EventLocation</a></h5><% end_if %>
		    
		$getSummaryHTML(EventDescription) 
		    
		</li>
		<% end_control %>
		

		
	<% else_if URLSegment = archived-events %>
	
		<% control archivedEvents %>
			<li class="$DonorEvent">
		
		
			<h3><a href="$Link">$EventTitleBold $EventTitle</a></h3>
			<h4>  <% if EventDate %> $EventDate.Format(F d&#44; Y),<% end_if %>  <% if EventTime %>$EventTime <% end_if %> </h4>
		   <% if EventLocation %> <h5><a href="$LocationMap">$EventLocation</a></h5><% end_if %>
		    
		$getSummaryHTML(EventDescription) 
		    
		</li>
		
		
		<% end_control %>
	

	
	<% end_if %>

</ul>

</div>

<% if URLSegment = events %>
	<a href="{$BaseHref}archived-events">View our past events here.</a>
<% end_if %>

<% if URLSegment = archived-events %>
	<% if archivedEvents.MoreThanOnePage %>
	  <p>
	  <% if archivedEvents.PrevLink %>
	    <a href="$archivedEvents.PrevLink">&lt;&lt; Newer Events</a> | 
	  <% end_if %>
	 
	  <% control archivedEvents.Pages %>
	    <% if CurrentBool %>
	      <strong>$PageNum</strong> 
	    <% else %>
	      <a href="$Link" title="Go to page $PageNum">$PageNum</a> 
	    <% end_if %>
	  <% end_control %>
	 
	  <% if archivedEvents.NextLink %>
	    | <a href="$archivedEvents.NextLink">Older Events &gt;&gt;</a>
	  <% end_if %>
	  </p>
	<% end_if %>
<% end_if %>


    <!--<div id="content">
    <h1>Previous Events</h1> 
 <ul class="events-page">
 
<% control ChildrenOf(events-archive) %>
 
	<li class="gray$Pos">-->
   <!-- <h2>$EventTitleBold</h2><br />-->
	<!--<a href="$Link"><h3>$EventTitleBold $EventTitle</h3></a>
	<h4>$EventDate.Format(F d&#44; Y), $EventTime</h4>
    <a href="$LocationMap"><h5>$EventLocation</h5></a>-->
   <!-- <h6>$EventAddress</h6>-->

    <!--</li>
    
<% end_control %>

</ul>

</div>-->


</div>




    
   