<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Morning Deals</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css'>

</head>
<body>
<h1  class="active">${message}</h1>
<div class="product_wraper"><!---- Main Prodcut_wrapper Start --->
<div class="prodcuts_panel"><!--- prodcuts_panel Start --->
<article id="grid">
    <ul id="items">
       			<c:forEach var="listValue" items="${allDeals}">
							<li>
							
							<a href="#"><img src="${listValue.imageUrl}" alt="${listValue.productName}"/></a>
					            <a href="productDesc?productId=${listValue.productId}" class="product_name">${listValue.productName}r</a>
					            <div class="price_tag">
					                <div class="price_left">
					                <a href="#">M.R.P &#8360;.${listValue.actualPrice}</a>
					                </div>
					                <div class="price_right">
					                <a href="#">&#8360;.${listValue.salePrice}</a>
					                </div>
					            </div>
					            <a href="productDesc?productId=${listValue.productId}" class="see_deal">Buy Now</strong></a>
            				</li>
						</c:forEach>
    </ul>

        <div class="paging">
          
        </div>

    
</article>
</div><!--- prodcuts_panel end --->

<div class="sidebar_wrapper"><!--- Sidebar Wrapper Start--->

<div class="sidebar_panel"><!--- sidebar_panel Start --->
<h2>Top Deals</h2>
<div class="side_content_pane">

		<c:forEach var="listValue" items="${topDeals}">
			<a href="productDesc?productId=${listValue.productId}" class="product_name">${listValue.productName}</a><br/>
				<div class="price_tag">
                 	<div class="price_left">
                		<a href="productDesc?productId=${listValue.productId}">M.R.P &#8360;.${listValue.actualPrice}</a>
                	</div>
                	<div class="price_right">
                		<a href="productDesc?productId=${listValue.productId}">&#8360;.${listValue.salePrice}</a>
                	</div>
 				</div>
		<div id="hline"></div>
		</c:forEach>
</div>
</div><!--- Sidebar_panel End --->


</div><!--- Sidebar Wrapper End --->

<div class="clr"></div>
                        
</div><!---- Main Prodcut_wrapper end --->

</body>
</html>
