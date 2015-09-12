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
<form name="jayaram" id="jayaram-form" method="post" action="#">

<div id="wrapping" class="clearfix">

		<select name="select" id="s2_1" class="cmbselect">
                                    <option value="0">Select Your Product...</option>
                                    <optgroup label="Electronics">
                                            <option value="1">Mobile Accessories</option>
                                            <option value="2">Laptops</option>
                                            <option value="3">Tablet Accessories</option>
                                            <option value="4">Computer Accessories</option>
                                            <option value="5">Camera Accessories</option>
                                            <option value="6">Audio & Video</option>
                                            <option value="7">Gaming</option>
                                            <option value="8">Televisions</option>
                                            <option value="9">Large Appliances</option>
                                            <option value="10">Small Appliances</option>
                                            <option value="11">Kitchen Appliances</option>
                                            <option value="12">Healthcare Appliances</option>                                    </optgroup>

                                    <optgroup label="Men">
                                            <option value="13">Clothing</option>
                                            <option value="14">Footwear</option>
                                            <option value="15">Watches</option>
                                            <option value="16">Men's Accessories</option>
                                            <option value="17">Bags, Belts & Wallets</option>
                                            <option value="18">Contact Lenses</option>
                                            <option value="19">Sunglasses</option>
                                            <option value="20">Spectacle Frames</option>
                                            <option value="21">Fragrances</option>
                                            <option value="22">Grooming & Wellness</option>
                                    </optgroup>
                                    <optgroup label="Women">
                                            <option value="22">Clothing</option>
                                            <option value="23">Footwear</option>
                                            <option value="24">Watches</option>
                                            <option value="25">Jewellery</option>
                                            <option value="26">Bags, Belts & Wallets</option>
                                            <option value="27">Contact Lenses</option>
                                            <option value="28">Sunglasses</option>
                                            <option value="29">Spectacle Frames</option>
                                            <option value="30">Beauty & Personal Care</option>
                                            <option value="31">Perfumes</option>
                                            <option value="32">Wellness</option>                                    </optgroup>                                 

                                    <optgroup label="Baby Products">
                                            <option value="33">Clothing</option>
                                            <option value="34">Footwear</option>
                                            <option value="35">Toys</option>
                                            <option value="36">Baby Care</option>
                                            <option value="37">School Supplies</option>
                                            <option value="38">Kids Sports</option>
                                            <option value="39">Watches</option>
                                            <option value="40">Books</option>
                                            <option value="41">Movies</option>
                                            <option value="42">Sunglasses</option>
                                    </optgroup>                                 

                                    <optgroup label="Home Products">
                                            <option value="43">Kitchen & Dining</option>
                                            <option value="44">Home Furnishing</option>
                                            <option value="45">Home Appliances</option>
                                            <option value="46">Kitchen Appliances</option>
                                            <option value="47">Furniture</option>
                                            <option value="48">Tools & Hardware</option>
                                            <option value="49">Home Specials</option>
                                            <option value="50">Bath Essential</option>
                                            <option value="51">Household Supplies</option>
                                            <option value="52">Housekeeping & Laundry</option>
                                            <option value="53">Pet Supplies</option>
                                     </optgroup>                                 

                                    <optgroup label="Book & Media">
                                            <option value="54">Books</option>
                                            <option value="55">eLearning</option>
                                            <option value="56">eBooks & ePrints</option>
                                            <option value="57">Music</option>
                                            <option value="58">Movies & TV Shows</option>
                                            <option value="59">Gaming</option>
                                            <option value="60">Stationary</option>
                                            <option value="61">Office Equipments</option>
											<option value="62">Exam Supplies</option>
                                    </optgroup>                                 

                                    <optgroup label="Sports">
											<option value="63">Sports Clothing</option>
											<option value="64">Sports Footwear</option>
											<option value="65">Fitness & BodyBuilding</option>
											<option value="66">Cardio Equipments</option>
											<option value="67">Sports</option>
											<option value="68">Outdoors</option>                                    </optgroup>                                 

                                    <optgroup label="Bike & Car Spares">
											<option value="69">Car Essentials</option>
											<option value="70">Bike Essentials</option>
											<option value="71">Car Electronics</option>
											<option value="72">Tyres</option>
											<option value="73">Lighting</option>
											<option value="74">Styling</option>
											<option value="75">Spares & Equipment</option>
											<option value="76">Lubricants & Oils</option>
											<option value="77">Helmets & Protective Wear</option>
											<option value="78">Vehicle Covers</option>
											<option value="79">Washing & Cleaning</option>
											<option value="80">Breakdown Equipment</option>
											<option value="81">Car Freshness</option>
                                    </optgroup>                                 
                                </select>

	
