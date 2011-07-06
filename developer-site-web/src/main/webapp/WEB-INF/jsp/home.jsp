<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="misc" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <misc:title value="Home" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/lib.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
</head>

<body>
    <div class="header">
        <div class="wrapper">
		    <a href="http://www.bring.no/hele-bring/forside">
		        <img title="bring.no" src="img/logo.png" id="logo-screen" alt="bring.no" />
		    </a>
	    </div>
    </div>
    
    <div class="wrapper group main">
	    <div class="showcase box"></div>
	    
	    <div class="learn box">
            <div class="box-header">
               <h2 class="box-title">LEARN</h2>
               <span class="box-subtitle">
                   TUTORIALS, EXAMPLES, API REFERENCE
               </span>
           </div>
           <div class="box-content">
	           <div class="box-text">
	            <q>
	                By using Bring APIs we can let our customers choose their preferred
	                shipping method, making it even more convenient to shop with us online.
	            </q>
	            Elton John - CTO
	           </div>
	           <div>
	               Komplett.no
	           </div>
           </div>
        </div>
	    
		<div class="download box">
            <div class="box-header">
	            <h2 class="box-title">DOWNLOAD</h2>
	            <span class="box-subtitle">
	                PLUGINS, WIDGETS, SDK
	            </span>
            </div>
            <div class="box-content">
	            <h3 class="dropdown">
	                Popular widgets
	            </h3>
	            <div class="group">
		            <div class="widget-preview">
		                <h4 class="widget-title">IN-MAP TRACKING</h4>
		                <p class="widget-preview-content">Blabla bal bal baba.</p>
		            </div>
		            <div class="widget-preview">
		                <h4 class="widget-title">PRICE ESTIMATE</h4>
		                <p class="widget-preview-content">Blabla bal bal baba.</p>
		            </div>
	            </div>
	       </div>
		</div>
		
        <div class="talk box">
		 <div class="box-header">
               <h2 class="box-title">TALK</h2>
               <span class="box-subtitle">
                   ASK, WRITE, CODE, SHARE
               </span>
           </div>
           <div class="box-content">
                <ul class="question-list">
                    <li class="question-list group">
	                    <img class="question-list" width="50" height="50" src="img/logo.png" />
	                    <div class="question">
	                        How do I integrate the shipping guide in my
	                        Neverland giftshop? 
	                    </div>
	                </li>
	                <li class="question-list group">
	                   <div class="question">
	                       +View all 6 answers
	                   </div>
	                </li>
                </ul>
                <div class="box-text">
                    @Bring API GitHub GetSatisfaction
                </div>
           </div>
        </div>
	</div>
	
	<div class="footer">
	   <div class="wrapper">
	       Copyright Posten Norge AS - Privacy Policy
	   </div>
	</div>
</body>

</html>