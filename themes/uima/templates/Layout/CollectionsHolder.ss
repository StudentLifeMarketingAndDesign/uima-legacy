<style type="text/css">

.collection-box {
	background-image: url(
	$CollectionsImage.URL
	);}
	
	ul.collections li.box4 .collection-box {
		background: red  no-repeat -40px -150px;
}

.digital {
margin: 0px 0px 20px 0px;}

</style> 

<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">


<h1 class="title">$Title</h1>
    <div id="content" style="width:auto;">
  <ul class="collections">  
    
    <% control ChildrenOf(Collections) %>

<li class="box$pos">
<div class="collection-box" style="background: url($CollectionsImage.URL) no-repeat -40px -50px;">
<div class="collection-title">
<h2><a href="$Link">$CollectionsTitle</a></h2></div>
</div>


</li>

<% end_control %>
</ul>




    
    
    
    
</div></div>