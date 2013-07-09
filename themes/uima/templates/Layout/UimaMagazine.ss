<% include PageHeader %>

<div id="bodywrap">


<div id="content-container4">


<h1 class="title">$Title</h1>
    <div id="content">
 
 $MagazineText
 <ul>  
  <% control ChildrenOf(magazines) %>               

<h2><a href="$Link">$MagazineDescription</a></h2> 

 <% control Children  %>   
<li>$ArticleDate <a href="$Link">$ArticleTitle</a> $ArticleAuthor $ArticleContent
</li>
                  
                  <% end_control %>    <% end_control %>
                  
    
    </ul>
    
    
    
</div></div>

