<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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

</head>
<body>
	<header>
		<div class="wrapper">
			<h1>
				<a href="index.html" id="brand" title="Morning Deals">Morning
					Deals</a>
			</h1>
			<nav>
				<ul>
					<li><a href="home">Home</a></li>
					<li><a href="deals">Deals</a></li>
					<li><a href="cupons">Coupons</a></li>
					<li><a href="hotDeals">Hot Deals</a></li>
					<li><a href="clearanceDeals">Clearence Deals</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<aside id="top">
		<div class="wrapper">
			<ul id="social">
				<li><a href="#" class="facebook" title="like us us on Facebook">like
						us us on Facebook</a></li>
				<li><a href="#" class="twitter" title="follow us on twitter">follow
						us on twitter</a></li>
			</ul>
			<form>
				<input type="text" placeholder="Search products comp..." />
				<button type="submit">Search</button>
			</form>
			<div id="action-bar">
				<a href="login.html">Login/Register</a>
			</div>
		</div>
	</aside>

	<div class="product_wrappter">
		<!---- Main Prodcut_wrapper Start --->
		<div class="prodcuts_panel">
			<!--- prodcuts_panel Start --->
			<article id="grid">
				<div id="breadcrumb">
					<a href="index.html">Home</a> > <a href="search.html">Dresses</a> >
					<h1>Summer Dress</h1>
				</div>
				<header>
					<div class="paging">
						Page: <a onclick="javascript:return getPage(1);" href="">1</a>&nbsp;
						| &nbsp;2&nbsp; | &nbsp;<a onclick="javascript:return getPage(3);"
							href="">3</a> | <a
							onclick="javascript:return getPage('', '', '1');" href="">View
							All</a>
					</div>
					<form action="#">
						<select onchange="javascript:addSort();" name="sortBy" id="sortBy">
							<option value="">Default</option>
							<option value="PriceHiLo">Price (High to Low)</option>
							<option value="PriceLoHi">Price (Low to High)</option>
							<option value="pID">Most Recent</option>
						</select> &nbsp; Showing 26 - 50 of 78 Product(s)
					</form>
				</header>
				<div class="clr"></div>
				<ul id="items">

						<c:forEach var="listValue" items="${allDeals}">
							<li>
								<a href="${listValue.dealUrl}"><img src="${listValue.imageUrl}" alt="${listValue.productName}" /></a>
								<a href="${listValue.dealUrl}" class="title">${listValue.productName}</a> 
								<a href="${listValue.dealUrl}"> Actual Price: &#8360;.${listValue.actualPrice}</a>
								<a href="${listValue.dealUrl}"><strong>Sale Price: &#8360;.${listValue.salePrice}</strong></a>
							</li>
						</c:forEach>
					

				</ul>
				<footer>
					<div class="paging">
						Page: <a onclick="javascript:return getPage(1);" href="">1</a>&nbsp;
						| &nbsp;2&nbsp; | &nbsp;<a onclick="javascript:return getPage(3);"
							href="">3</a> | <a
							onclick="javascript:return getPage('', '', '1');" href="">View
							All</a>
					</div>
				</footer>
			</article>
		</div>
		<!--- prodcuts_panel end --->
		<div class="sidebar_wrapper">

			<div class="box">
				<h2>Price Comparision</h2>
				<form id="ui_element" class="sb_wrapper">
					<p>
						<span class="sb_down"></span> <input class="sb_input" type="text" />
						<input class="sb_search" type="submit" value="" />
					</p>
					<ul class="sb_dropdown" style="display: none;">
						<li class="sb_filter">Filter your search</li>
						<li><input type="checkbox" /><label for="all"><strong>All
									Categories</strong></label></li>
						<li><input type="checkbox" /><label for="Automotive">Automotive</label></li>
						<li><input type="checkbox" /><label for="Baby">Baby</label></li>
						<li><input type="checkbox" /><label for="Beauty">Beautys</label></li>
						<li><input type="checkbox" /><label for="Books">Books</label></li>
						<li><input type="checkbox" /><label for="Cell">Cell
								Phones </label></li>
						<li><input type="checkbox" /><label for="Cloth">Clothing
						</label></li>
						<li><input type="checkbox" /><label for="Electronics">Electronics</label></li>
						<li><input type="checkbox" /><label for="Gourmet">Gourmet
								Food</label></li>
						<li><input type="checkbox" /><label for="Health">Health
								Personal</label></li>
						<li><input type="checkbox" /><label for="Home">Home
								&amp; Garden</label></li>
						<li><input type="checkbox" /><label for="Industrial">Industrial</label></li>
						<li><input type="checkbox" /><label for="Jewelry">Jewelry</label></li>
						<li><input type="checkbox" /><label for="Magazines">Magazines</label></li>
					</ul>
				</form>
			</div>



			<div class="sidebar_panel">
				<!--- sidebar_panel Start --->
				<h2>Hot Deals</h2>
				<div class="side_content_pane">
					<a href="#">Some Text Here</a><br /> <a href="#">Some Text Here</a><br />
					<a href="#">Some Text Here</a><br /> <a href="#">Some Text Here</a><br />
					<br />

				</div>
			</div>
			<!--- Sidebar_panel End --->

			<div class="sidebar_panel">
				<!--- sidebar_panel Start --->
				<h2>Popular Deals</h2>
				<div class="side_content_pane">
					<a href="#">Some Text Here</a><br /> <a href="#">Some Text Here</a><br />
					<a href="#">Some Text Here</a><br /> <a href="#">Some Text Here</a><br />
					<a href="#">Some Text Here</a><br /> <a href="#">Some Text Here</a><br />
					<a href="#">Some Text Here</a><br /> <a href="#">Some Text Here</a><br />
					<br />
				</div>
			</div>
			<!--- Sidebar_panel End --->

		</div>
	</div>
	<!---- Main Prodcut_wrapper Start --->
	<footer>
		<div class="wrapper">
			<span class="logo">Morning Deals</span> <a
				href="http://www.webdezign.co.uk" target="_blank"
				title="web design london" class="right">www.moringdeals.com</a>&copy;Morning
			Deals<a href="#">Sitemap</a> <a href="#">Terms &amp; Conditions</a> <a
				href="#">Help</a> <br /> <a href="mailto:Morning Deals">info@morningdealscom</a>
		</div>
	</footer>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			/**
			 * the element
			 */
			var $ui = $('#ui_element');

			/**
			 * on focus and on click display the dropdown, 
			 * and change the arrow image
			 */
			$ui.find('.sb_input').bind(
					'mouseover',
					function() {
						$ui.find('.sb_down').addClass('sb_up').removeClass(
								'sb_down').andSelf().find('.sb_dropdown')
								.show();
					});

			/**
			 * on mouse leave hide the dropdown, 
			 * and change the arrow image
			 */
			$ui.bind('mouseleave', function() {
				$ui.find('.sb_up').addClass('sb_down').removeClass('sb_up')
						.andSelf().find('.sb_dropdown').hide();
			});

			/**
			 * selecting all checkboxes
			 */
			$ui.find('.sb_dropdown').find('label[for="all"]').prev().bind(
					'click',
					function() {
						$(this).parent().siblings().find(':checkbox').attr(
								'checked', this.checked).attr('disabled',
								this.checked);
					});
		});
	</script>
</body>
</html>
