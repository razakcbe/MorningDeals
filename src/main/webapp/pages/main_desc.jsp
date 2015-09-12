<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<title>Morning Deals</title>
	<link rel="stylesheet" href="css/style.css" />
	<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis'
		rel='stylesheet' type='text/css'>
		<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
		<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
		<link rel="stylesheet" type="text/css"
			href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css"
			href="font-awesome/css/font-awesome.min.css" />

		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="product_wraper">
		<!---- Main Prodcut_wrapper Start --->
		<div class="prodcuts_panel">
			<!--- prodcuts_panel Start --->
			<div id="product_desc">
				<div id="breadcrumb">
					<a href="index.html">Home</a> > <a href="index.html">Deals</a> > <a
						href="prod-desc.html">Prodcut Details</a> >Product Name
				</div>

				<div id="images">
					<!--- Main Image start --->
					<a href="#"><img src="${dealDetailsVO.imageUrl}"></a>
				</div>
				<!--- Main Image End --->

				<div id="description">
					<!--- Decription Start --->
					<h1>${dealDetailsVO.productName}</h1>
					<strong id="price"><span>previously &#8360;${dealDetailsVO.actualPrice}</span> &#8360;${dealDetailsVO.salePrice}</strong>
					${dealDetailsVO.productDescription}
					<p>
						<button type="submit" class="buynow">Buy Now</button>
					</p>

				</div>
				<!--- Decription End --->

			</div>




			<div class="clearfix"></div>
		</div>
		<!--- prodcuts_panel end --->

		<div class="sidebar_wrapper">
			<!--- Sidebar Wrapper Start--->
			<div class="sidebar_panel">
				<!--- sidebar_panel Start --->
				<h2>Top Deals</h2>
				<div class="side_content_pane">
					<!--- Side Content Pane Start --->
					<a href="prod-desc.html" class="product_name">Teewe 2 Wireless
						HDMI Media Streaming Player</a><br />
					<div class="side_price_tag">
						<!--- Side Price Tag Start -->
						<div class="side_price_left">
							<a href="prod-desc.html">M.R.P &#8377;2399</a>
						</div>
						<div class="side_price_middle">
							<a href="prod-desc.html">&#8377;1899</a>
						</div>
						<div class="side_price_right">
							<a href="prod-desc.html">Buy Now</a>
						</div>
					</div>
					<!--- Side Price Tag End --->
					<div id="hline"></div>
					<a href="prod-desc.html" class="product_name">Teewe 2 Wireless
						HDMI Media Streaming Player</a><br />
					<div class="side_price_tag">
						<!--- Side Price Tag Start -->
						<div class="side_price_left">
							<a href="prod-desc.html">M.R.P &#8377;2399</a>
						</div>
						<div class="side_price_middle">
							<a href="prod-desc.html">&#8377;1899</a>
						</div>
						<div class="side_price_right">
							<a href="prod-desc.html">Buy Now</a>
						</div>
					</div>
					<!--- Side Price Tag End --->
					<div id="hline"></div>
					<a href="prod-desc.html" class="product_name">Teewe 2 Wireless
						HDMI Media Streaming Player</a><br />
					<div class="side_price_tag">
						<!--- Side Price Tag Start -->
						<div class="side_price_left">
							<a href="prod-desc.html">M.R.P &#8377;2399</a>
						</div>
						<div class="side_price_middle">
							<a href="prod-desc.html">&#8377;1899</a>
						</div>
						<div class="side_price_right">
							<a href="prod-desc.html">Buy Now</a>
						</div>
					</div>
					<!--- Side Price Tag End --->
					<div id="hline"></div>
					<a href="prod-desc.html" class="product_name">Teewe 2 Wireless
						HDMI Media Streaming Player</a><br />
					<div class="side_price_tag">
						<!--- Side Price Tag Start -->
						<div class="side_price_left">
							<a href="prod-desc.html">M.R.P &#8377;2399</a>
						</div>
						<div class="side_price_middle">
							<a href="prod-desc.html">&#8377;1899</a>
						</div>
						<div class="side_price_right">
							<a href="prod-desc.html">Buy Now</a>
						</div>
					</div>
					<!--- Side Price Tag End --->
					<div id="hline"></div>
					<a href="prod-desc.html" class="product_name">Teewe 2 Wireless
						HDMI Media Streaming Player</a><br />
					<div class="side_price_tag">
						<!--- Side Price Tag Start -->
						<div class="side_price_left">
							<a href="prod-desc.html">M.R.P &#8377;2399</a>
						</div>
						<div class="side_price_middle">
							<a href="prod-desc.html">&#8377;1899</a>
						</div>
						<div class="side_price_right">
							<a href="prod-desc.html">Buy Now</a>
						</div>
					</div>
					<!--- Side Price Tag End --->
					<div id="hline"></div>
					<a href="prod-desc.html" class="product_name">Teewe 2 Wireless
						HDMI Media Streaming Player</a><br />
					<div class="side_price_tag">
						<!--- Side Price Tag Start -->
						<div class="side_price_left">
							<a href="prod-desc.html">M.R.P &#8377;2399</a>
						</div>
						<div class="side_price_middle">
							<a href="prod-desc.html">&#8377;1899</a>
						</div>
						<div class="side_price_right">
							<a href="prod-desc.html">Buy Now</a>
						</div>
					</div>
					<!--- Side Price Tag End --->

				</div>
				<!--- Side content pane end --->
			</div>
			<!--- Sidebar_panel End --->
		</div>
		<!--- Sidebar Wrapper End --->

		<div class="clr"></div>

		<div class="clr"></div>

		<div class="scroll_wrapper">
			<!--- Scroll Wrapper Start --->
			<h3>Related Products</h3>
			<div id="related_prod" class="scroll_horizontal">
				<div class="box">
					<ul class="slist">
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>

							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>
						<li>
							<div
								style="background: #FFF; width: 182px; height: auto; color: #0096d6;">
								<!--- Product list start--->
								<a href="prod-desc.html"><img src="images/marker.jpg"
									alt="Teewe 2 Wireless HDMI Media Streaming Player" /></a> <a
									href="prod-desc.html" class="product_name">Teewe 2 Wireless
									HDMI Media Streaming Player</a>
								<div class="price_tag">
									<div class="price_left">
										<a href="prod-desc.html">M.R.P &#8377;2399</a>
									</div>
									<div class="price_right">
										<a href="prod-desc.html">&#8377;1899</a>
									</div>
								</div>
								<a href="prod-desc.html" class="see_deal">Buy Now</strong></a>
							</div>
							<!--- Product List End --->
						</li>

					</ul>
				</div>
			</div>
		</div>
		<!--- Scroll Wrapper End --->
		<div class="clr"></div>
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/jquery.cxscroll.min.js"></script>
		<script>

$('#related_prod').cxScroll({
	direction: 'left',
	step: 3
});
</script>


	</div>
	<!--- Main Product Wrapper end --->

</body>
</html>