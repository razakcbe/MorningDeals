<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
 <meta name="viewport" content="width=device-width, initial--scale=1.0">
<meta charset="utf-8">
<title>Morning Deals</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="editors/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
tinymce.init({
    selector: "textarea",
    theme: "modern",
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table contextmenu directionality",
        "emoticons template paste textcolor colorpicker textpattern imagetools"
    ],
    toolbar1: "insertfile undo redo | styleselect | bold italic | forecolor backcolor emoticons | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media",
    image_advtab: true,
   
});

$(function() {
	 	$('#jayaram-form').validate({
	    });
     });
</script>      

<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link type='text/css' href='css/osx.css' rel='stylesheet' media='screen' />

</head>
<body>

<div class="product_wraper"><!---- Main Prodcut_wrapper Start --->
<div class="prodcuts_panel"><!--- prodcuts_panel Start --->
  
<div class="main-content">
    
<div class="main-content1">     
<h1> Submit Your Deals</h1> 		
<form name="jayaram" id="jayaram-form" method="post" action="createDeal">

<div id="wrapping" class="clearfix">

<input type="text" name="pname" id="pname1" placeholder="Product Name" autocomplete="off" tabindex="1" class="txtinput" required>
<textarea name="pmessage" id="pmessage" placeholder="Product Description..." tabindex="2" class="txtblock"></textarea><br/>	
<input type="url" name="imageURL" id="imageURL" placeholder="Image URL.." autocomplete="off" tabindex="3" class="txtinput" required/>
<input type="url" name="destinationURL" id="destinationURL" placeholder="Destination URL" autocomplete="off" tabindex="4" class="txtinput" required/>
<select name="categoryId" id="categoryId" tabindex="5" class="cmbselect">
                                    <option value="0">Select Your Product...</option>
                                    <optgroup label="Electronics">
                                            <option value="10001">Mobile Accessories</option>
                                            <option value="10002">Laptops</option>
                                            <option value="10003">Tablet Accessories</option>
                                            <option value="10004">Computer Accessories</option>
                                            <option value="10005">Camera Accessories</option>
                                            <option value="10006">Audio & Video</option>
                                            <option value="10007">Gaming</option>
                                            <option value="10008">Televisions</option>
                                            <option value="10009">Large Appliances</option>
                                            <option value="10010">Small Appliances</option>
                                            <option value="10011">Kitchen Appliances</option>
                                            <option value="10012">Healthcare Appliances</option>                                    </optgroup>

                                    <optgroup label="Men">
                                            <option value="10013">Clothing</option>
                                            <option value="10014">Footwear</option>
                                            <option value="10015">Watches</option>
                                            <option value="10016">Men's Accessories</option>
                                            <option value="10017">Bags, Belts & Wallets</option>
                                            <option value="10018">Contact Lenses</option>
                                            <option value="10019">Sunglasses</option>
                                            <option value="10020">Spectacle Frames</option>
                                            <option value="10021">Fragrances</option>
                                            <option value="10022">Grooming & Wellness</option>
                                    </optgroup>
                                    <optgroup label="Women">
                                            <option value="10022">Clothing</option>
                                            <option value="10023">Footwear</option>
                                            <option value="10024">Watches</option>
                                            <option value="10025">Jewellery</option>
                                            <option value="10026">Bags, Belts & Wallets</option>
                                            <option value="10027">Contact Lenses</option>
                                            <option value="10028">Sunglasses</option>
                                            <option value="10029">Spectacle Frames</option>
                                            <option value="10030">Beauty & Personal Care</option>
                                            <option value="10031">Perfumes</option>
                                            <option value="10032">Wellness</option>                                    </optgroup>                                 

                                    <optgroup label="Baby Products">
                                            <option value="10033">Clothing</option>
                                            <option value="10034">Footwear</option>
                                            <option value="10035">Toys</option>
                                            <option value="10036">Baby Care</option>
                                            <option value="10037">School Supplies</option>
                                            <option value="10038">Kids Sports</option>
                                            <option value="10039">Watches</option>
                                            <option value="10040">Books</option>
                                            <option value="10041">Movies</option>
                                            <option value="10042">Sunglasses</option>
                                    </optgroup>                                 

                                    <optgroup label="Home Products">
                                            <option value="10043">Kitchen & Dining</option>
                                            <option value="10044">Home Furnishing</option>
                                            <option value="10045">Home Appliances</option>
                                            <option value="10046">Kitchen Appliances</option>
                                            <option value="10047">Furniture</option>
                                            <option value="10048">Tools & Hardware</option>
                                            <option value="10049">Home Specials</option>
                                            <option value="10050">Bath Essential</option>
                                            <option value="10051">Household Supplies</option>
                                            <option value="10052">Housekeeping & Laundry</option>
                                            <option value="10053">Pet Supplies</option>
                                     </optgroup>                                 

                                    <optgroup label="Book & Media">
                                            <option value="10054">Books</option>
                                            <option value="10055">eLearning</option>
                                            <option value="10056">eBooks & ePrints</option>
                                            <option value="10057">Music</option>
                                            <option value="10058">Movies & TV Shows</option>
                                            <option value="10059">Gaming</option>
                                            <option value="10060">Stationary</option>
                                            <option value="10061">Office Equipments</option>
											<option value="10062">Exam Supplies</option>
                                    </optgroup>                                 

                                    <optgroup label="Sports">
											<option value="10063">Sports Clothing</option>
											<option value="10064">Sports Footwear</option>
											<option value="10065">Fitness & BodyBuilding</option>
											<option value="10066">Cardio Equipments</option>
											<option value="10067">Sports</option>
											<option value="10068">Outdoors</option>                                    </optgroup>                                 

                                    <optgroup label="Bike & Car Spares">
											<option value="10069">Car Essentials</option>
											<option value="10070">Bike Essentials</option>
											<option value="10071">Car Electronics</option>
											<option value="10072">Tyres</option>
											<option value="10073">Lighting</option>
											<option value="10074">Styling</option>
											<option value="10075">Spares & Equipment</option>
											<option value="10076">Lubricants & Oils</option>
											<option value="10077">Helmets & Protective Wear</option>
											<option value="10078">Vehicle Covers</option>
											<option value="10079">Washing & Cleaning</option>
											<option value="10080">Breakdown Equipment</option>
											<option value="10081">Car Freshness</option>
                                    </optgroup>                                 
   </select>
                                
