
<!DOCTYPE html>





<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=yes, maximum-scale=1.0"">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="../images/common/favicon1.ico">
<script type="text/javascript" src="/genewebforms/layout2/rwf.js"></script>
<script type="text/javascript" src="/genewebforms/layout2/jquery.js"></script>
<link href="/genewebforms/css/remedy_forms.css" rel="stylesheet"
	type="text/css">
<link href="/genewebforms/css/nwe.css" rel="stylesheet"
	type="text/css">
<link href="/genewebforms/css/jquery.timepicker.css" rel="stylesheet"
	type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
<script type="text/javascript" 
	src="/genewebforms/javascript/calendar.js"></script>
	<script type="text/javascript" 
	src="/genewebforms/javascript/jquery.timepicker.js"></script>
<script type="text/javascript" 
	src="/genewebforms/javascript/nwe.js"></script>
<title>Workplace Support Form</title>	

</head>

<body>
	<div id="top_logo" style="padding-top:0px;padding-bottom:1px; border-bottom:none;">
		<img src="../images/pina_logo_new.jpg" id="top_logo_img"
			alt="Workplace Support Form" border="0">
	</div>
	
	<form id="nwe" name="nwe" action="/genewebforms/nwe/nweContinue.do" method="post" enctype="multipart/form-data">
		<div id="form">
			
								
								
								
			<h2>Workplace Support Form<img alt="Workplace Support Form" src="/genewebforms/images/temoji.jpg" width="110" height="60" style="vertical-align: middle;"></img></h2>
			<table class="nwe-request">
				<tr class="odd">
					<td><span class="redText">*</span> Which building and floor is the issue in?:</td>
					<td><input id="neighborhood" name="neighborhood" type="text" value=""/></td>
				</tr>
				<tr class="even">
					<td><span class="redText">*</span> Which Desk/Room number is the issue at?:<br/><span class="greyText">Desk numbers are located on the side of the desk.</span></td>
					<td><input id="desk" name="desk" type="text" value=""/></td>
				</tr>
				<tr class="odd">
					<td><span class="redText">*</span> With what are you having trouble?
						(Check the one most relevant):</td>
					<td style="width: 250px !important;float: left;">Tech<br/><br/>
					<span><input id="reportingValues11" name="reportingValues1" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Conference Room"/><label for="reportingValues11">Conference Room</label></span><span><br/><input id="reportingValues12" name="reportingValues1" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Monitor"/><label for="reportingValues12">Monitor</label></span><span><br/><input id="reportingValues13" name="reportingValues1" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Internet"/><label for="reportingValues13">Internet</label></span><span><br/><input id="reportingValues14" name="reportingValues1" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Phone"/><label for="reportingValues14">Phone</label></span><span><br/><input id="reportingValues15" name="reportingValues1" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Other Tech"/><label for="reportingValues15">Other Tech</label></span><input type="hidden" name="_reportingValues1" value="on"/>
					
<!-- 					<br/>Facilities Issue? <a href="https://gSAPapps.gene.com" target="_blank">Click here</a>		 -->
							</td>
				<td style="width: 180px;float: left;">Facilities<br/><br/>
				<span><input id="reportingValues21" name="reportingValues2" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Cleanliness"/><label for="reportingValues21">Cleanliness</label></span><span><br/><input id="reportingValues22" name="reportingValues2" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Furniture"/><label for="reportingValues22">Furniture</label></span><span><br/><input id="reportingValues23" name="reportingValues2" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Lighting"/><label for="reportingValues23">Lighting</label></span><span><br/><input id="reportingValues24" name="reportingValues2" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Pantry"/><label for="reportingValues24">Pantry</label></span><span><br/><input id="reportingValues25" name="reportingValues2" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Temperature"/><label for="reportingValues25">Temperature</label></span><span><br/><input id="reportingValues26" name="reportingValues2" class="cBox" onchange="showHideInternet(this);resetSelections(this);" type="checkbox" value="Other Facilities"/><label for="reportingValues26">Other Facilities</label></span><input type="hidden" name="_reportingValues2" value="on"/>
					
