<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<title>QwikForms</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The styles -->
<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

<link href="css/charisma-app.css" rel="stylesheet">
<link href='bower_components/fullcalendar/dist/fullcalendar.css'
	rel='stylesheet'>
<link href='bower_components/fullcalendar/dist/fullcalendar.print.css'
	rel='stylesheet' media='print'>
<link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
<link href='bower_components/colorbox/example3/colorbox.css'
	rel='stylesheet'>
<link href='bower_components/responsive-tables/responsive-tables.css'
	rel='stylesheet'>
<link
	href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css'
	rel='stylesheet'>
<link href='css/jquery.noty.css' rel='stylesheet'>
<link href='css/noty_theme_default.css' rel='stylesheet'>
<link href='css/elfinder.min.css' rel='stylesheet'>
<link href='css/elfinder.theme.css' rel='stylesheet'>
<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='css/uploadify.css' rel='stylesheet'>
<link href='css/animate.min.css' rel='stylesheet'>

<!-- jQuery -->
<script src="bower_components/jquery/jquery.min.js"></script>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="img/favicon.ico">
<style id="antiClickjack">body{display:none !important;}</style>
<script type="text/javascript">
   if (self === top) {
       var antiClickjack = document.getElementById("antiClickjack");
       antiClickjack.parentNode.removeChild(antiClickjack);
   } else {
       top.location = self.location;
   }
</script>
</head>

<body>

<% String category=(String)request.getAttribute("category"); 

System.out.println(" value :"+category);
%>
	<div class="ch-container">
		<div class="row">


			<noscript>
				<div class="alert alert-block col-md-12">
					<h4 class="alert-heading">Warning!</h4>

					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<div id="content" class="col-lg-12 col-sm-12">
				<!-- content starts -->




				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-header well" data-original-title="">
								<h2>
									<i class="glyphicon glyphicon-star-empty"></i> Feedback 
								</h2>

								<div class="box-icon">
									<a href="#" class="btn btn-minimize btn-round btn-default"><i
										class="glyphicon glyphicon-chevron-up"></i></a>
								</div>
							</div>
							<div class="box-content">
								<!-- put your content here -->
								<form id="FeeForm" action="saveFeedbackDetails" method="POST">
									

									<table id="mainForm1">
										<tbody>

												
												<tr>

													<td>Category</td>
													<td><div id="the-basics" class="has-success">
															<div class="controls">
														<select id="codeOfCollege" name="${feedbackBean.category}"
															data-rel="chosen" onchange="getDropdownValuesOfFBD(this.value)" 
															required="required" value="<%=category %>" class="form-control">

															<option selected="selected" disabled="disabled">Select
																An Option</option>
																
																<%if(category==null) {%>
																
																<option value="Suggestion" selected="selected">Suggestion</option>
																<option value="Feedback" selected="selected">Feedback</option>
																<option value="Complaint" selected="selected">Complaint</option>
																<%}else{ %>
																<option value="<%=category %>" selected="selected"><%=category %></option>
																<option value="Suggestion" >Suggestion</option>
																<option value="Feedback" >Feedback</option>
																<option value="Complaint" >Complaint</option>
																
																<%} %>
														</select>
														</div></div></td>

													

												</tr>
												<tr>

													<td>area</td>
													<td><div id="the-basics" class="has-success">
															<div class="controls">
														<select id="codeOfCollege" name="${feedbackBean.area}"
															data-rel="chosen" required="required" class="form-control">

															<option selected="selected" disabled="disabled">Select
																An Option</option>
													
																<c:forEach var="list" items="${dpList}">
																<option value="${list}"> <c:out value="${list}" /></option>
															
																</c:forEach>
																
																
														</select>
														</div></div></td>

													

												</tr>
												
												<tr>

													<td>Contact</td>
													<td><div id="the-basics" class="has-success">
															<input  id="payer_type"
																name="${feedbackBean.contact}"
															
																placeholder="Contact" type="number" required="required" pattern="[0-9]{10}"
																class="form-control" value='<c:out value="${feedbackBean.contact}"/>'>
														</div></td>

													

												</tr>
												<tr>

													<td>Email Id</td>
													<td><div id="the-basics" class="has-success">
															<input required="required" id="payer_type"
																name="${feedbackBean.emailId}"
															
																placeholder="Email Id" type="email"
																class="form-control" value='<c:out value="${feedbackBean.emailId}"/>'>
														</div></td>

													

												</tr>
												<tr>

													<td>Message</td>
													<td><div id="the-basics" class="has-success">
															
														
														<textarea required="required" id="payer_type"
																name="${feedbackBean.userMessage}"
															
																placeholder="Enter text here..." 
																class="form-control"></textarea></div></td>
														
												</tr>
												

												
												<tr>
												<td><button class="btn btn-sm btn-success" type="submit">Save</button></td>
												<td><button class="btn btn-sm btn-warning" onclick="window.close()">Cancel</button></td>
												</tr>



											</tbody>
									</table>
									
									



								</form>
							</div>
						</div>
					</div>
				</div>
				<!--/row-->


				<!-- content ends -->
			</div>
			<!--/#content.col-md-0-->
		</div>
		<!--/fluid-row-->


		<hr>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">?</button>
						<h3>Settings</h3>
					</div>
					<div class="modal-body">
						<p>Here settings can be configured...</p>
					</div>
					<div class="modal-footer">
						<a href="#" class="btn btn-default" onclick="window.history.back(-1)">Close</a>
						<a href="#" class="btn btn-primary" data-dismiss="modal">Save
							changes</a>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--/.fluid-container-->

	<!-- external javascript -->

	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calender plugin -->
	<script src='bower_components/moment/min/moment.min.js'></script>
	<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- select or dropdown enhancer -->
	<script src="bower_components/chosen/chosen.jquery.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- library for making tables responsive -->
	<script src="bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<script
		src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>

	<script>
	
		function saveForm()
		{
			document.getElementById("FeeForm").submit();
			alert("Fee Successfully Added");
			window.close();
		}
		
		function getDropdownValuesOfFBD(id){
			window.location="GetDropdownValuesOfFBDAction?id="+id;
		}
		
		
	</script>
</body>
</html>
