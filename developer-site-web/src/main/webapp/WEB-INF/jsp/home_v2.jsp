<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="misc" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="menutabs" tagdir="/WEB-INF/tags/menutabs"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

<head>
    <link rel="stylesheet" href="css/guidelines.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/bring.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/prettify.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/structural.css" type="text/css" media="screen">
</head>

<body class="page-home">

<header role="banner">
    <div class="inner group">
        <a href="http://developer.bring.com/">
            <div>
                <h1>Bring</h1>
            </div>
        </a>
        <nav role="main" id="main-menu">
            <ul class="menu-main global-tabs">
                <li class="menu-level-1"><a class="first" href="http://webguidelines.bring.com/oversikt">Bring.no</a></li>
                <li class="menu-level-1 path active"><a class="" href="http://webguidelines.bring.com/grid">Developer</a></li>
            </ul>
        </nav>
    </div>
</header>



<div id="page" class="row">
    <section id="content" class="row">
        <section id="center" class="region" role="region">
            <section id="grid">
                <div class="row">
                    <div class="span7">
                        <h2>Welcome to Bring Developer!</h2>
                        <p>Here you can find information and tutorials for developers of web shops dealing with shipment from Scandinavian countries.
                           How can Bring APIs improve your webshop? <br><br>
                           Learn how to use the different APIs provided by Bring by exploring the different APIs from the sidebar.
                           Improve the service provided to your customers by allowing customers to choose their preferred shipping method with the <a href="#">Shipping Guide API</a>.
                           Show your customers the current status of their shipment with the <a href="#">Tracking API</a>.<br><br>
                           Find the price and availability for different products and book a request through the logged-in service in the <a href="#">Booking API</a>.
                           Need help? Through the <a href="#">Support</a> page you can get in touch with the API team and the community of developers.
                        </p>
                    </div>

                    <div class="span5 last">
                        <ul class="menu-group ingress-list alternativ">
                            <li>
                                <a class="menu-item" href="#">Shipping Guide API</a>
                                <span>Get price and time estimate for shipments</span>
                            </li>
                            <li>
                                <a class="menu-item" href="#">Tracking API</a>
                                <span>See the current status of shipments</span>
                            </li>
                            <li>
                                <a class="menu-item" href="#">Reports API (BETA)</a>
                                <span>Generate customer reports from shipment history</span>
                            </li>
                            <li>
                                <a class="menu-item" href="#">Pickup Point API</a>
                                <span>Find pickup points near a location</span>
                            </li>
                            <li>
                                <a class="menu-item" href="#">Postal Code API</a>
                                <span>Lookup and validate postal codes</span>
                            </li>
                            <li>
                                <a class="menu-item" href="#">Booking API (BETA)</a>
                                <span>Book shipments and generate PDF labels</span>
                            </li>
                            <li>
                                <a class="menu-item" href="#">EDI</a>
                                <span>Communicate with brings services electronically</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </section>
    </section>
</div>





</body>
</html>