<!-- 					<br/>Facilities Issue? <a href="https://gSAPapps.gene.com" target="_blank">Click here</a>		 -->
							</td>
				</tr>
				<tr class="even">
					<td><span class="redText"></span> Additional comments about
						problem:</td>
					<td><textarea id="comments" name="comments" style="margin-left: -60px;" rows="5" cols="80"></textarea></td>
				</tr>
				<tr class="odd" id="internetDetails" style="display: none">
					<td colspan="2">
						<table class="nwe-request">

	<tr class="odd">
		<td>Are all the users affected or just you?:</td>
		<td><input id="internet.affectedUser1" name="internet.affectedUser" type="radio" value="Just me"/><label for="internet.affectedUser1">Just me</label> <br /> <input id="internet.affectedUser2" name="internet.affectedUser" type="radio" value="Everyone"/><label for="internet.affectedUser2">Everyone</label>
	</tr>
	<tr class="even">
		<td><span class="redText">*</span> Are you hardwired into the
			network or on Wifi?:<br /></td>
		<td>
			<input id="internet.networkConnection1" name="internet.networkConnection" type="radio" value="Hardwired"/><label for="internet.networkConnection1">Hardwired</label> 
			<br /> 
			<input id="internet.networkConnection2" name="internet.networkConnection" type="radio" value="Using Wifi"/><label for="internet.networkConnection2">Using Wifi</label>
			<br /> 
			<input id="internet.networkConnection3" name="internet.networkConnection" type="radio" value="Both"/><label for="internet.networkConnection3">Both</label>
		</td>
	</tr>
	<tr class="odd">
		<td><span class="redText">*</span> What kind of computer/ device are you using?:</td>
		<td><input id="internet.computer1" name="internet.computer" type="radio" value="PC"/><label for="internet.computer1">PC</label> 
			<br /> 
			<input id="internet.computer2" name="internet.computer" type="radio" value="Mac"/><label for="internet.computer2">Mac</label>
			<br /> 
			<input id="internet.computer3" name="internet.computer" type="radio" value="Company iPhone"/><label for="internet.computer3">Company iPhone</label>
			<br /> 
			<input id="internet.computer4" name="internet.computer" type="radio" value="Other"/><label for="internet.computer4">Other</label>
				<input id="internet.computerOther" name="internet.computerOther" onchange="checkComputerOthers(&#39;internet.computer&#39;)" type="text" value=""/>
				</td>
	</tr>
		<tr class="even">
		<td>Are you experiencing issues continuously or during specific time ranges?:<br /></td>
		<td>
			<input id="internet.howOften1" name="internet.howOften" type="radio" value="Countinuously"/><label for="internet.howOften1">Countinuously</label> 
			<br /> 
			<input id="internet.howOften2" name="internet.howOften" type="radio" value="Specific time ranges"/><label for="internet.howOften2">Specific time ranges</label>
		</td>
	</tr>
	<tr class="odd">
		<td> What date did the problem start?:</td>
		<td><input id="dateStart" name="internet.dateStart" type="date" value="" size="20"/>
<!-- 						<a -->
<!-- 						href="javascript:show_calendar('nwe.dateStart', null,null,'mm/dd/yyyy');" -->
<!-- 						name="showCalendar"> <img -->

<!-- 							height="21" border=0> -->
<!-- 					</a> -->
					</td>
	</tr>
			<tr class="even">
		<td> What time did the problem start?:</td>
		<td><input id="timeStart" name="internet.timeStart" type="text" value="" size="20"/>
						</td>
	</tr>
	<tr class="odd">
		<td> What date did the problem end?:</td>
		<td><input id="dateEnd" name="internet.dateEnd" type="date" value="" size="10"/>
<!-- 						<a -->
<!-- 						href="javascript:show_calendar('nwe.dateEnd', null,null,'mm/dd/yyyy');" -->
<!-- 						name="showCalendar"> <img -->

