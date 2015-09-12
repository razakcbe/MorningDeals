<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Morning Deals</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="editors/tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script> -->
<script type="text/javascript" src="js/jquery.bpopup.min.js"></script>

<script type="text/javascript">
        tinymce.init({
            selector: "#pmessage"
          
        });
        
        $(function() {
            
        	/* $('#jayaram-form').validate({ // initialize the plugin
        	    }); */
        	
            $('#submitbtn').bind('click', function(e) {
                 // Prevents the default action to be triggered. 
                 e.preventDefault();
 				var input = createRequestParameterMap();
                 $.ajax({
     				url : $("#jayaram-form").attr("action"),
     				type : "POST",
     				contentType: "application/json;",
     				data: JSON.stringify(input),
     				success : function(response,textStatus) {
     				      $('#element_to_pop_up').bPopup({
     		                	modalClose: false,
     		                     opacity: 0.6,
     		                     positionStyle: 'fixed' //'fixed' or 'absolute'
     		                    });
     				},
     				error : function(xhr, status, error) {
     					//Error Handling
     				}
     			});
             });
             
            function createRequestParameterMap(){
               	var requestParam ={};
               	requestParam["pname"]=  document.getElementById('pname1').value;
               	requestParam["pmessage"]= tinyMCE.get('pmessage').getContent();
               	requestParam["imageURL"]=  document.getElementById('imageURL').value;
               	requestParam["destinationURL"]=  document.getElementById('destinationURL').value;
               	requestParam["categoryId"]=  document.getElementById('categoryId').value;
               	requestParam["vname"]=  document.getElementById('vname').value;
               	requestParam["aprice"]=  document.getElementById('price').value;
               	requestParam["sprice"]=  document.getElementById('price1').value;
               	requestParam["coupon"]=  document.getElementById('coupon').value;
               	requestParam["hotdealsid"]= $('input[name=hotdealsid]:checked').val();
               	requestParam["populardealsid"]= $('input[name=populardealsid]:checked').val();
               	requestParam["clearncesaleid"]=  $('input[name=clearncesaleid]:checked').val();
               	return requestParam;
                 }
             
         });
        
      </script>
<style>
#element_to_pop_up { 
    background-color:#fff;
    border-radius:15px;
    color:#000;
    display:none; 
    padding:20px;
    min-width:400px;
    min-height: 180px;
}
.b-close{
    cursor:pointer;
    position:absolute;
    right:10px;
    top:5px;
}
</style>
<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<div id="element_to_pop_up">
    <a class="b-close">X<a/>
 
</div>
<%-- <h1  class="active">${message}</h1> --%>
<div class="main-content">

<div class="main-content1">

<form name="jayaram" id="jayaram-form" action="createDeal"> 
<%-- <form name="jayaram" id="jayaram-form" method="post" action="createDeal">   --%>    		

<div id="wrapping" class="clearfix">
<section id="aligned">
<input type="text" name="pname" id="pname1" placeholder="Product Name" autocomplete="off" tabindex="1" class="txtinput" required>
<textarea name="pmessage" id="pmessage" placeholder="Product Description" tabindex="2" class="txtblock"></textarea>
<input type="url" name="imageURL" id="imageURL" placeholder="Image URL" autocomplete="off" tabindex="3" class="txtinput" required>
<input type="url" name="destinationURL" id="destinationURL" placeholder="Destination URL" autocomplete="off" tabindex="4" class="txtinput" required>
<input type="tel" name="categoryId" id="categoryId" placeholder="Category Id" tabindex="5" class="txtinput" required>
<input type="text" name="vname" id="vname" placeholder="Vendor Name" autocomplete="off" tabindex="6" class="txtinput" required>
<input type="tel" name="aprice" id="price" placeholder="Actual price" tabindex="7" class="txtinput" required>
<input type="tel" name="sprice" id="price1" placeholder="Sale price" tabindex="8" class="txtinput"required>
<input type="text" name="coupon" id="coupon" placeholder="Coupon Code" autocomplete="off" tabindex="9" class="txtinput">
<!-- <input type="text" name="displayOrder" id="displayOrder" placeholder="Display Order" autocomplete="off" tabindex="17" class="txtinput"> -->

<div id="radiobutton">
<div id="radiobtn_left">
<label for="hotdeals">Hot Deals:</label>&nbsp;
<input type="radio" name="hotdealsid" id="hotdealsyes" value="Yes" autocomplete="off" tabindex="10" >Yes&nbsp;
<input type="radio" name="hotdealsid" id="hotdealsno" value="No" autocomplete="off" tabindex="11" > No
</div>
<div id="radiobtn_middle">
<label for="hotdeals">Popular Deals:</label>&nbsp;
<input type="radio" name="populardealsid" id="populardealsyes" value="Yes" autocomplete="off" tabindex="12" >Yes&nbsp;
<input type="radio" name="populardealsid" id="populardealsno" value="No" autocomplete="off" tabindex="13" > No
</div>
<div id="radiobtn_right">
<label for="hotdeals">Clearnce Sale:</label>&nbsp;
<input type="radio" name="clearncesaleid" id="clearncesaleyes" value="Yes" autocomplete="off" tabindex="14" >Yes&nbsp;
<input type="radio" name="clearncesaleid" id="clearncesaleidno" value="No" autocomplete="off" tabindex="15" > No
</div>
</div>

<div id="fileupload">
<!-- <input type="file" name="fileupload"   id="fileupload" placeholder="File Upload" autocomplete="off" tabindex="16" class="txtinput"> -->
<section id="buttons">
<input type="reset" name="reset" id="resetbtn" class="resetbtn" value="Reset">
			
<input type="submit" name="submit" id="submitbtn" class="submitbtn" tabindex="9" value="Submit">
		<br style="clear:both;">
		
</section>
	

</div></div>
 
</form>
</section>
</div> 
</div>
</body>
</html>