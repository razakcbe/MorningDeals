
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>        
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <!--[if gt IE 8]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <![endif]-->

    <title>Morning Deals</title>

    <link rel="icon" type="image/ico" href="favicon.ico"/>
    
    <link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 8]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />
    <![endif]-->    
    <link rel='stylesheet' type='text/css' href='css/fullcalendar.print.css' media='print' />
    
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js'></script>
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js'></script>
    <script type='text/javascript' src='js/plugins/jquery/jquery.mousewheel.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/cookie/jquery.cookies.2.2.0.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/bootstrap.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/charts/jquery.flot.js'></script>    
    <script type='text/javascript' src='js/plugins/charts/jquery.flot.stack.js'></script>    
    <script type='text/javascript' src='js/plugins/charts/jquery.flot.pie.js'></script>
    <script type='text/javascript' src='js/plugins/charts/jquery.flot.resize.js'></script>
    
    <script type='text/javascript' src='js/plugins/sparklines/jquery.sparkline.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/fullcalendar/fullcalendar.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/select2/select2.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/uniform/uniform.js'></script>
    
    <script type='text/javascript' src='js/plugins/maskedinput/jquery.maskedinput-1.3.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/validation/languages/jquery.validationEngine-en.js' charset='utf-8'></script>
    <script type='text/javascript' src='js/plugins/validation/jquery.validationEngine.js' charset='utf-8'></script>
    
    <script type='text/javascript' src='js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js'></script>
    <script type='text/javascript' src='js/plugins/animatedprogressbar/animated_progressbar.js'></script>
    
    <script type='text/javascript' src='js/plugins/qtip/jquery.qtip-1.0.0-rc3.min.js'></script>
    
    <script type='text/javascript' src='js/plugins/cleditor/jquery.cleditor.js'></script>
    
    <script type='text/javascript' src='js/plugins/dataTables/jquery.dataTables.min.js'></script>    
    
    <script type='text/javascript' src='js/plugins/fancybox/jquery.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='js/cookies.js'></script>
    <script type='text/javascript' src='js/actions.js'></script>
    <script type='text/javascript' src='js/charts.js'></script>
    <script type='text/javascript' src='js/plugins.js'></script>
    
