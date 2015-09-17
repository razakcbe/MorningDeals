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
                        <div class="isw-grid"></div>
                        <h1>Deals Posted</h1>                               
                    </div>
                    <div class="block-fluid table-sorting clearfix">

            
	<div id="tablewrapper">
		<div id="tableheader">
        	<div class="search">
                <select id="columns" onchange="sorter.search('query')"></select>
                <input type="text" id="query" placeholder="Search Items" onkeyup="sorter.search('query')" />
             </div>
            
            <span class="details">
                <div>Records <span id="startrecord"></span>-<span id="endrecord"></span> of <span id="totalrecords"></span></div>
        	</span>
        </div>
        <table cellpadding="0" cellspacing="0"  border="0" id="table" class="tinytable">
            <thead>
                <tr>
                    <th class="nosort"><h3>Prodcut ID</h3></th>
                    <th class="nosort"><h3>Product Name</h3></th>
                    <th class="nosort"><h3>Vendor Name</h3></th>
                    <th class="nosort"><h3>Date</h3></th>
                    <th class="nosort"><h3>Actual Price</h3></th>
                    <th class="nosort"><h3>Sale Price</h3></th>
                    <th class="nosort"><h3>Edit/Delete</h3></th>
                </tr>
            </thead>
            <tbody>
            
            <c:forEach var="listValue" items="${allDeals}">
            <tr>
            
                    <td>${listValue.productId}</td>
                    <td>${listValue.productName}</td>
                    <td>${listValue.vendorName}</td>
                    <td>${listValue.postedDate}</td>
                    <td>&#8377;${listValue.actualPrice}</td>
                    <td>&#8377;${listValue.salePrice}</td>
                    <td>
                    <a href="updateproduct?dealId=${listValue.productId}" class="buttons edit"></a>
			       <a href="#bModal" role="button" class="buttons delete" data-toggle="modal"></a>
				   </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div id="tablefooter">
          <div id="tablenav">
            	<div>
                    <img src="img/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" />
                    <img src="img/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" />
                    <img src="img/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" />
                    <img src="img/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" />
                </div>
                <div>
                	<select id="pagedropdown"></select>
				</div>
                <div>
                	<a href="javascript:sorter.showall()">view all</a>
                </div>
            </div>
			<div id="tablelocation">
            	<div>
                    <p style="float:left; padding-top:5px; padding-right:5px;">Entries Per Page</p>
                    <select onchange="sorter.size(this.value)" style="width:60px;">
                    <option value="5">5</option>
                        <option value="10" selected="selected">10</option>
                        <option value="20">20</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                </div>
                <div class="page">Page <span id="currentpage"></span> of <span id="totalpages"></span></div>
            </div>
        </div>
    </div>

	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript">
	var sorter = new TINY.table.sorter('sorter','table',{
		headclass:'head',
		ascclass:'asc',
		descclass:'desc',
		evenclass:'evenrow',
		oddclass:'oddrow',
		evenselclass:'evenselected',
		oddselclass:'oddselected',
		paginate:true,
		size:10,
		colddid:'columns',
		currentid:'currentpage',
		totalid:'totalpages',
		startingrecid:'startrecord',
		endingrecid:'endrecord',
		totalrecid:'totalrecords',
		hoverid:'selectedrow',
		pageddid:'pagedropdown',
		navid:'tablenav',
		sortcolumn:1,
		sortdir:1,
		sum:[8],
		avg:[6,7,8,9],
		columns:[{index:7, format:'%', decimals:1},{index:8, format:'$', decimals:0}],
		init:true
	});
  </script>
</div>
</div>
</div>
<!-- Bootrstrap modal -->
    <div id="bModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Morning Deals</h3>
        </div>
        <div class="modal-body">
            <p>Are You Sure to Delete This Product... Please Confirm...</p>
        </div>
        <div class="modal-footer">
            <button class="btn btn-warning" data-dismiss="modal" aria-hidden="true">Delete</button> 
            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>            
        </div>
    </div>                            

            <div class="dr"><span></span></div>            
        </div>
    </div>   
</body>
</html>
