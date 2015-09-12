<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Morning Deals</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css'>
<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="product_wraper"><!---- Main Prodcut_wrapper Start --->
<div id="mainview"><!--- Main View Start --->
    <div id="breadcrumb"><a href="home">Home</a> > <a href="deals">Deals</a> > >Product Name</div>

    <div id="images"><!--- Main Image start --->
    	<a href="#"><img src="${dealDetailsVO.imageUrl}"></a>
    </div><!--- Main Image End --->
    
    <div id="description"><!--- Decription Start --->
    	<h1>${dealDetailsVO.productName}</h1>
        <strong id="price"><span>previously &#8360;${dealDetailsVO.actualPrice}</span> &#8360;${dealDetailsVO.salePrice}</strong><p>${dealDetailsVO.productDescription}</p>
        <a href="${dealDetailsVO.dealUrl}" class="see_deal">Grab Deal</a></p>
    
    </div><!--- Decription End --->
    
</div><!--- Main View End --->
<div class="clr"></div>

<div id="carousel_wraper"><!--- Carousel Wraper Start --->

<div class="row">
            <div class="row">
            <div class="col-md-9">
                <h3 style="margin-left:-530px;">Related Products</h3>
            </div>
            <div class="col-md-3">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row">
                    <c:set var="count" value="0" scope="page" />
                        <c:forEach var="listValue" items="${relatedDeals}">
                        <c:set var="count" value="${count + 1}" scope="page"/>
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>${listValue.productName}</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <h5 class="price-text-color">&#8360;.${listValue.salePrice}</h5> </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="${listValue.imageUrl}" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="productDesc?productId=${listValue.productId}" class="hidden-sm">See Deal</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                </div>
            </div>
        </div>



</div><!--- Carousel Wraper End --->

</div><!--- Main Product Wrapper end --->

</body>
</html>