</head>
<body>
    
    <div class="header">
        <a class="logo" href="#"><img src="img/logo.png" alt="Aquarius -  responsive admin panel" title="Aquarius -  responsive admin panel"/></a>
        <ul class="header_menu">
            <li class="list_icon"><a href="#">&nbsp;</a></li>
        </ul>    
    </div>
    
    <div class="menu">                
        
        <div class="breadLine">            
            <div class="arrow"></div>
            <div class="adminControl active">
                Hi, ${userVO.userName}
            </div>
        </div>
        
        <div class="admin">
            <!-- <div class="image">
                <img src="img/users/User.jpg" class="img-polaroid"/>                
            </div>-->
            <ul class="control">                
                <!-- <li><span class="icon-comment"></span> <a href="messages.html">Messages</a> <a href="messages.html" class="caption red">12</a></li>
                 <li><span class="icon-cog"></span> <a href="forms.html">Settings</a></li> -->
                <li><span class="icon-share-alt"></span> <a href="logout">Logout</a></li> 
            </ul> 
            <!-- <div class="info">
                <span>Welcom back! Your last visit: 24.10.2012 in 19:55</span>
            </div> -->
        </div>
        
   <ul class="navigation">            
              <li class="openable">
                <a href="#">
                    <span class="isw-list"></span><span class="text">Products</span>
                </a>
                <ul>
                    <li>
                        <a href="allproducts">
                            <span class="icon-th"></span><span class="text">All Products</span>
                        </a>                  
                    </li>      
                    <li>
                        <a href="newproduct">
                            <span class="icon-th-large"></span><span class="text">New Product</span>
                        </a>                  
                    </li>                    
                </ul>                
            </li>          
        </ul>
               
        <!-- <div class="dr"><span></span></div>
        
         <div class="widget-fluid">
            <div id="menuDatepicker"></div>
        </div>
        
        <div class="dr"><span></span></div>
        
        <div class="widget">

            <div class="input-append">
                <input id="appendedInputButton" style="width: 118px;" type="text"><button class="btn" type="button">Search</button>
            </div>            
            
        </div> -->
        
        <div class="dr"><span></span></div>        
 
    </div>
        
    <div class="content">
        
        
        <div class="breadLine">
            
            <ul class="breadcrumb">
                <li><a href="#">Admin</a> <span class="divider">></span></li>                
                <!-- <li class="active">Forms stuff</li> -->
            </ul>
              
            <ul class="buttons">
              
              <c:if test="${not empty userVOList}">
                <li>
                    <a href="#" class="link_bcPopupList"><span class="icon-user"></span><span class="text">Users list</span></a>

                    <div id="bcPopupList" class="popup">
                        <div class="head clearfix">
                            <div class="arrow"></div>
                            <span class="isw-users"></span>
                            <span class="name">List users</span>
                        </div>
                        <div class="body-fluid users">

    						<c:forEach var="listValue" items="${userVOList}">
    						<div class="item clearfix">
                                <div class="info">
                                    <a href="#" class="name"> ${listValue.userName }</a> 
                                </div>
                            </div>
    						</c:forEach>
                            <div class="footer">
                            <button class="btn" type="button">Add new</button>
                            <button class="btn btn-danger link_bcPopupList" type="button">Close</button>
                        </div>
                    </div>                    
                    
                </li>
               </c:if>                
                <!-- <li>
                    <a href="#" class="link_bcPopupSearch"><span class="icon-search"></span><span class="text">Search</span></a>
                    
                    <div id="bcPopupSearch" class="popup">
                        <div class="head clearfix">
                            <div class="arrow"></div>
                            <span class="isw-zoom"></span>
                            <span class="name">Search</span>
                        </div>
                        <div class="body search">
                            <input type="text" placeholder="Some text for search..." name="search"/>
                        </div>
                        <div class="footer">
                            <button class="btn" type="button">Search</button>
                            <button class="btn btn-danger link_bcPopupSearch" type="button">Close</button>
                        </div>
                    </div>                
                </li>
            </ul>
 -->            
        </div>
        
        <div class="workplace">

            <div class="row-fluid">
                
                <div class="span12">
                    <div class="head clearfix">
                        <div class="isw-list"></div>
                        <h1>New Product</h1>
                    </div>
                    <form name="jayaram" id="jayaram-form" method="post" action="createProductAdmin">
                    <div class="block-fluid">
                    	<div class="row-form clearfix">
                            <div class="span2">Product Name:</div>
                            <div class="span10">
                           <input type="text" name="pname" id="pname1" placeholder="Product Name" autocomplete="off" tabindex="1" required />
                            </div>
                        </div>                        
                       
						<div class="row-form clearfix">
                            <div class="span2">Description:</div>
                            <div class="span10">
                            <textarea name="pmessage" id="pmessage" placeholder="Product Description..." tabindex="2" style="height: 300px;"></textarea><br/>	
                            </div>
                        </div>  
						
						<div class="row-form clearfix">
                            <div class="span2">Image URL:</div>
                            <div class="span10">
                           <input type="url" name="imageURL" id="imageURL" placeholder="Image URL.." autocomplete="off" tabindex="3" style="width: 100%;" required/>		</div>
                        </div>      
                                                
                         <div class="row-form clearfix">
                            <div class="span2">Destination URL:</div>
                            <div class="span10">
                            <input type="url" name="destinationURL" id="destinationURL" placeholder="Destination URL" autocomplete="off" tabindex="4" style="width: 100%;" required/>			</div>
                        </div>                                                               
                        
                         <div class="row-form clearfix">
                            <div class="span2">Select Category</div>
                            <div class="span10">
                                <select name="categoryId" id="categoryId" tabindex="5" style="width: 100%;">
                                    <option value="0">Select Your Category...</option>
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
                            </div>
                        </div>           

						 <div class="row-form clearfix">
                            <div class="span2">Vendor Name:</div>
                            <div class="span10">
                           <input type="text" name="vname" id="vname" placeholder="Vendor Name" autocomplete="off" tabindex="6" required/></div>
                        </div>                                                               
						
                         <div class="row-form clearfix">
                            <div class="span2">Actual Price:</div>
                            <div class="span10">
                            <input type="number" name="aprice" id="aprice" placeholder="Actual price" tabindex="7" required style="width: 100%;"/></div>
                        </div>                                                               
						
                        <div class="row-form clearfix">
                            <div class="span2">Sale Price:</div>
                            <div class="span10">
                            <input type="number" name="sprice" id="sprice" placeholder="Sale price" tabindex="8" required style="width: 100%;"/></div>
                        </div>                                                               
						
                        <div class="row-form clearfix">
                            <div class="span2">Coupon Code:</div>
                            <div class="span10">
                            <input type="text" name="coupon" id="coupon" placeholder="Coupon Code" autocomplete="off" tabindex="9" /></div>
                        </div>                                                               

                        <div class="row-form clearfix">
                            <div class="span2">Hot Deals:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="hotdealsid" id="hotdealsyes"/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="hotdealsid" id="hotdealsno" checked="checked"/>No
                                </label>
                            </div>
                        </div>                         

                        <div class="row-form clearfix">
                            <div class="span2">Travel Deals:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="populardealsid" id="populardealsyes"/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="populardealsid" id="populardealsno" checked="checked"/>No
                                </label>
                            </div>
                        </div>                         
	
						<div class="row-form clearfix">
                            <div class="span2">Clearnce Sale:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="clearncesaleid" id="clearncesaleyes"/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="clearncesaleid" id="clearncesaleidno" checked="checked"/>No
                                </label>
                            </div>
                        </div> 
                        
                        <div class="row-form clearfix">
                            <div class="span3">Image Upload (optional):</div>
                            <div class="span7">                                                              
                                <input type="file" name="fileupload"   id="fileupload"/>
                            </div>
                        </div> 

                    <div class="block">                           
                       <!--  <a href="#dModal" role="button" type="submit" class="btn" data-toggle="modal">Submit</a>
                        <a href="#dModal" role="button" type="reset" class="btn" data-toggle="modal">Cancel</a> -->
                     	<input type="submit" name="osx" id="submitbtn" class="btn" tabindex="17" value="Submit">
						<input type="reset" name="reset" id="resetbtn" class="btn" value="Reset">
                    </div>

  <!-- Bootrstrap default dialog -->
    <div id="dModal" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Morning Deals</h3>
        </div>
        <div class="modal-body">
            <p>Thanks For Submitting</p>
        </div>
    </div>                      </div>
    </form>
                </div>

            </div>
            
            <div class="dr"><span></span></div>            
        </div>
    </div>   
</body>
</html>
