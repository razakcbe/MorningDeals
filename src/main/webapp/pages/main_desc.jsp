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
					<strong id="price"><span>previously
							&#8360;${dealDetailsVO.actualPrice}</span>
						&#8360;${dealDetailsVO.salePrice}</strong>
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

					<c:forEach var="listValue" items="${topDeals}">
						<a href="productDesc?productId=${listValue.productId}"
							class="product_name">${listValue.productName}</a>
						<br />
						<div class="side_price_tag">
							<div class="side_price_left">
								<a href="productDesc?productId=${listValue.productId}">M.R.P
									&#8360;.${listValue.actualPrice}</a>
							</div>
							<div class="side_price_middle">
								<a href="productDesc?productId=${listValue.productId}">&#8360;.${listValue.salePrice}</a>
							</div>
							<div class="side_price_right">
								<a href="productDesc?productId=${listValue.productId}">Buy
									Now</a>
							</div>
						</div>
						<div id="hline"></div>
					</c:forEach>
				</div>
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
					<c:forEach var="listValue" items="${relatedDeals}">
						<li>
							<div>
								<style="background: #FFF; width: 182px; height: 300px; color: #0096d6;">
									<a href="#"><img src="${listValue.imageUrl}"
										alt="${listValue.productName}" /></a>
									<a href="#" class="product_name">${listValue.productName}</a>
									<div class="price_tag">
										<div class="price_left">
											<a href="prod-desc.html">M.R.P &#8377;${listValue.salePrice}</a>
										</div>
										<div class="price_right">
											<a href="#">&#8377;${listValue.salePrice}</a>
										</div>
									</div>
									<a href="productDesc?productId=${listValue.productId}" class="see_deal">Buy Now</strong></a>
							</div>
						</li>
					</c:forEach>
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
				direction : 'left',
				step : 3
			});
		</script>


	</div>
	<!--- Main Product Wrapper end --->

</body>
</html>