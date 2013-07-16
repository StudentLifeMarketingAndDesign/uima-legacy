<script src="/mysite/code/javascript/swfobject.js" type="text/javascript"></script>

<% include PageHeader %>

<div id="bodywrap">



<div id="content-container4">
<h1 class="title">$Title</h1>


<div id="content-container3">


<% if VideoLink %>
<div class="news">
<h1><a href="/blog">Video</a></h1>
<div class="bar4"></div>


<div id='mediaspace-small'></div>

<script type='text/javascript'>
  var so = new SWFObject('/mysite/code/flash/mp3_player/player.swf','ply','220','151','9','#ffffff');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','$VideoLink');
  so.write('mediaspace-small');
</script>



</div>
<% end_if %>



<% include NewsSidebar %>

<div class="news">
<h1><a href="blog">Blog</a></h1>
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



<div id="content">
$Content

	
	
		<form action="http://www.uiowa.edu/cgi-bin/formmail.pl" method="post">

							<input type="hidden" name="recipient" value="uima-education@uiowa.edu" />
							<input type="hidden" name="subject" value="Tour Request Information" />
							<input type="hidden" name="redirect" value="http://uima.uiowa.edu/thank-you/" />
							
						<h3>Tour Details</h3>
						<table>
							<tr>
								<td><strong>Today's Date:</strong></td>

								<td>
									<select name="Today-Day">
										<option selected="selected">Day</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>

										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>

										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>

										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>

										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>

										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
								</td>

								<td>
									<select name="Today-Month">

										<option selected="selected">Month</option>
										<option value="January">January</option>
										<option value="February">February</option>
										<option value="March">March</option>
										<option value="April">April</option>
										<option value="May">May</option>

										<option value="June">June</option>
										<option value="July">July</option>
										<option value="August">August</option>
										<option value="September">September</option>
										<option value="October">October</option>
										<option value="November">November</option>

										<option value="December">December</option>
									</select>
								</td>

								<td>
									<select name="Today-Year">
										<option selected="selected">Year</option>
										<option value="2012">2012</option>

										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
										<option value="2017">2017</option>
									</select>

								</td>
							
							</tr>
							<tr>
									<td><strong>Date Requested:</strong></td>
									<td>
										<select name="Requested Day">
											<option selected="selected">Day</option>

											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>

											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>

											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>

											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>

											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>

											<option value="31">31</option>
										</select>
									</td>

									<td>
										<select name="Requested Month">
											<option selected="selected">Month</option>
											<option value="January">January</option>

											<option value="February">February</option>
											<option value="March">March</option>
											<option value="April">April</option>
											<option value="May">May</option>
											<option value="June">June</option>
											<option value="July">July</option>

											<option value="August">August</option>
											<option value="September">September</option>
											<option value="October">October</option>
											<option value="November">November</option>
											<option value="December">December</option>
										</select>

									</td>

									<td>
										<select name="Requested Year">
											<option selected="selected">Year</option>
											<option value="2012">2012</option>
											<option value="2013">2013</option>
											<option value="2014">2014</option>

											<option value="2015">2015</option>
											<option value="2016">2016</option>
											<option value="2017">2017</option>
										</select>
									</td>
	  </tr>
								<tr>

									<td><strong>Time:</strong></td>
									<td>
										<select name="Start Time">
											<option selected="selected">Start Time</option>
											<option value="8:00 a.m.">8:00 a.m.</option>
											<option value="8:30 a.m.">8:30 a.m.</option>

											<option value="9:30 a.m.">9:30 a.m.</option>
											<option value="10:00 a.m.">10:00 a.m.</option>
											<option value="10:30 a.m.">10:30 a.m.</option>
											<option value="11:00 a.m.">11:00 a.m.</option>
											<option value="11:30 a.m.">11:30 a.m.</option>
											<option value="12:00 p.m.">12:00 p.m.</option>

											<option value="12:30 p.m.">12:30 p.m.</option>
											<option value="1:00 p.m.">1:00 p.m.</option>
											<option value="1:30 p.m.">1:30 p.m.</option>
											<option value="2:00 p.m.">2:00 p.m.</option>
											<option value="2:30 p.m.">2:30 p.m.</option>
											<option value="3:00 p.m.">3:00 p.m.</option>

											<option value="3:30 p.m.">3:30 p.m.</option>
											<option value="4:00 p.m.">4:00 p.m.</option>
											<option value="4:30 p.m.">4:30 p.m.</option>
											<option value="5:00 p.m.">5:00 p.m.</option>
											<option value="5:30 p.m.">5:30 p.m.</option>
											<option value="6:00 p.m.">6:00 p.m.</option>

											<option value="6:30 p.m.">6:30 p.m.</option>
											<option value="7:00 p.m.">7:00 p.m.</option>
											<option value="7:30 p.m.">7:30 p.m.</option>
											<option value="8:00 p.m.">8:00 p.m.</option>
										</select>
									</td>

										<td>
											<select name="End Time">
												<option selected="selected">End Time</option>
												<option value="8:30 a.m.">8:30 a.m.</option>
												<option value="9:30 a.m.">9:30 a.m.</option>
												<option value="10:00 a.m.">10:00 a.m.</option>
												<option value="10:30 a.m.">10:30 a.m.</option>

												<option value="11:00 a.m.">11:00 a.m.</option>
												<option value="11:30 a.m.">11:30 a.m.</option>
												<option value="12:00 p.m.">12:00 p.m.</option>
												<option value="12:30 p.m.">12:30 p.m.</option>
												<option value="1:00 p.m.">1:00 p.m.</option>
												<option value="1:30 p.m.">1:30 p.m.</option>

												<option value="2:00 p.m.">2:00 p.m.</option>
												<option value="2:30 p.m.">2:30 p.m.</option>
												<option value="3:00 p.m.">3:00 p.m.</option>
												<option value="3:30 p.m.">3:30 p.m.</option>
												<option value="4:00 p.m.">4:00 p.m.</option>
												<option value="4:30 p.m.">4:30 p.m.</option>

												<option value="5:00 p.m.">5:00 p.m.</option>
												<option value="5:30 p.m.">5:30 p.m.</option>
												<option value="6:00 p.m.">6:00 p.m.</option>
												<option value="6:30 p.m.">6:30 p.m.</option>
												<option value="7:00 p.m.">7:00 p.m.</option>
												<option value="7:30 p.m.">7:30 p.m.</option>

												<option value="8:00 p.m.">8:00 p.m.</option>
												<option value="8:30 p.m.">8:30 p.m.</option>
												<option value="9:00 p.m.">9:00 p.m.</option>
											</select>
										</td>
	  </tr>

									<tr>

										<td><strong>Class or Group Name:</strong></td>
										<td colspan="3"><input name="Group Name" type="text" size="50" class="text" /></td>
									</tr>

									<tr>
										<td><strong>Size of Group:</strong></td>
										<td><input name="Group Size" type="text" size="3" class="text" /></td>

										<td><strong>Grade or Age Range:</strong></td>
										<td><input name="Age Range" type="text" size="20" class="text"  /></td>
									</tr>

									<tr>
										<td><strong>Requested Exhibitions:</strong></td>
										<td colspan="3"><input type="text" name="Requested Exhibitions" size="40" class="text" /></td>

									</tr>
		  </table><br />
							<h3>Contact Information
							  <br />
							</h3>
		<table>

									<tr>
										<td><strong>Your Name:</strong></td>

										<td><input type="text" name="name" size="50" class="text" /></td>
									</tr>

									<tr>
										<td><strong>Phone Number:</strong></td>
										<td><input type="text" name="Phone Number" class="text"  /></td>
									</tr>

									<tr>

										<td><strong>E-mail Address:</strong></td>
										<td><input type="text" name="Email Address" size="40" class="text"  /></td>
									</tr>

									<tr>
										<td><strong>Street Address:</strong></td>
										<td><input type="text" name="Street" size="40" class="text"  /></td>

									</tr>

									<tr>
										<td colspan="2">
											<strong>City:</strong><input type="text" name="City" size="20" class="text"  />
											 <strong>State:</strong>
											<input type="text" name="State" size="2" maxlength="2" class="text"  />
											 <strong>Zip Code:</strong>
											<input type="text" name="Zip " size="5" maxlength="5" class="text"  />

										</td>
									</tr>

									<tr>
										<td><strong>Contact you by:</strong></td>
										<td>
											<select name="Contact By">
												<option value="phone">Phone</option>

												<option value="email">Email</option>
											</select>
										</td>
									</tr>

									<tr><td><br /><input type="submit" value="Submit" class="submit"/></td></tr>

		  </table>
  </form>



</div></div>




    
   