<input type="text" name="vname" id="vname" placeholder="Vendor Name" autocomplete="off" tabindex="6" class="txtinput" required/>
<input type="number" name="aprice" id="aprice" placeholder="Actual price" tabindex="7" class="txtinput" required/>
<input type="number" name="sprice" id="sprice" placeholder="Sale price" tabindex="8" class="txtinput" required/>
<input type="text" name="coupon" id="coupon" placeholder="Coupon Code" autocomplete="off" tabindex="9" class="txtinput"/>

<div id="radiobutton">
<div id="radiobtn_left">
<label for="hotdeals">Hot Deals:</label>&nbsp;
<input type="radio" name="hotdealsid" id="hotdealsyes" value="Yes" autocomplete="off" tabindex="10" />Yes&nbsp;
<input type="radio" name="hotdealsid" id="hotdealsno" value="No" autocomplete="off" tabindex="11" checked="checked"/> No
</div>
<div id="radiobtn_middle">
<label for="hotdeals">Popular Deals:</label>&nbsp;
<input type="radio" name="populardealsid" id="populardealsyes" value="Yes" autocomplete="off" tabindex="12"/>Yes&nbsp;
<input type="radio" name="populardealsid" id="populardealsno" value="No" autocomplete="off" tabindex="13" checked="checked"/> No
</div>
<div id="radiobtn_right">
<label for="hotdeals">Clearnce Sale:</label>&nbsp;
<input type="radio" name="clearncesaleid" id="clearncesaleyes" value="Yes" autocomplete="off" tabindex="14"/>Yes&nbsp;
<input type="radio" name="clearncesaleid" id="clearncesaleidno" value="No" autocomplete="off" tabindex="15" checked="checked"/> No
</div>
</div>

<div id="fileupload">
<input type="file" name="fileupload"   id="fileupload" placeholder="File Upload" autocomplete="off" tabindex="16" class="txtinput"/>

		
<section id="buttons">

<input type="submit" name="osx" id="submitbtn" tabindex="17" value="Submit">
<!--<input type="button" name="osx" id="submitbtn" class='osx demo' tabindex="16" value="Submit"> -->
<input type="reset" name="reset" id="resetbtn" class="resetbtn" value="Reset">
		<br style="clear:both;">
		
		<!-- modal content -->
		<div id="osx-modal-content">
			<div id="osx-modal-title">Morning Deals</div>
			<div class="close"><a href="#" class="simplemodal-close">x</a></div>
			<div id="osx-modal-data">

				<p>Your Deal is Successfully Uploaded... </p>
                				<h2>Thanks for Submitting Deal...</h2>
				<p><button class="simplemodal-close">Close</button> <span>(or press ESC or click the overlay)</span></p>
			</div>
		</div><!--- Modal Contetn End --->

        
</section>
	

</div></div>
</form>
</div> 
</div>
    
</div><!--- Prodcut Panel End --->
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
</div><!--- Main Product Wrapper end --->
<!-- Load JavaScript files -->
<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/jquery.simplemodal.js'></script>
<script type='text/javascript' src='js/osx.js'></script>
</body>
</html>