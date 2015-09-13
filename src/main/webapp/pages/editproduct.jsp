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
        <a class="logo" href="index.html"><img src="img/logo.png" alt="Aquarius -  responsive admin panel" title="Aquarius -  responsive admin panel"/></a>
        <ul class="header_menu">
            <li class="list_icon"><a href="#">&nbsp;</a></li>
        </ul>    
    </div>
    
    <div class="menu">                
        
        <div class="breadLine">            
            <div class="arrow"></div>
            <div class="adminControl active">
                Hi, User
            </div>
        </div>
        
        <div class="admin">
            <div class="image">
                <img src="img/users/User.jpg" class="img-polaroid"/>                
            </div>
            <ul class="control">                
                <li><span class="icon-comment"></span> <a href="messages.html">Messages</a> <a href="messages.html" class="caption red">12</a></li>
                <li><span class="icon-cog"></span> <a href="forms.html">Settings</a></li>
                <li><span class="icon-share-alt"></span> <a href="login.html">Logout</a></li>
            </ul>
            <div class="info">
                <span>Welcom back! Your last visit: 24.10.2012 in 19:55</span>
            </div>
        </div>
        
      <ul class="navigation">            
              <li class="openable">
                <a href="#">
                    <span class="isw-list"></span><span class="text">Products</span>
                </a>
                <ul>
                    <li>
                        <a href="allproducts.html">
                            <span class="icon-th"></span><span class="text">All Products</span>
                        </a>                  
                    </li>      
                    <li>
                        <a href="newproduct.html">
                            <span class="icon-th-large"></span><span class="text">New Product</span>
                        </a>                  
                    </li>                    
                </ul>                
            </li>          
        </ul>
               
        <div class="dr"><span></span></div>
          
        <div class="widget-fluid">
            <div id="menuDatepicker"></div>
        </div>
        
        <div class="dr"><span></span></div>
        
        <div class="widget">

            <div class="input-append">
                <input id="appendedInputButton" style="width: 118px;" type="text"><button class="btn" type="button">Search</button>
            </div>            
            
        </div>
        
        <div class="dr"><span></span></div>        

        </div>
        
    <div class="content">
        
        
        <div class="breadLine">
            
            <ul class="breadcrumb">
                <li><a href="#">Simple Admin</a> <span class="divider">></span></li>                
                <li class="active">Forms stuff</li>
            </ul>
                        
            <ul class="buttons">
                <li>
                    <a href="#" class="link_bcPopupList"><span class="icon-user"></span><span class="text">Users list</span></a>

                    <div id="bcPopupList" class="popup">
                        <div class="head clearfix">
                            <div class="arrow"></div>
                            <span class="isw-users"></span>
                            <span class="name">List users</span>
                        </div>
                        <div class="body-fluid users">

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/User_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">User</a>                                    
                                    <span>online</span>
                                </div>
                            </div>

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/olga_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Olga</a>                                
                                    <span>online</span>
                                </div>
                            </div>                        

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/alexey_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexey</a>  
                                    <span>online</span>
                                </div>
                            </div>                              
                        
                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/dmitry_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Dmitry</a>                                    
                                    <span>online</span>
                                </div>
                            </div>                         

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/helen_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Helen</a>                                                                        
                                </div>
                            </div>                                  

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/alexander_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexander</a>                                                                        
                                </div>
                            </div>                                  

                        </div>
                        <div class="footer">
                            <button class="btn" type="button">Add new</button>
                            <button class="btn btn-danger link_bcPopupList" type="button">Close</button>
                        </div>
                    </div>                    
                    
                </li>                
                <li>
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
            
        </div>
        
        <div class="workplace">

            <div class="row-fluid">
                
                <div class="span8">
                    <div class="head clearfix">
                        <div class="isw-list"></div>
                        <h1>Edit Product</h1>
                    </div>
                    <div class="block-fluid">                        
                    <div class="row-form clearfix">
                            <div class="span2">Product Name:</div>
                            <div class="span9">
                            <input type="text" placeholder="Product Name..."/>			</div>
                        </div>                                                               

						<div class="row-form clearfix">
                            <div class="span2">Description:</div>
                            <div class="span9">
                            <textarea id="wysiwyg" name="text" style="height: 300px;"></textarea>
                            </div>
                        </div>  
                        
                         <div class="row-form clearfix">
                            <div class="span2">Destination URL:</div>
                            <div class="span9">
                            <input type="text" placeholder="Destination URL..."/>			</div>
                        </div>                                                               
                        
						 <div class="row-form clearfix">
                            <div class="span2">Vendor Name:</div>
                            <div class="span9">
                            <input type="text" placeholder="Vendor Name..."/></div>
                        </div>                                                               
						
                         <div class="row-form clearfix">
                            <div class="span2">Actual Price:</div>
                            <div class="span9">
                            <input type="text" placeholder="Actual Price..."/></div>
                        </div>                                                               
						
                        <div class="row-form clearfix">
                            <div class="span2">Sale Price:</div>
                            <div class="span9">
                            <input type="text" placeholder="Sale Price..."/></div>
                        </div>                                                               
						
                        <div class="row-form clearfix">
                            <div class="span2">Coupon Code:</div>
                            <div class="span9">
                            <input type="text" placeholder="Coupon Code..."/></div>
                        </div>                                                               

                        <div class="row-form clearfix">
                            <div class="span2">Hot Deals:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="hotdeal"/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="hotdeal" checked="checked"/>No
                                </label>
                            </div>
                        </div>                         

                        <div class="row-form clearfix">
                            <div class="span2">Clearance Sales:</div>
                            <div class="span3">
                                <label class="checkbox inline">
                                    <input type="radio" name="clearsale"/>Yes
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="clearsale" checked="checked"/>No
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
                                    <input type="radio" name="review" checked="checked"/>Approved
                                </label>
                                <label class="checkbox inline">
                                    <input type="radio" name="review"/>Reject
                                </label>
                            </div>
                        </div>                         

                    <div class="block" style="padding-left:130px;">                           
                        <a href="#dModal" role="button" class="btn" data-toggle="modal">Submit</a>
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
            
            <div class="dr"><span></span></div>            
        
        </div>
        
    </div>   
    
</body>
</html>