<!-- 							height="20" border=0> -->
<!-- 					</a>-->
</td> 
	</tr>
	<tr class="even">
		<td> What time did the problem end?:</td>
		<td><input id="timeEnd" name="internet.timeEnd" type="text" value="" size="10"/>
					</td>
	</tr>
	<tr class="odd">
		<td> Please select or describe your issues below:<br/><span class="greyText">Please choose all that may apply</span></td>
		<td><span><input id="internet.issues1" name="internet.issues" type="checkbox" value="Connecting"/><label for="internet.issues1">Connecting</label></span><span><br/><input id="internet.issues2" name="internet.issues" type="checkbox" value="Staying connected"/><label for="internet.issues2">Staying connected</label></span><span><br/><input id="internet.issues3" name="internet.issues" type="checkbox" value="Slow Internet speeds"/><label for="internet.issues3">Slow Internet speeds</label></span><span><br/><input id="internet.issues4" name="internet.issues" type="checkbox" value="Other"/><label for="internet.issues4">Other</label></span><input type="hidden" name="_internet.issues" value="on"/></td>
	</tr>
	
	<tr class="even">
		<td>Are you having trouble with certain wifi SSID's:<br/><span class="greyText">Please choose all that may apply</span></td>
		<td><span><input id="internet.ssids1" name="internet.ssids" type="checkbox" value="All of them"/><label for="internet.ssids1">All of them</label></span><span><br/><input id="internet.ssids2" name="internet.ssids" type="checkbox" value="Campus;WLAN-001"/><label for="internet.ssids2">Campus;WLAN-001</label></span><span><br/><input id="internet.ssids3" name="internet.ssids" type="checkbox" value="Airway"/><label for="internet.ssids3">Airway</label></span><span><br/><input id="internet.ssids4" name="internet.ssids" type="checkbox" value="GenenAir2"/><label for="internet.ssids4">GenenAir2</label></span><span><br/><input id="internet.ssids5" name="internet.ssids" type="checkbox" value="GenenAir3"/><label for="internet.ssids5">GenenAir3</label></span><span><br/><input id="internet.ssids6" name="internet.ssids" type="checkbox" value="Guestwlan"/><label for="internet.ssids6">Guestwlan</label></span><span><br/><input id="internet.ssids7" name="internet.ssids" type="checkbox" value="Other"/><label for="internet.ssids7">Other</label></span><input type="hidden" name="_internet.ssids" value="on"/>
				<input id="internet.ssidOther" name="internet.ssidOther" onchange="checkComputerOthers(&#39;internet.ssids&#39;)" type="text" value=""/></td>
	</tr>
	<tr class="odd">
		<td><span class="redText">*</span> If you are able to connect, are you getting an IP address?:</td>
		<td><input id="internet.hasIp1" name="internet.hasIp" styleClass="evenRadio" type="radio" value="Yes"/><label for="internet.hasIp1">Yes</label> 
			<br /> 
			<input id="internet.hasIp2" name="internet.hasIp" styleClass="evenRadio" type="radio" value="No"/><label for="internet.hasIp2">No</label>
			<br /> 
			<input id="internet.hasIp3" name="internet.hasIp" styleClass="oddRadio" type="radio" value="I do not know how to tell"/><label for="internet.hasIp3">I don&#39;t know how to tell</label>
				<br/>
				<span class="blueText infoText">If so, please provide all the IP INFO (ip address, default-gateway, mac-address and DNS) if you are able to obtain it:
				</span>
				<textarea id="internet.ip" name="internet.ip"></textarea>
				</td>
	</tr>
	<tr class="even">
		<td><span class="redText"></span> Is there anything else you think we should know that would help?:</td>
		<td><textarea id="internet.otherInfo" name="internet.otherInfo"></textarea></td>
	</tr>

</table>
<script type="text/javascript">
	$('#timeStart').timepicker();
	$('#timeEnd').timepicker();
</script>
					</td>
				</tr>
			</table>
			<div class="section">


							<table class="rwfRequest">
								
								<tr>
									<td valign="top" colspan="2">
										<p>
											Upload a photo for the issue if you have any:<br/>
										File size limit:  13MB </p>
									</td>
								</tr>
<tr><td colspan="2">
<div id="attach_files1">
											<input type="file" name="files[0]" size="50" /><br />
										</div>
</td></tr>
								
							</table>
						</div>
			<div class="section" style="font-size:20px ;color: #ffffff; background-color: #ff0000">
			To report an Emergency please contact the First Alert Team: 650-225-1300<br/>
			To report Facilities issues that require immediate attention, contact Facilities Call Center: 650-225-1778<br/>
			</div>			
		<div class='buttons' style="float: left; width: 100%;">
			<input type="submit" name="continue" value="   Continue...   " />
		</div>
		</div>
		
	</form>
</body>
</html>