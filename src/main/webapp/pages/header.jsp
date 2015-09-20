<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="js/script.js"></script>

</head>
<div class="header_wrapper">
	<!--- Header wrapper Started --->
	<div id="header_top">
		<!--- Header Top Started --->
		<div id="topleft">
			<a href="dealsByCateogry?categoryId=20001">Electronics</a> <a href="dealsByCateogry?categoryId=10001">Mobiles</a> <a href="dealsByCateogry?categoryId=10002">Laptops</a>
			<a href="dealsByCateogry?categoryId=10008">Televisions</a> <a href="dealsByCateogry?categoryId=20002">Mens</a> <a href="dealsByCateogry?categoryId=20003">Womens</a>
			<a href="dealsByCateogry?categoryId=10045">Home Furniture</a>
		</div>
		<div id="topright">
		<c:if test="${empty userVO}">
			<a href="login">Login / Register</a>
		</c:if>
		<c:if test="${not empty userVO}">
			Welcome, ${userVO.userName}  <span class="icon-share-alt"></span> <a href="login">Logout</a>
		</c:if>
		</div>
	</div>
	<!--- Header Top Started --->
	<div class="header_inner">
		<!--- Header Inner Started --->
		<div id="hleft">
			<!--- Logo Started --->
			<a href="home" ><img src="images/morningdeals-logo.png" /></a>
		</div>
		<!--- Logo Closed --->
		<div id="hright">
			<!--- Right ad Started --->
			<img src="images/ad1.jpg" />
		</div>
		<!--- Right Ad Closed --->

	</div>
	<!--- Header Inner Closed --->

	<div id="menu_wraper">
		<!---- Menu Wrapper Start --->
		<div id='nav_menu'>
			<!---- Nav Menu Start --->
			<ul>
				<li class='active'><a href='home'>Home</a></li>
				<li><a href='deals'>Deals</a>
					<ul>
						<li><a href="dealsByCateogry?categoryId=20001">Electronics</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10001">Mobile Accessories</a></li>
								<li><a href="dealsByCateogry?categoryId=10002">Laptops</a></li>
								<li><a href="dealsByCateogry?categoryId=10003">Tablet Accessories</a></li>
								<li><a href="dealsByCateogry?categoryId=10004">Computer Accessories</a></li>
								<li><a href="dealsByCateogry?categoryId=10005">Camera Accessories</a></li>
								<li><a href="dealsByCateogry?categoryId=10006">Audio & Video</a></li>
								<li><a href="dealsByCateogry?categoryId=10007">Gaming</a></li>
								<li><a href="dealsByCateogry?categoryId=10008">Televisions</a></li>
								<li><a href="dealsByCateogry?categoryId=10009">Large Appliances</a></li>
								<li><a href="dealsByCateogry?categoryId=10010">Small Appliances</a></li>
								<li><a href="dealsByCateogry?categoryId=10011">Kitchen Appliances</a></li>
								<li><a href="dealsByCateogry?categoryId=10012">Healthcare Appliances</a></li>
							</ul></li>
						<li><a href="dealsByCateogry?categoryId=20002">Men</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10013">Clothing</a></li>
								<li><a href="dealsByCateogry?categoryId=10014">Footwear</a></li>
								<li><a href="dealsByCateogry?categoryId=10015">Watches</a></li>
								<li><a href="dealsByCateogry?categoryId=10016">Men's Accessories</a></li>
								<li><a href="dealsByCateogry?categoryId=10017">Bags, Belts & Wallets</a></li>
								<li><a href="dealsByCateogry?categoryId=10018">Contact Lenses</a></li>
								<li><a href="dealsByCateogry?categoryId=10019">Sunglasses</a></li>
								<li><a href="dealsByCateogry?categoryId=10020">Spectacle Frames</a></li>
								<li><a href="dealsByCateogry?categoryId=10021">Fragrances</a></li>
								<li><a href="dealsByCateogry?categoryId=10022">Grooming & Wellness</a></li>
							</ul></li>
						<li><a href="dealsByCateogry?categoryId=20003">Women</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10023">Clothing</a></li>
								<li><a href="dealsByCateogry?categoryId=10024">Footwear</a></li>
								<li><a href="dealsByCateogry?categoryId=10025">Watches</a></li>
								<li><a href="dealsByCateogry?categoryId=10026">Jewellery</a></li>
								<li><a href="dealsByCateogry?categoryId=10027">Bags, Belts & Wallets</a></li>
								<li><a href="dealsByCateogry?categoryId=10028">Contact Lenses</a></li>
								<li><a href="dealsByCateogry?categoryId=10029">Sunglasses</a></li>
								<li><a href="dealsByCateogry?categoryId=10030">Spectacle Frames</a></li>
								<li><a href="dealsByCateogry?categoryId=10031">Beauty & Personal Care</a></li>
								<li><a href="dealsByCateogry?categoryId=10032">Perfumes</a></li>
								<li><a href="dealsByCateogry?categoryId=10033">Wellness</a></li>
							</ul></li>
						<li><a href="dealsByCateogry?categoryId=20004">Baby Products</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10034">Clothing</a></li>
								<li><a href="dealsByCateogry?categoryId=10035">Footwear</a></li>
								<li><a href="dealsByCateogry?categoryId=10036">Toys</a></li>
								<li><a href="dealsByCateogry?categoryId=10037">Baby Care</a></li>
								<li><a href="dealsByCateogry?categoryId=10038">School Supplies</a></li>
								<li><a href="dealsByCateogry?categoryId=10039">Kids Sports</a></li>
								<li><a href="dealsByCateogry?categoryId=10040">Watches</a></li>
								<li><a href="dealsByCateogry?categoryId=10041">Books</a></li>
								<li><a href="dealsByCateogry?categoryId=10042">Movies</a></li>
								<li><a href="dealsByCateogry?categoryId=10043">Sunglasses</a></li>
							</ul></li>

						<li><a href="dealsByCateogry?categoryId=20005">Home Products</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10044">Kitchen & Dining</a></li>
								<li><a href="dealsByCateogry?categoryId=10045">Home Furnishing</a></li>
								<li><a href="dealsByCateogry?categoryId=10046">Home Appliances</a></li>
								<li><a href="dealsByCateogry?categoryId=10047">Kitchen Appliances</a></li>
								<li><a href="dealsByCateogry?categoryId=10048">Furniture</a></li>
								<li><a href="dealsByCateogry?categoryId=10049">Tools & Hardware</a></li>
								<li><a href="dealsByCateogry?categoryId=10050">Home Specials</a></li>
								<li><a href="dealsByCateogry?categoryId=10051">Bath Essential</a></li>
								<li><a href="dealsByCateogry?categoryId=10052">Household Supplies</a></li>
								<li><a href="dealsByCateogry?categoryId=10053">Housekeeping & Laundry</a></li>
								<li><a href="dealsByCateogry?categoryId=10054">Pet Supplies</a></li>
							</ul></li>
						<li><a href="dealsByCateogry?categoryId=20006">Books & Media</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10055">Books</a></li>
								<li><a href="dealsByCateogry?categoryId=10056">eLearning</a></li>
								<li><a href="dealsByCateogry?categoryId=10057">eBooks & ePrints</a></li>
								<li><a href="dealsByCateogry?categoryId=10058">Music</a></li>
								<li><a href="dealsByCateogry?categoryId=10059">Movies & TV Shows</a></li>
								<li><a href="dealsByCateogry?categoryId=10060">Gaming</a></li>
								<li><a href="dealsByCateogry?categoryId=10061">Stationary</a></li>
								<li><a href="dealsByCateogry?categoryId=10062">Office Equipments</a></li>
								<li><a href="dealsByCateogry?categoryId=10063">Exam Supplies</a></li>
							</ul></li>
						<li><a href="dealsByCateogry?categoryId=20007">Sports</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10064">Sports Clothing</a></li>
								<li><a href="dealsByCateogry?categoryId=10065">Sports Footwear</a></li>
								<li><a href="dealsByCateogry?categoryId=10066">Fitness & BodyBuilding</a></li>
								<li><a href="dealsByCateogry?categoryId=10067">Cardio Equipments</a></li>
								<li><a href="dealsByCateogry?categoryId=10068">Sports</a></li>
								<li><a href="dealsByCateogry?categoryId=10069">Outdoors</a></li>
							</ul></li>
						<li><a href="dealsByCateogry?categoryId=20008">BIke & Car Spares</a>
							<ul>
								<li><a href="dealsByCateogry?categoryId=10070">Car Essentials</a></li>
								<li><a href="dealsByCateogry?categoryId=10071">Bike Essentials</a></li>
								<li><a href="dealsByCateogry?categoryId=10072">Car Electronics</a></li>
								<li><a href="dealsByCateogry?categoryId=10073">Tyres</a></li>
								<li><a href="dealsByCateogry?categoryId=10074">Lighting</a></li>
								<li><a href="dealsByCateogry?categoryId=10075">Styling</a></li>
								<li><a href="dealsByCateogry?categoryId=10076">Spares & Equipment</a></li>
								<li><a href="dealsByCateogry?categoryId=10077">Lubricants & Oils</a></li>
								<li><a href="dealsByCateogry?categoryId=10078">Helmets</a></li>
								<li><a href="dealsByCateogry?categoryId=10079">Vehicle Covers</a></li>
								<li><a href="dealsByCateogry?categoryId=10080">Washing & Cleaning</a></li>
								<li><a href="dealsByCateogry?categoryId=10081">Breakdown Equipment</a></li>
								<li><a href="dealsByCateogry?categoryId=10082">Car Freshness</a></li>
							</ul></li>
					</ul></li>
				<li><a href='cupons'>Coupons</a></li>
				<li><a href='hotDeals'>Hot Deals</a></li>
				<li><a href='travelDeals'>Travel Deals</a></li>
				<li><a href='clearanceDeals'>Clearance Sales</a></li>
				<li><a href="postDeal">Submit Deal</a></li>
				<li style="float: right;">
					<form>
						<input type="search" placeholder="Search Prodcuts">
					</form>
				</li>
			</ul>
		</div>
		<!--- Nav Menu end ---->



	</div>
	<!--- Menu Wrapper End --->
</div>
<!--- Header Wrapper Closed --->