<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial--scale=1.0">
<title>Morning Deals</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis'
	rel='stylesheet' type='text/css'>
<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script>
	$(function() {
		$('#list').click(function() {
			$('.prod-box').animate({
				opacity : 0
			}, function() {
				$('.grid').removeClass('grid-active');
				$('.list').addClass('list-active');
				$('.prod-box').attr('class', 'prod-box-list shadow');
				$('.prod-box-list').stop().animate({
					opacity : 1
				});
			});
		});

		$('#grid').click(function() {
			$('.prod-box-list').animate({
				opacity : 0
			}, function() {
				$('.list').removeClass('list-active');
				$('.grid').addClass('grid-active');
				$('.prod-box-list').attr('class', 'prod-box shadow');
				$('.prod-box').stop().animate({
					opacity : 1
				});
			});
		});
	});
</script>
</head>
<body>
	<h1 class="active">${message}</h1>
	<div class="product_wraper">
		<!---- Main Prodcut_wrapper Start --->
		<div class="prodcuts_panel">
			<!--- prodcuts_panel Start --->
			<div class="prods-cnt">
				<!--- List / Grid Start ---->
				<div id="list" class="list"></div>
				<div id="grid" class="grid"></div>
				<div class="clear"></div>
				<c:forEach var="listValue" items="${allDeals}">
				<div class="prod-box shadow">
					<a href="#"><img src="${listValue.imageUrl}" alt="${listValue.productName}"/></a>
					<h3>
						<a href="productDesc?productId=${listValue.productId}" >${listValue.productName}r</a>
					</h3>
					<div class="price-box">
						<div>
							<a class="actual_price list_actualprice" href="prod-desc.html">&#8377;.${listValue.actualPrice}</a>
						</div>
						<div>
							<a class="sale_price list_saleprice" href="prod-desc.html">&#8377;.${listValue.salePrice}</a>
						</div>
					</div>
					<p>Donec id elit non mi porta gravida at eget metus. Fusce
						dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
						ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
						magna mollis euismod.</p>
					<span class="btn_buynow listbtn_buynow"><a
						href="productDesc?productId=${listValue.productId}">Buy Now</a></span>
				</div>
				</c:forEach>
				<div class="paging">
					Page: <a onclick="javascript:return getPage(1);" href="">1</a>&nbsp;
					| &nbsp;2&nbsp; | &nbsp;<a onclick="javascript:return getPage(3);"
						href="">3</a> | <a
						onclick="javascript:return getPage('', '', '1');" href="">View
						All</a>
				</div>
				<div class="clearfix"></div>
			</div>
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
							<a href="productDesc?productId=${listValue.productId}">Buy Now</a>
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

	</div>
	<!---- Main Prodcut_wrapper end --->

</body>
</html>