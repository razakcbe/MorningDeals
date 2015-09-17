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
   <link rel='stylesheet' type='text/css' href="css/tinytable.css"/>
    
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
                <li><span class="icon-share-alt"></span> <a href="login">Logout</a></li> 
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
 		<form name="jayaram" id="jayaram-form" method="post" action="doadminreview">
            <div class="row-fluid">
                
                <div class="span8">
                    <div class="head clearfix">
                        <div class="isw-list"></div>
                        <h1>Edit Product</h1>
                    </div>
                    <div class="block-fluid">
                    <input type="hidden" name="productId" value="${dealDetailsVO.productId}"/>                
                    <div class="row-form clearfix">
                            <div class="span2">Product Name:</div>
                            <div class="span9">
                            <input type="hidden" name="productId" value="${dealDetailsVO.productId}"/> 
                            <input type="text"name="pname" placeholder="Product Name..." value="${dealDetailsVO.productName}"/>			</div>
                        </div>                                                               

						<div class="row-form clearfix">
                            <div class="span2">Description:</div>
                            <div class="span9">
                            <textarea id="wysiwyg" name="pmessage" id="pmessage" style="height: 300px;">${dealDetailsVO.productDescription}</textarea>
                            </div>
                        </div>  
                        
                        <div class="row-form clearfix">
                           <div class="span2">Image URL:</div>
                            <div class="span9">
                            <input type="text" name="imageURL" id="imageURL" placeholder="Destination URL..." value="${dealDetailsVO.imageUrl}"/>			</div>
                        </div>   
                        
                         <div class="row-form clearfix">
                            <div class="span2">Destination URL:</div>
                            <div class="span9">
                            <input type="text" name="destinationURL" id="destinationURL" placeholder="Destination URL..." value="${dealDetailsVO.dealUrl}"/>			</div>
                        </div>                                                               
                        
                        <div class="row-form clearfix">
                            <div class="span2">Select Product</div>
                            <div class="span10">
                                <select name="categoryId" id="categoryId" tabindex="5" style="width: 100%;">
                                    <option value="0">Select Your Product...</option>
                                    <optgroup label="Electronics">
                                            <option value="10001" <c:if test="${dealDetailsVO.categoryId == '10001'}">selected</c:if>  >Mobile Accessories</option>
                                            <option value="10002" <c:if test="${dealDetailsVO.categoryId == '10002'}">selected</c:if>  >Laptops</option>
                                            <option value="10003" <c:if test="${dealDetailsVO.categoryId == '10003'}">selected</c:if>  >Tablet Accessories</option>
                                            <option value="10004" <c:if test="${dealDetailsVO.categoryId == '10004'}">selected</c:if>  >Computer Accessories</option>
                                            <option value="10005" <c:if test="${dealDetailsVO.categoryId == '10005'}">selected</c:if>  >Camera Accessories</option>
                                            <option value="10006" <c:if test="${dealDetailsVO.categoryId == '10006'}">selected</c:if>  >Audio & Video</option>
                                            <option value="10007" <c:if test="${dealDetailsVO.categoryId == '10007'}">selected</c:if>  >Gaming</option>
                                            <option value="10008" <c:if test="${dealDetailsVO.categoryId == '10008'}">selected</c:if>  >Televisions</option>
                                            <option value="10009" <c:if test="${dealDetailsVO.categoryId == '10009'}">selected</c:if>  >Large Appliances</option>
                                            <option value="10010" <c:if test="${dealDetailsVO.categoryId == '10010'}">selected</c:if>  >Small Appliances</option>
                                            <option value="10011" <c:if test="${dealDetailsVO.categoryId == '10011'}">selected</c:if>  >Kitchen Appliances</option>
                                            <option value="10012" <c:if test="${dealDetailsVO.categoryId == '10012'}">selected</c:if>  >Healthcare Appliances</option>                                    </optgroup>

                                    <optgroup label="Men">
                                            <option value="10013" <c:if test="${dealDetailsVO.categoryId == '10013'}">selected</c:if>  >Clothing</option>
                                            <option value="10014" <c:if test="${dealDetailsVO.categoryId == '10014'}">selected</c:if>  >Footwear</option>
                                            <option value="10015" <c:if test="${dealDetailsVO.categoryId == '10015'}">selected</c:if>  >Watches</option>
                                            <option value="10016" <c:if test="${dealDetailsVO.categoryId == '10015'}">selected</c:if>  >Men's Accessories</option>
                                            <option value="10017" <c:if test="${dealDetailsVO.categoryId == '10017'}">selected</c:if>  >Bags, Belts & Wallets</option>
                                            <option value="10018" <c:if test="${dealDetailsVO.categoryId == '10018'}">selected</c:if>  >Contact Lenses</option>
                                            <option value="10019" <c:if test="${dealDetailsVO.categoryId == '10019'}">selected</c:if>  >Sunglasses</option>
                                            <option value="10020" <c:if test="${dealDetailsVO.categoryId == '10020'}">selected</c:if>  >Spectacle Frames</option>
                                            <option value="10021" <c:if test="${dealDetailsVO.categoryId == '10021'}">selected</c:if>  >Fragrances</option>
                                            <option value="10022" <c:if test="${dealDetailsVO.categoryId == '10022'}">selected</c:if>  >Grooming & Wellness</option>
                                    </optgroup>
                                    <optgroup label="Women">
                                            <option value="10023" <c:if test="${dealDetailsVO.categoryId == '10023'}">selected</c:if>  >Clothing</option>
                                            <option value="10024" <c:if test="${dealDetailsVO.categoryId == '10024'}">selected</c:if>  >Footwear</option>
                                            <option value="10025" <c:if test="${dealDetailsVO.categoryId == '10025'}">selected</c:if>  >Watches</option>
                                            <option value="10026" <c:if test="${dealDetailsVO.categoryId == '10026'}">selected</c:if>  >Jewellery</option>
                                            <option value="10027" <c:if test="${dealDetailsVO.categoryId == '10027'}">selected</c:if>  >Bags, Belts & Wallets</option>
                                            <option value="10028" <c:if test="${dealDetailsVO.categoryId == '10028'}">selected</c:if>  >Contact Lenses</option>
                                            <option value="10029" <c:if test="${dealDetailsVO.categoryId == '10029'}">selected</c:if>  >Sunglasses</option>
                                            <option value="10030" <c:if test="${dealDetailsVO.categoryId == '10030'}">selected</c:if>  >Spectacle Frames</option>
                                            <option value="10031" <c:if test="${dealDetailsVO.categoryId == '10031'}">selected</c:if>  >Beauty & Personal Care</option>
                                            <option value="10032" <c:if test="${dealDetailsVO.categoryId == '10032'}">selected</c:if>  >Perfumes</option>
                                            <option value="10033" <c:if test="${dealDetailsVO.categoryId == '10033'}">selected</c:if>  >Wellness</option>                                    </optgroup>                                 

                                    <optgroup label="Baby Products">
                                            <option value="10034" <c:if test="${dealDetailsVO.categoryId == '10034'}">selected</c:if>  >Clothing</option>
                                            <option value="10035" <c:if test="${dealDetailsVO.categoryId == '10035'}">selected</c:if>  >Footwear</option>
                                            <option value="10036" <c:if test="${dealDetailsVO.categoryId == '10036'}">selected</c:if>  >Toys</option>
                                            <option value="10037" <c:if test="${dealDetailsVO.categoryId == '10037'}">selected</c:if>  >Baby Care</option>
                                            <option value="10038" <c:if test="${dealDetailsVO.categoryId == '10038'}">selected</c:if>  >School Supplies</option>
                                            <option value="10039" <c:if test="${dealDetailsVO.categoryId == '10039'}">selected</c:if>  >Kids Sports</option>
                                            <option value="10040" <c:if test="${dealDetailsVO.categoryId == '10040'}">selected</c:if>  >Watches</option>
                                            <option value="10041" <c:if test="${dealDetailsVO.categoryId == '10041'}">selected</c:if>  >Books</option>
                                            <option value="10042" <c:if test="${dealDetailsVO.categoryId == '10042'}">selected</c:if>  >Movies</option>
                                            <option value="10043" <c:if test="${dealDetailsVO.categoryId == '10043'}">selected</c:if>  >Sunglasses</option>
                                    </optgroup>                                 

                                    <optgroup label="Home Products">
                                            <option value="10044" <c:if test="${dealDetailsVO.categoryId == '10044'}">selected</c:if>  >Kitchen & Dining</option>
                                            <option value="10045" <c:if test="${dealDetailsVO.categoryId == '10045'}">selected</c:if>  >Home Furnishing</option>
                                            <option value="10046" <c:if test="${dealDetailsVO.categoryId == '10046'}">selected</c:if>  >Home Appliances</option>
                                            <option value="10047" <c:if test="${dealDetailsVO.categoryId == '10047'}">selected</c:if>  >Kitchen Appliances</option>
                                            <option value="10048" <c:if test="${dealDetailsVO.categoryId == '10048'}">selected</c:if>  >Furniture</option>
                                            <option value="10049" <c:if test="${dealDetailsVO.categoryId == '10049'}">selected</c:if>  >Tools & Hardware</option>
                                            <option value="10050" <c:if test="${dealDetailsVO.categoryId == '10050'}">selected</c:if>  >Home Specials</option>
                                            <option value="10051" <c:if test="${dealDetailsVO.categoryId == '10051'}">selected</c:if>  >Bath Essential</option>
                                            <option value="10052" <c:if test="${dealDetailsVO.categoryId == '10052'}">selected</c:if>  >Household Supplies</option>
                                            <option value="10053" <c:if test="${dealDetailsVO.categoryId == '10053'}">selected</c:if>  >Housekeeping & Laundry</option>
                                            <option value="10054" <c:if test="${dealDetailsVO.categoryId == '10054'}">selected</c:if>  >Pet Supplies</option>
                                     </optgroup>                                 

                                    <optgroup label="Book & Media">
                                            <option value="10055" <c:if test="${dealDetailsVO.categoryId == '10055'}">selected</c:if>  >Books</option>
                                            <option value="10056" <c:if test="${dealDetailsVO.categoryId == '10056'}">selected</c:if>  >eLearning</option>
                                            <option value="10057" <c:if test="${dealDetailsVO.categoryId == '10057'}">selected</c:if>  >eBooks & ePrints</option>
                                            <option value="10058" <c:if test="${dealDetailsVO.categoryId == '10058'}">selected</c:if>  >Music</option>
                                            <option value="10059" <c:if test="${dealDetailsVO.categoryId == '10059'}">selected</c:if>  >Movies & TV Shows</option>
                                            <option value="10060" <c:if test="${dealDetailsVO.categoryId == '10060'}">selected</c:if>  >Gaming</option>
                                            <option value="10061" <c:if test="${dealDetailsVO.categoryId == '10061'}">selected</c:if>  >Stationary</option>
                                            <option value="10062" <c:if test="${dealDetailsVO.categoryId == '10062'}">selected</c:if>  >Office Equipments</option>
											<option value="10063" <c:if test="${dealDetailsVO.categoryId == '10063'}">selected</c:if>  >Exam Supplies</option>
                                    </optgroup>                                 

                                    <optgroup label="Sports">
											<option value="10064" <c:if test="${dealDetailsVO.categoryId == '10064'}">selected</c:if>  >Sports Clothing</option>
											<option value="10065" <c:if test="${dealDetailsVO.categoryId == '10065'}">selected</c:if>  >Sports Footwear</option>
											<option value="10066" <c:if test="${dealDetailsVO.categoryId == '10066'}">selected</c:if>  >Fitness & BodyBuilding</option>
											<option value="10067" <c:if test="${dealDetailsVO.categoryId == '10067'}">selected</c:if>  >Cardio Equipments</option>
											<option value="10068" <c:if test="${dealDetailsVO.categoryId == '10068'}">selected</c:if>  >Sports</option>
											<option value="10069" <c:if test="${dealDetailsVO.categoryId == '10069'}">selected</c:if>  >Outdoors</option>                                    </optgroup>                                 

                                    <optgroup label="Bike & Car Spares">
											<option value="10070" <c:if test="${dealDetailsVO.categoryId == '10070'}">selected</c:if>  >Car Essentials</option>
											<option value="10071" <c:if test="${dealDetailsVO.categoryId == '10071'}">selected</c:if>  >Bike Essentials</option>
											<option value="10072" <c:if test="${dealDetailsVO.categoryId == '10072'}">selected</c:if>  >Car Electronics</option>
											<option value="10073" <c:if test="${dealDetailsVO.categoryId == '10073'}">selected</c:if>  >Tyres</option>
											<option value="10074" <c:if test="${dealDetailsVO.categoryId == '10074'}">selected</c:if>  >Lighting</option>
											<option value="10075" <c:if test="${dealDetailsVO.categoryId == '10075'}">selected</c:if>  >Styling</option>
											<option value="10076" <c:if test="${dealDetailsVO.categoryId == '10076'}">selected</c:if>  >Spares & Equipment</option>
											<option value="10077" <c:if test="${dealDetailsVO.categoryId == '10077'}">selected</c:if>  >Lubricants & Oils</option>
											<option value="10078" <c:if test="${dealDetailsVO.categoryId == '10078'}">selected</c:if>  >Helmets & Protective Wear</option>
											<option value="10079" <c:if test="${dealDetailsVO.categoryId == '10079'}">selected</c:if>  >Vehicle Covers</option>
											<option value="10080" <c:if test="${dealDetailsVO.categoryId == '10080'}">selected</c:if>  >Washing & Cleaning</option>
											<option value="10081" <c:if test="${dealDetailsVO.categoryId == '10081'}">selected</c:if>  >Breakdown Equipment</option>
											<option value="10082" <c:if test="${dealDetailsVO.categoryId == '10082'}">selected</c:if>  >Car Freshness</option>
                                    </optgroup>                                
                                </select>
                            </div>
                        </div>           
                        
						 <div class="row-form clearfix">
                            <div class="span2">Vendor Name:</div>
                            <div class="span9">
                            <input type="text" name="vname" id="vname" placeholder="Vendor Name..." value="${dealDetailsVO.vendorName}"/></div>
                        </div>                                                               
						
                         <div class="row-form clearfix">
                            <div class="span2">Actual Price:</div>
                            <div class="span9">
                            <input type="text" name="aprice" id="aprice" placeholder="Actual Price..." value="${dealDetailsVO.actualPrice}"/></div>
                        </div>                                                               
						
                        <div class="row-form clearfix">
                            <div class="span2">Sale Price:</div>
                            <div class="span9">
                            <input type="text" name="sprice" id="sprice" placeholder="Sale Price..." value="${dealDetailsVO.salePrice}"/></div>
                        </div>                                                               
						
                        <div class="row-form clearfix">
                            <div class="span2">Coupon Code:</div>
                            <div class="span9">
                            <input type="text" name="coupon" id="coupon" placeholder="Coupon Code..." value="${dealDetailsVO.cuponCode}" /></div>
                        </div>                                                               

                        <div class="row-form clearfix">
                            <div class="span2">Hot Deals:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="hotdealsid" id="hotdealsyes" <c:if test="${dealDetailsVO.hotDeal == 'Y'}">checked=true</c:if> />Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="hotdealsid" id="hotdealsno" <c:if test="${dealDetailsVO.hotDeal == 'N'}">checked=true</c:if> />No
                                </label>
                            </div>
                        </div>                         

						 <div class="row-form clearfix">
                            <div class="span2">Popular Deals:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="populardealsid" id="populardealsyes" <c:if test="${dealDetailsVO.popularDeal == 'Y'}">checked=true</c:if>/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="populardealsid" id="populardealsno" <c:if test="${dealDetailsVO.popularDeal == 'N'}">checked=true</c:if> />No
                                </label>
                            </div>
                        </div>    
                        
                        <div class="row-form clearfix">
                            <div class="span2">Clearance Sales:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="clearncesaleid" id="clearncesaleyes" <c:if test="${dealDetailsVO.clearanceDeal == 'Y'}">checked=true</c:if>/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="clearncesaleid" id="clearncesaleidno" <c:if test="${dealDetailsVO.clearanceDeal == 'N'}">checked=true</c:if>/>No
                                </label>
                            </div>
                        </div>                         

                        <div class="row-form clearfix">
                            <div class="span3">Image Upload (optional):</div>
                            <div class="span7">                                                              
                                <input type="file" name="file"/>
                            </div>
                        </div> 

                    </div>
                </div>

                <div class="span4">
                    <div class="head clearfix">
                        <div class="isw-target"></div>
                        <h1>Review Product</h1>
                    </div>
                    <div class="block-fluid">                        
                        
                        <div class="row-form clearfix">
                            <div class="span2">Review:</div>
                            <div class="span8">
                                <label class="checkbox inline">
                                    <input type="radio" name="status" value="A" checked="checked"/>Approved
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" value="R" name="status"/>Reject
                                </label>
                            </div>
                        </div>                         

                    <div class="block" style="padding-left:130px;">                           
                       <!--  <a href="#dModal" role="button" class="btn" data-toggle="modal">Submit</a> -->
                        <input type="submit" name="osx" id="submitbtn" class="btn" value="Submit">
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
    </div>      
                    </div>
                </div>                
                
            </div>
            </form>
            <div class="dr"><span></span></div>            
        
        </div>
    </div>   
</body>
</html>
