<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width"/>
	<title>Registration</title>

	<style type="text/css">
		/*////// RESET STYLES //////*/
		body{height:100% !important; margin:0; padding:0; width:100% !important;}
		table{border-collapse:separate;}
		img, a img{border:0; outline:none; text-decoration:none;}
		h1, h2, h3, h4, h5, h6{margin:0; padding:0;}
		p{margin: 1em 0;}

		/*////// CLIENT-SPECIFIC STYLES //////*/
		.ReadMsgBody{width:100%;} .ExternalClass{width:100%;}
		.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height:100%;}
		table, td{mso-table-lspace:0pt; mso-table-rspace:0pt;}
		#outlook a{padding:0;}
		img{-ms-interpolation-mode: bicubic;}
		body, table, td, p, a, li, blockquote{-ms-text-size-adjust:100%; -webkit-text-size-adjust:100%;}
			
		/*////// GENERAL STYLES //////*/
		img{ max-width: 100%; height: auto; }

		/*////// TABLET STYLES //////*/
		@media only screen and (max-width: 620px) {
			
			/*////// GENERAL STYLES //////*/
			#foxeslab-email .table1 { width: 90% !important;}
			#foxeslab-email .table1-2 { width: 98% !important; margin-left: 1%; margin-right: 1%;}
			#foxeslab-email .table1-3 { width: 98% !important; margin-left: 1%; margin-right: 1%;}
			#foxeslab-email .table1-4 { width: 98% !important; margin-left: 1%; margin-right: 1%;}
			#foxeslab-email .table1-5 { width: 90% !important; margin-left: 5%; margin-right: 5%;}

			#foxeslab-email .tablet_no_float { clear: both; width: 100% !important; margin: 0 auto !important; text-align: center !important; }
			#foxeslab-email .tablet_wise_float { clear: both; float: none !important; width: auto !important; margin: 0 auto !important; text-align: center !important; }

			#foxeslab-email .tablet_hide { display: none !important; }

			#foxeslab-email .image1 { width: 98% !important; }
			#foxeslab-email .image1-290 { width: 100% !important; max-width: 290px !important; }

			.center_content{ text-align: center !important; }
			.center_image{ margin: 0 auto !important; }
			.center_button{ width: 50% !important;margin-left: 25% !important;max-width: 250px !important; }
			.centerize{margin: 0 auto !important;}
		}

	
		/*////// MOBILE STYLES //////*/
		@media only screen and (max-width: 480px){
			/*////// CLIENT-SPECIFIC STYLES //////*/
			body{width:100% !important; min-width:100% !important;} /* Force iOS Mail to render the email at full width. */
			table[class="flexibleContainer"]{ width: 100% !important; }/* to prevent Yahoo Mail from rendering media query styles on desktop */

			/*////// GENERAL STYLES //////*/
			img[class="flexibleImage"]{height:auto !important; width:100% !important;}

			#foxeslab-email .table1 { width: 98% !important; }
			#foxeslab-email .no_float { clear: both; width: 100% !important; margin: 0 auto !important; text-align: center !important; }
			#foxeslab-email .wise_float {	clear: both;	float: none !important;	width: auto !important;	margin: 0 auto !important;	text-align: center !important;	}

			#foxeslab-email .mobile_hide { display: none !important; }
			.auto_height{height: auto !important;}
		}
	</style>
</head>



<!-- section-1 "navbar" -->
<table class="table_full editable-bg-color bg_color_483869 editable-bg-image" bgcolor="#483869" width="100%" align="center" mc:repeatable="castellab" mc:variant="Header" cellspacing="0" cellpadding="0" border="0" style="background-image: url(); background-repeat: no-repeat; background-position: center left; background-size: cover; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;" background="http://dutymate.com.au/images/bg2.jpg">
	<tbody><tr>
		<td>
			<table class="table1" width="600" align="center" border="0" cellspacing="0" cellpadding="0">
				<tbody><tr><td height="30"></td></tr>
				<tr>
					<td>
						<!-- Logo -->
						<table class="no_float" width="100" align="left" border="0" cellspacing="0" cellpadding="0">
							<tbody><tr>
								
							</tr>
							<tr><td height="30"></td></tr>
						</tbody></table><!-- END logo -->

						<!-- Nav menu -->
						<table class="no_float" width="" align="right" border="0" cellspacing="0" cellpadding="0">
							<tbody><tr>
						
							</tr>
							<tr><td height="30"></td></tr>
						</tbody></table><!-- END nav menu -->
					</td>
				</tr>
				<!-- horizontal gap -->
				<tr><td height="100"></td></tr>

				<!-- text -->
				<tr>
					<td>
						<table class="table1-2" width="300" align="left" border="0" cellspacing="0" cellpadding="0">
							<tbody><tr>
								<td class="editable-img">
									<div style="border-style: none !important; display: block; border: 0 !important;" href="">
										<img editable="true" class="centerize" mc:edit="image102" src="http://dutymate.com.au/images/logo.png" style="display:block; line-height:0; font-size:0; border:0;" border="0" alt="">
									</div>
								</td>
							</tr>
							<!-- horizontal gap -->
							<tr><td height="50"></td></tr>

							<!-- horizontal gap -->
							<tr><td height="20"></td></tr>
						
							<tr>
								<td mc:edit="text106" align="left" class="text_color_ffffff center_content" style="color: #ffffff;line-height: 2; font-size: 15px;font-weight: 500; font-family: 'Open Sans', verdana, Helvetica, sans-serif; mso-line-height-rule: exactly;">
									<div class="editable-text" style="line-height: 2;">
										<span class="text_container">Hi {{$data['name']}},We’re glad you signed up to DUTYMATE, Australia’s fastest growing jobs app. We look forward to helping you find a perfect job today!.</span>
									</div>
								</td>
							</tr>
							<!-- horizontal gap -->
							<tr><td height="30"></td></tr>
							<tr>
								<td>
									<table class="button_bg_color_fbc02d bg_color_39224c center_button" bgcolor="#39224c" width="135" height="30" align="left" border="0" cellpadding="0" cellspacing="0" style="border-radius:25px; border-collapse: separate">
										<tbody><tr>
											<td mc:edit="text107" class="text_color_ffffff" align="center" valign="middle" style="color: #ffffff; font-size: 12px; font-weight: 400; font-family: 'Open Sans', Helvetica, sans-serif; mso-line-height-rule: exactly;">
												<div class="editable-text">
													<span class="text_container">
														<a href="#" class="text_color_ffffff" style="text-decoration: none; color: #ffffff;">Validate Email!</a>
													</span>
												</div>
											</td>
										</tr>
									</tbody></table>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr><!-- END text -->
				<!-- padding-bottom -->
				<tr><td height="100"></td></tr>
			</tbody></table><!-- END container -->
		</td>
	</tr>
</tbody></table><!-- END wrapper -->


</body>
</html>