<textarea name="pmessage" id="pmessage" placeholder="Product Description..." tabindex="1" class="txtblock"></textarea><br/>
	
	
<input type="url" name="imageURL" id="imageURL" placeholder="Image URL.." autocomplete="off" tabindex="2" class="txtinput"/>
		
<input type="url" name="destinationURL" id="destinationURL" placeholder="Destination URL" autocomplete="off" tabindex="3" class="txtinput"/>

<input type="tel" name="categoryid" id="categoryid" placeholder="Category Id" tabindex="4" class="txtinput"/>
<input type="text" name="pname" id="pname" placeholder="Vendor Name" autocomplete="off" tabindex="5" class="txtinput"/>
	
<input type="tel" name="price" id="price" placeholder="Actual price" tabindex="6" class="txtinput"/>
		
		
<input type="tel" name="price" id="price1" placeholder="Sale price" tabindex="7" class="txtinput"/>

<input type="text" name="coupon" id="coupon" placeholder="Coupon Code" autocomplete="off" tabindex="8" class="txtinput"/>

<div id="radiobutton">
<div id="radiobtn_left">
<label for="hotdeals">Hot Deals:</label>&nbsp;
<input type="radio" name="hotdealsid" id="hotdealsyes" value="Yes" autocomplete="off" tabindex="9" />Yes&nbsp;
<input type="radio" name="hotdealsid" id="hotdealsno" value="No" autocomplete="off" tabindex="10" checked="checked"/> No
</div>
<div id="radiobtn_middle">
<label for="hotdeals">Popular Deals:</label>&nbsp;
<input type="radio" name="populardealsid" id="populardealsyes" value="Yes" autocomplete="off" tabindex="11"/>Yes&nbsp;
<input type="radio" name="populardealsid" id="populardealsno" value="No" autocomplete="off" tabindex="12" checked="checked"/> No
</div>
<div id="radiobtn_right">
<label for="hotdeals">Clearnce Sale:</label>&nbsp;
<input type="radio" name="clearncesaleid" id="clearncesaleyes" value="Yes" autocomplete="off" tabindex="13"/>Yes&nbsp;
<input type="radio" name="clearncesaleid" id="clearncesaleidno" value="No" autocomplete="off" tabindex="14" checked="checked"/> No
</div>
</div>

<div id="fileupload">
<input type="file" name="fileupload"   id="fileupload" placeholder="File Upload" autocomplete="off" tabindex="15" class="txtinput"/>

		
<section id="buttons">
			
<input type="button" name="osx" id="submitbtn" class='osx demo' tabindex="16" value="Submit">
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
</section> 
</form>
</div> 
</div>
    
</div><!--- Prodcut Panel End --->
<div class="sidebar_wrapper"><!--- Sidebar Wrapper Start--->
<div class="sidebar_panel"><!--- sidebar_panel Start --->
<h2>Top Deals</h2>
<div class="side_content_pane"><!--- Side Content Pane Start --->
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
<div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
<div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
<div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
<div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
<div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->
 <div id="hline"></div>
 <a href="prod-desc.html" class="product_name">Teewe 2 Wireless HDMI Media Streaming Player</a><br/>
 <div class="side_price_tag"><!--- Side Price Tag Start -->
                 <div class="side_price_left">
                <a href="prod-desc.html">M.R.P &#8377;2399</a>
                </div>
                <div class="side_price_middle">
                <a href="prod-desc.html">&#8377;1899</a>
                </div>
                    <div class="side_price_right">
                <a href="prod-desc.html">Buy Now</a>
                </div>
 </div><!--- Side Price Tag End --->  
</div><!--- Side content pane end --->
<div id="ad_long"><!--- Advertisement1 Here Start --->
<img src="images/adlong.jpg" />
</div><!--- Advertisement1 Here End --->

</div><!--- Sidebar_panel End --->
</div><!--- Sidebar Wrapper End --->

<div class="clr"></div>
</div><!--- Main Product Wrapper end --->

<!-- Load JavaScript files -->
<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/jquery.simplemodal.js'></script>
<script type='text/javascript' src='js/osx.js'></script>

</body>
</html>