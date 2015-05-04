<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">$Title</h1>


<div id="content-container3">


<div class="news">
<h1><a href="/events">Events</a></h1>
<div class="bar1"></div>
<ul>
   

  <% control currentEvents %>
  <li>

  <h2><a href="$Link">$EventTitleBold $EventTitle</a></h2>
  <h3>$EventDate.Format(F d&#44; Y)</h3>
  </li>
  <% end_control %>
</ul>






</ul>


</ul>
</div>


</div>



<div id="content" class="fixed-width" >


$Content
<ul class="press">    


<% control AllNewsPosts %>


<% if AllNewsPosts %>
        <% control AllNewsPosts %>
          <div class="event">
           <h2>$MenuTitle |<span class="date"> $Date.Time $Date.Long</span></h2>
           <p>$Content.FirstParagraph</p>
            <a href="$Link">See more about this event</a>
          </div>
        <% end_control %> 
<% end_if %>


<li>
<h3><% if MoreLink %><a href="$MoreLink" class="external-link" target="_blank">$NewsTitle</a>
<% else %>
<a href="$Link">$NewsTitle</a>
<% end_if %>
</h3>
<h4>$NewsDate.Format(F d&#44; Y)</h4>


</li>
<% end_control %>

<% if AllNewsPosts.MoreThanOnePage %>

  <div id="PageNumbers">
    <p>
      <% if AllNewsPosts.PrevLink %>
        <a class="prev" href="$AllNewsPosts.PrevLink" title="View the previous page"><span class="yellow-background">Prev</span></a>
      <% end_if %>

      <span>
          <% control AllNewsPosts.Pages %>
          <% if CurrentBool %>
            <span class="current">$PageNum</span>
          <% else %>
            <% if Link %>
              <a href="$Link" class="numbers" title="View page number $PageNum">$PageNum</a>
            <% else %>
              &hellip;
            <% end_if %>
          <% end_if %>
        <% end_control %>
      </span>

      <% if AllNewsPosts.NextLink %>
        <a class="next" href="$AllNewsPosts.NextLink" title="View the next page"><span class="yellow-background">Next</span></a>
      <% end_if %>
    </p>
  </div>
 
<% end_if %>

</ul>

</div></div>
