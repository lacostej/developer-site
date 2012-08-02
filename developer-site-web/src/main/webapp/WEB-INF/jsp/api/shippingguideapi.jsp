<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="misc" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sidebar" tagdir="/WEB-INF/tags/sidebars" %>

<!DOCTYPE html>

<html>

<head>
    <misc:contenttype/> <misc:title value="Shipping Guide API"/> <misc:css_v2/>
</head>

<body>

<div class="wrapper">

<misc:header_v2 selected_tab="developer"/>

<div id="page">

<section id="content">

<div class="row-fluid">

<div class="span9">

<%--Heading--%>
<div class="box">
    <h1>Shipping Guide API</h1>
</div>

<%--Introduction--%>
<div class="box">
    <h2><a name="introduction"></a>Introduction</h2>

    <p>The Shipping Guide (Fraktguiden) is a free service from Bring that is useful for anyone in need of price
       information, service area or estimated delivery times for different shipping alternatives delivered by Bring.
       With the shipping guide it is easy to offer different shipping alternatives to your customers: whether they want
       their products delivered in their mail box, wish to pick them up at the post office or want home delivery in the
       evening. The customers may also choose different shipping methods based on how fast and when they want their
       products delivered. The shipping guide calculates the delivery time and the price based on postal code. Which of
       the different shipping alternatives you want to offer and display in your web shop is up to you..
    </p>

    <p>
        <a href="http://fraktguide.bring.no/fraktguide/demoVelgFraktalternativ.do?from=7600&amp;to=1473&amp;weightInGrams=1800&amp;length=10&amp;width=20&amp;height=30&amp;product=servicepakke&amp;product=pa_doren&amp;product=bpakke_dor-dor&amp;product=a-post&amp;callbackUrl=http://fraktguide.bring.no/fraktguide/popupCallback.jsp">Demo</a>
        (Norwegian)
    </p>

    <p>All Shipping Guide services are basically the same service, but there are different methods of integration
       available: XML, JSON and Web Service<sup>1</sup>. Choose the option that fits your need best. Web Services is the
       core service with all functionality. There are some limitations in the XML/JSON API, such as the inability to
       mark a parcel as a specialized goods.
    </p>

    <table>
        <thead>
            <tr>
                <th>xml</th>
                <th>json/jsonp</th>
                <th>Web Services/SOAP</th>
            </tr>
        </thead>
        <tbody>
        <tr>
            <td>XML API is the easiest way to integrate the Shipping Guide with an online store. The method provides
                access to data from Bring via a single interface.
            </td>
            <td>Web browsers can retrieve information from external sites if the data are made available in JSONP
                format. The purpose is that you can paste HTML / Javascript on your web page and easily use data
                from the Shipping guide without server components on your web page.
            </td>
            <td>With Online Web Services, you can look up price, transportation, area coverage and product
                information for each product as required. For advanced users we recommend the Web Services with
                several options in the query.
            </td>

            </tr>
        </tbody>
    </table>

    <sup>1 You can also use <a href="../additionalresources/offlinedata.html?from=shipping">Offline data</a> as an
         integration method</sup>

</div>

<%--Reference Table and how to use--%>

<div class="multitabs">

    <ul class="tab-group">
        <li><a href="#xml" data-tab="xml">XML</a></li>
        <li><a href="#json" data-tab="json">JSON</a></li>
        <li><a href="#soap" data-tab="soap">SOAP</a></li>
    </ul>

    <div class="box">
        <h2><a name="reference"></a>Reference</h2>

        <div data-tab="xml json">
            <div class="api-call">
    <pre class="code-box">Request prefix:
http://fraktguide.bring.no/fraktguide</pre>

            <table>
                <thead>
                    <tr>
                        <th class="shippingguidereferencecolumn">Parameter</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="even">
                        <td><code>/&lt;response type&gt;.&lt;extension&gt;</code></td>
                        <td>Returns information.
                            <ul>
                                <li><code>&lt;response type&gt;</code> = price or expectedDelivery or all.</li>
                                <li><code>&lt;extension&gt;</code> = <code>xml</code> or <code>json</code></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>Postalcode</td>
                        <td>Specified by adding <a target="_blank"
                                                   href="http://fraktguide.bring.no/fraktguide/products/expectedDelivery.xml?from=7600&amp;to=1407">?from=7600&amp;to=1407</a>.
                        </td>
                    </tr>
                    <tr class="even">
                        <td>Country code</td>
                        <td>
                            Specified by adding <a target="_blank"
                                                   href="http://fraktguide.bring.no/fraktguide/products/CARRYON_HOMESHOPPING_NORWAY/expectedDelivery.xml?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK">?fromCountry=NO&amp;toCountry=DK</a>.
                            Country code <a tabindex="99"
                                            href="http://www.iso.org/iso/english_country_names_and_code_elements"
                                            target="_blank">ISO-code</a>. Norway is default when country code is not set.
                        </td>
                    </tr>
                    <tr>
                        <td>Weight in grams</td>
                        <td>Specified by adding <a target="_blank"
                                                   href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500">?weightInGrams=1500</a>.
                            Note that weight is given in grams.
                        </td>

                    </tr>
                    <tr class="even">
                        <td>Dimensions</td>
                        <td>Specified by adding <a target="_blank"
                                                   href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40">
                            &amp;length=30&amp;width=40&amp;height=40</a>.
                        </td>
                    </tr>
                    <tr>

                        <td>Volume</td>
                        <td>Specified by adding <a target="_blank"
                                                   href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;volume=33">
                            &amp;volume=33</a>.
                        </td>
                    </tr>
                    <tr class="even">
                        <td>Shipping date</td>
                        <td>
                            Shipping date specifies which date the parcel will be delivered to Bring (within the timelimit),
                            and is used to calculate the delivery date. Specified by adding <a target="_blank"
                                                                                               href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2009-02-03">
                            &amp;date=2009-02-03</a>. Date is specified in ISO-format, YYYY-MM-DD.
                        </td>
                    </tr>
                    <tr>
                        <td>Shippingtime</td>
                        <td>
                            Shippingtime may be specified. Note that Bring's courier products are the only one affected by
                            this parameter. <a target="_blank"
                                               href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2009-02-03&amp;time=12:30">
                            &amp;date=2009-02-03&amp;time=12:30</a>. Time is specified in ISO-format, HH:mm.
                        </td>
                    </tr>
                    <tr class="even">
                        <td>EDI setting</td>
                        <td>
                            Flag that tells if the parcel is pre-notified. Specified by adding <a target="_blank"
                                                                                                  href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false">
                            &amp;edi=false</a>. Default is <b>true</b>. Note that this flag may affect price and which
                            products is available.
                        </td>
                    </tr>
                    <tr>
                        <td>Shipped from post office</td>
                        <td>
                            Flag that tells if the parcel is delivered at a post office when it is sent. Specified by adding
                            <a target="_blank"
                               href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true">
                                &amp;postingAtPostoffice=true</a>. Default is <b>false</b>.
                        </td>
                    </tr>
                    <tr class="even">
                        <td>Additional services</td>
                        <td>
                            Price of the specified additional services. Specified by adding <a target="_blank"
                                                                                               href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27&amp;additional=postoppkrav&amp;additional=evarsling&amp;additional=lordagsutkjoring">
                            &amp;additional=postoppkrav&amp;additional=evarsling &amp;additional=lordagsutkjoring</a>.
                        </td>
                    </tr>
                    <tr>
                        <td>Price adjustments</td>
                        <td>
                            Option to adjust the price returned. Specified by adding <a target="_blank"
                                                                                        href="http://fraktguide.bring.no/fraktguide/products/SERVICEPAKKE/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=m20p">
                            &amp;priceAdjustment=m20p</a>. Note that price adjustments is on prices without VAT. Refer to
                            additional examples to read more.
                        </td>
                    </tr>
                    <tr class="even">
                        <td>Public ID</td>
                        <td>
                            Public ID is the last part (after the last dash) of your <a target="_blank"
                                                                                        href="http://fraktguide.bring.no/fraktguide/innlogget/identifikatorstreng.do">identification
                                                                                                                                                                      string</a>
                            (logged in information for user of Shipping Guide) Specified by adding the parameter "pid", e.g.
                            pid=abc123456789. This makes the Shipping Guide know who performs the query, so we may contact
                            the correct shipping guide user for potential follow ups.
                        </td>
                    </tr>
                </tbody>
            </table>
            <hr>
        </div>
        </div> <!-- xml json -->
        <div data-tab="soap">

        <div class="api-call">
        <h5>Request Reference</h5>
        <table>
            <colgroup width="100"></colgroup>
            <colgroup width="100"></colgroup>
            <colgroup width="35"></colgroup>
            <thead>
                <tr>
                    <th>Element (XPath)</th>
                    <th>Description Default</th>
                    <th>Default</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>/UserInformation/Usercode</td>
                    <td>Identificator String</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/RequestProperties/*</td>
                    <td>Contains optional elements that can be used to affect the response</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/RequestProperties/Language</td>
                    <td>Language of the response. At the moment, only Norwegian is supported.</td>
                    <td>no</td>
                </tr>
                <tr>
                    <td>/RequestProperties/WithPrice/</td>
                    <td>Flag to indicate if prices should be returned.</td>
                    <td>true</td>
                </tr>
                <tr>
                    <td>/RequestProperties/ WithExpectedDelivery</td>
                    <td>Flag to indicate if expected deliver date is to be returned</td>
                    <td>true
                    </td>
                </tr>
                <tr>
                    <td>/RequestProperties/ NumberOfAlternativeDeliveryDates/</td>
                    <td>Number of ”ShipmentDates” the service should calculate. Max value is 9</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>/RequestProperties/EDI</td>
                    <td>Flag to indicate if the packages are to be sent via EDI</td>
                    <td>true
                    </td>
                </tr>
                <tr>
                    <td>/RequestProperties/ PostingAtPostoffice</td>
                    <td>Flag to indicate that the packages will be delivered to a post office terminal (may affect the price in
                        certain cases)
                    </td>
                    <td>false
                    </td>
                </tr>
                <tr>
                    <td>/ProductIds/ProductId</td>
                    <td>List of Product IDs you wish to get alternatives for. See more in table below.</td>
                    <td>No defaults – required field</td>
                </tr>
                <tr>
                    <td>/Packages/Package/@packageId</td>
                    <td>If you ship more than one package, you can add a reference to each package. This reference will be
                        included in the response. Maximum 10 Package elements for each request.
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/Height</td>
                    <td>Height of the package in centimeters</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/Width</td>
                    <td>Width of package in centimeters</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/Length</td>
                    <td>Length of package in centimeters</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/GrossWeight</td>
                    <td>Gross Weight of the package in grams</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/Volume</td>
                    <td>Volume of package in dm <sup>3</sup></td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/VolumeSpecial</td>
                    <td>Flag to indicate if the package has a shape that may require 'special handling fee'</td>
                    <td>false</td>
                </tr>
                <tr>
                    <td>/Packages/Package/FromPostalCode</td>
                    <td>Postalcode from (sender)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/ToPostalCode</td>
                    <td>Postalcode to (recipient)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/ShippingDate/*</td>
                    <td>Date to ship (delivery date to the postal service) within the shipment/pickup date-time. If date is
                        given, you will receive a ”ExpectedDelivery” element in ShippingGuideResponse
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/AdditionalServices/*</td>
                    <td>Element containing additional services you wish to request the prices for.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/AdditionalServices/ AdditionalServiceId</td>
                    <td>Id of additional service you request the price for. See table below.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/AdditionalServices/ AdditionalServiceParameters/*</td>
                    <td>Parameters for the respective additional service. (For future use).</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/EarlyCollectionAtTerminal</td>
                    <td>Postalcode for terminal. If you have an agreement for same-day delivery, and ship a &quot;På Døren&quot;
                        (To the Door) package to the Oslo terminal – within the deadline of the agreement; use code 0024 in this
                        field. Using this field currently only affects shipment times for these packages.
                    </td>
                    <td></td>
                </tr>
        </table>

        <h5>Response Reference</h5>
        <table>
            <colgroup width="95"></colgroup>
            <colgroup width="100"></colgroup>
            <colgroup width="35"></colgroup>
            <thead>
                <tr>
                    <th>Element (XPath)</th>
                    <th>Description Default</th>
                    <th>Example value</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>/Packages/*</td>
                    <td>Contains the requested packages</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/*</td>
                    <td>A single package. The attribute packageId contains the reference you specified in the request</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Package/Product/*</td>
                    <td>Information about the product. Can contain 0-n products.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ProductId</td>
                    <td>Product ID. See table below.</td>
                    <td>SERVICE PAKKE</td>
                </tr>
                <tr>
                    <td>/Packages/Product/GuiInformation/*</td>
                    <td>Product texts. See more complete description below.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/Price/*</td>
                    <td>Collection for all information related to prices.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/Price/ PackagePriceWithoutAdditionalServices/*</td>
                    <td>Price without any additional services All prices are given -without value added tax (VAT), -with VAT as
                        well as -VAT itself specified. Period is used for separating decimals.
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/Price/ PackagePriceWithAllAdditionalServices/*</td>
                    <td>Price with all requested additional services All prices are given -without value added tax (VAT), -with
                        VAT as well as -VAT itself specified. Period is used for separating decimals.
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ Price/AdditionalServicePrices/*</td>
                    <td>Collection containing all requested additional services with respective prices</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ Price/AdditionalServicePrices/ AdditionalService/AdditionalServiceId</td>
                    <td>Id of additional service.</td>
                    <td>POST OPPKRAV</td>
                </tr>
                <tr>
                    <td>/Packages/Product/ Price/AdditionalServicePrices/ AdditionalService/AdditionalServicePrice</td>
                    <td>Price for the single additional service.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/*</td>
                    <td>Collection for all information related to delivery time</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ WorkingDays</td>
                    <td>Number of week days from pickup to delivery. First day is day 0. NOTE! If this number is used, know that
                        there are special rules surrounding christmas, easter, shipments to Svalbard and certain other
                        destinations. For the complete picture of delivery time, it is important that the message in UserMessage
                        is made available to the end user
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ FormattedExpectedDeliveryDate</td>
                    <td>Expected delivery date based on the request parameters (product, postalcodes and ShipmentDate). This
                        field is preformatted.
                    </td>
                    <td>DD.MM.YYYY</td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ ExpectedDeliveryDate</td>
                    <td>Expected delivery date based on request parameters. Contains elements year, month, day.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ UserMessage</td>
                    <td>Important message to end-user in requested language regarding delivery. We recommend this is forwarded
                        to the end-user.
                    </td>
                    <td>Usually empty response. In special cases a one-liner.</td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ AlternativeDeliveryDates</td>
                    <td>Collection for alternate delivery dates if NumberOfAlternativeDeliveryDates is specified in request. In
                        practise this collection can be used to let the customer decide which day to receive the package. The
                        data structure also provides the sender when to deliver to the postal service in order to reach the
                        customer on the given day
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ AlternativeDeliveryDates/ AlternativeDeliveryDate</td>
                    <td>An alternate delivery date.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ AlternativeDeliveryDates/ AlternativeDeliveryDate/ShippingDate</td>
                    <td>The date the shop must ship the package by make the delivery date</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ AlternativeDeliveryDates/ AlternativeDeliveryDate/
                        ExpectedDeliveryDate
                    </td>
                    <td>Estimated delivery date based on ShippingDate for alternate delivery dates.</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/Packages/Product/ExpectedDelivery/ AlternativeDeliveryDates/ AlternativeDeliveryDate/UserMessage</td>
                    <td>See (...)/ExpectedDelivery/UserMessage</td>
                    <td></td>
                </tr>
            </tbody>
        </table>

        <hr>
        </div>
        </div> <!-- soap -->

        <h2><a name="HTU"></a>How to Use</h2>

        <div data-tab="json xml">
            <p> The Shipping Guide API is quite complex and supports a number of parameters. Some parameters are mandatory,
                others are optional, but any query to the Shipping Guide API must at least contain the following information:
            </p>
        </div>

        <div data-tab="xml">
            <ul>
                <li><b>Response type:</b> What do you want in your response? Just the price of the shipment, just an estimated
                                          delivery time or all available information? By querying <a
                            href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500"
                            target="_blank"><code>price.xml</code></a> you will only get the price of the shipment, while <a
                            href="http://fraktguide.bring.no/fraktguide/products/expectedDelivery.xml?from=7600&amp;to=1407&amp;weightInGrams=1500"
                            target="_blank"><code>expectedDelivery.xml</code></a> will only show you an estimated delivery time.
                                          By querying <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7600&amp;to=1407&amp;weightInGrams=1500"
                            target="_blank"><code>all.xml</code></a> you will not only get the price and the expected delivery
                                          time, but some additional information such as an indication of which alternative has
                                          the least environmental impact.
                </li>
                <li><b>Origin and destination:</b>What is the origin and destination of the shipment? For domestic shipments in
                                                  Norway postal codes are sufficient, but for international shipments country
                                                  codes must be specified, as well as postal codes (or city for countries that
                                                  are not using postal codes). To specify a postal code such as "0361" add <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=0361&amp;to=0361&amp;weightInGrams=1500"
                            target="_blank"><code>&amp;to=0361</code></a> or <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=0361&amp;to=0361&amp;weightInGrams=1500"
                            target="_blank"><code>from=0361</code></a> to your request. For international shipments use country
                                                  codes (such as DK for Denmark) and add <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=0361&amp;to=2100&amp;weightInGrams=1500&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY"
                            target="_blank"><code>&amp;toCountry=DK</code></a> or <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=2100&amp;to=0361&amp;weightInGrams=1500&amp;fromCountry=DK&amp;product=CARRYON_HOMESHOPPING_DENMARK"
                            target="_blank"><code>&amp;fromCountry=DK</code></a> to your request.
                </li>
                <li>
                    <b>Package size:</b> How big is the package? This can either be weight of the package in grams, its
                                         dimensions or volume. A weight of 1500 grams can be specified by <a target="_blank"
                                                                                                             href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500"><code>
                    &amp;weightInGrams=1500</code></a>, dimensions of 30cm x 40cm x 40cm as <a target="_blank"
                                                                                               href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40">
                    <code>&amp;length=30&amp;width=40&amp;height=40</code></a> or volume of 33dm<sup>3</sup> as <a
                        target="_blank"
                        href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;volume=33">
                    <code>&amp;volume=33</code></a> .
                </li>
            </ul>
        </div>

        <div data-tab="json">
            <ul>
                <li><b>Response type:</b> What do you want in your response? Just the price of the shipment, just an estimated
                                          delivery time or all available information? By querying <a
                            href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500"
                            target="_blank"><code>price.json</code></a> you will only get the price of the shipment, while <a
                            href="http://fraktguide.bring.no/fraktguide/products/expectedDelivery.json?from=7600&amp;to=1407&amp;weightInGrams=1500"
                            target="_blank"><code>expectedDelivery.json</code></a> will only show you an estimated delivery
                                          time. By querying <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7600&amp;to=1407&amp;weightInGrams=1500"
                            target="_blank"><code>all.json</code></a> you will not only get the price and the expected delivery
                                          time, but some additional information such as an indication of which alternative has
                                          the least environmental impact.
                </li>
                <li><b>Origin and destination:</b>What is the origin and destination of the shipment? For domestic shipments in
                                                  Norway postal codes are sufficient, but for international shipments country
                                                  codes must be specified, as well as postal codes (or city for countries that
                                                  are not using postal codes). To specify a postal code such as "0361" add <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.json?from=0361&amp;to=0361&amp;weightInGrams=1500"
                            target="_blank"><code>&amp;to=0361</code></a> or <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.json?from=0361&amp;to=0361&amp;weightInGrams=1500"
                            target="_blank"><code>from=0361</code></a> to your request. For international shipments use country
                                                  codes (such as DK for Denmark) and add <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.json?from=0361&amp;to=2100&amp;weightInGrams=1500&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY"
                            target="_blank"><code>&amp;toCountry=DK</code></a> or <a
                            href="http://fraktguide.bring.no/fraktguide/products/all.json?from=2100&amp;to=0361&amp;weightInGrams=1500&amp;fromCountry=DK&amp;product=CARRYON_HOMESHOPPING_DENMARK"
                            target="_blank"><code>&amp;fromCountry=DK</code></a> to your request.
                </li>
                <li>
                    <b>Package size:</b> How big is the package? This can either be weight of the package in grams, its
                                         dimensions or volume. A weight of 1500 grams can be specified by <a target="_blank"
                                                                                                             href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500"><code>
                    &amp;weightInGrams=1500</code></a>, dimensions of 30cm x 40cm x 40cm as <a target="_blank"
                                                                                               href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40">
                    <code>&amp;length=30&amp;width=40&amp;height=40</code></a> or volume of 33dm<sup>3</sup> as <a
                        target="_blank"
                        href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;volume=33">
                    <code>&amp;volume=33</code></a> .
                </li>
            </ul>
        </div>

        <div data-tab="xml json">
            <div class="information-box"> Please add the name of the web-shop to the HTTP header "User-Agent" on
                                          each request to the service. If available, the name of the web-shop
                                          owner should also be added to the request. If you have a registered
                                          user at fraktguide.bring.no, please also include XML API's Public ID
                                          parameter in the query. Public ID is your personal Shipping Guide
                                          account id. It is a sequence of alphanumeric characters after the last
                                          dash in your identification. (Please login to see your identification
                                          string). If your Shipping Guide IE is: 372b269a-4f07-4c4e-92b9-<b>460cb92b0767</b>
                                          your pid is <b>460cb92b0767</b>. This makes it possible for us to send
                                          any relevant messages via the registered e-mail address.
            </div>

            <p><b>Example:</b> Here is an example combining some of the parameters covered. The request is for a package with <code>weightInGrams=1500</code>,
                <code>from=7600</code> and <code>to=1407</code>.
            </p>

        </div>

        <div data-tab="json" class="tab api-call">
            <p>Request:</p>
            <a target="_blank" class="request"
               href="http://fraktguide.bring.no/fraktguide/products/all.json?weightInGrams=1500&amp;from=7600&amp;to=1407"
               data-internal="/proxy/shipping-guide/products/all.json?weightInGrams=1500&amp;from=7600&amp;to=1407">
                ../all.json?weightInGrams=1500&amp;from=7600&amp;to=1407 </a>
            <br><br><p>Response:</p>
            <pre class="code-box json response delay-snippet"></pre>
        </div>

        <div data-tab="xml">
            <div class="tab api-call">
                <p>Request:</p>
                <a target="_blank" class="request"
                   href="http://fraktguide.bring.no/fraktguide/products/all.xml?weightInGrams=1500&amp;from=7600&amp;to=1407"
                   data-internal="/proxy/shipping-guide/products/all.xml?weightInGrams=1500&amp;from=7600&amp;to=1407">
                    ../all.xml?weightInGrams=1500&amp;from=7600&amp;to=1407 </a>
                <br><br><p>Response:</p>
                <pre class="code-box xml response delay-snippet"></pre>
            </div>

            <p>Please refer to the <a href="../additionalresources/wsdl-xml-schema.html?from=shipping">XML schema</a> for
               information on elements in the response.
            </p>
        </div>

        <div data-tab="xml json">
            <div class="information-box">When using the Shipping Guide, it is important to handle errors gracefully. Your web shop's
                                                             users should still be able to order, even if the Shipping Guide returns an error or a
                                                             timeout occurs. <a href="../additionalresources/errorhandling.html?from=shipping">Read more
                                                                                                                                               about
                                                                                                                                               error
                                                                                                                                               handling
                                                                                                                                               and error
                                                                                                                                               codes.</a>
            </div>

            <h4>Products</h4>

            <p>One parameter that can be quite useful is <code>&amp;product</code>. This parameter lets you specify which product
               you want to return information about. Strictly speaking this is an optional parameter, but in some situations you
               will need to specify a product to get a sensible response. For instance if you make a query for an international
               shipment, you will have to specify a product that supports this. Use the <a
                        href="/additionalresources/productlist.html?from=shipping"> the product list</a> to find suitable products.
            </p>

            <p>
                <b>Example:</b> Limit products to only SERVICEPAKKE and PA_DOREN:
            </p>

        </div>


        <div data-tab="xml" class="tab api-call">
            <p>Request:</p>
            <a target="_blank" class="request"
               href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=PA_DOREN"
               data-internal="/proxy/shipping-guide/products/all.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=PA_DOREN">
                ../all.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=PA_DOREN </a>
            <br><br><p>Response:</p>
            <pre class="code-box xml response delay-snippet"></pre>
        </div>

        <div data-tab="json" class="tab api-call">
                <p>Request:</p>
                <a target="_blank" class="request"
                   href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=PA_DOREN"
                   data-internal="/proxy/shipping-guide/products/all.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=PA_DOREN">
                    ../all.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=PA_DOREN </a>
                </a>

                <p class="right">JSONP Request: <a
                        href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09&amp;callbackUrl=functionName">?callback=functionName</a>
                </p>
            <p>Response:</p>
            <pre class="code-box json response delay-snippet"></pre>
        </div>


        <div data-tab="json xml">
            <div class="information-box">Shipping Guide specifies VAT related to senders country. It's up to the client to decide if
                                         VAT is applicable to their situation of sale
            </div>

            <h4>Additional Services</h4>

            <p>There are currently 3 additional services that can be specified using this option:
                <code>additional=postoppkrav</code>, <code>additional=evarsling</code>, or <code>additional=lordagsutkjoring</code>.
               To add multiple services simply chain the parameters.
            </p>

            <p><b>Example:</b> Using all of the following services: "postoppkrav", "evarsling", and "lordagsutkjoring".</p>

        </div>

        <div data-tab="xml" class="tab api-call">
            <p>Request:</p>
            <pre><a target="_blank" class="request"
                            href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27&amp;additional=postoppkrav&amp;additional=evarsling&amp;additional=lordagsutkjoring"
                            data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27&amp;additional=postoppkrav&amp;additional=evarsling&amp;additional=lordagsutkjoring">
…/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27
                              &amp;additional=postoppkrav&amp;additional=evarsling
                              &amp;additional=lordagsutkjoring</a></pre>
            <p>Response:</p>
            <pre class="code-box xml response delay-snippet">Running request...</pre>
        </div>

        <div data-tab="json" class="tab api-call">
            <p>Request:</p>
            <pre><a target="_blank" class="request"
                            href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27&amp;additional=postoppkrav&amp;additional=evarsling&amp;additional=lordagsutkjoring"
                            data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27&amp;additional=postoppkrav&amp;additional=evarsling&amp;additional=lordagsutkjoring">
…/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;date=2009-3-27
                               &amp;additional=postoppkrav&amp;additional=evarsling
                               &amp;additional=lordagsutkjoring</a></pre>
            <p>Response:</p>
            <pre class="code-box json response delay-snippet">Running request...</pre>
        </div>


        <div data-tab="json xml">
            <p>The Shipping Guide API has a lot of optional parameters not covered in this tutorial, and we recommend that you get
               familiar with the reference table and look at all the additional examples for further study.
            </p>
        </div>


        <div data-tab="soap">
        <p>The webservices offers the most options when performing queries to the Shipping Guide.</p>

        <p><b>To execute the web-service you will need a identification string. To get this - please <a
                href="http://fraktguide.bring.no/fraktguide/registrerBruker.do" target=_blank>register</a>.</b></p>

        <p>More information about <a href="../additionalresources/wsdl-xml-schema.html?from=shipping">WSDL/XML Schema</a>.
            <a href="http://fraktguide.bring.no/fraktguide/ws/fraktguide-latest.wsdl?from=shipping">WSDL</a>(will always
           link to the latest version)
        </p>

        <p>We recommend <a href="http://www.soapui.org/">soapUI</a> to test the Web Service</p>

        <p>Please refer to common information regarding <a href="../additionalresources/productlist.html?from=shipping">product
                                                                                                                        codes</a>
           and <a href="../additionalresources/errorhandling.html?from=shipping">error codes</a>.
        </p>
    </div>

<%--Additional examples--%>

<div data-tab="xml json">
    <hr>
    <h2><a name="additionalExamples"></a>Additional examples</h2></div>

<div data-tab="xml">

<div class="row element-sample">
<ul class="menu-group collapsing no-shadow">

<li>
    <a href="#" class="menu-item">
        Multiple parcels in one query
    <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>It is also possible to combine weight, volume and dimensions for multiple parcels. Multiple parcels are
               specified by suffixing weightInGrams, volume or dimensions (length, width or height), with sequential
               numbers from 0.
            </p>
        </div>
        <p>The data used in this example is:</p>
        <ul>
            <li><code>from=7041</code></li>
            <li><code>to=0558</code></li>
        </ul>

        <p>Parcels:</p>
        <ol>
            <li><code>weightInGrams0=1500</code></li>
            <li><code>volume1=33</code></li>
            <li><code>length2=10&amp;width2=20 &amp;height2=30</code></li>
        </ol>

        <div class="">
            <div class="codetabs">
                <div class="row element-sample">
                    <div data-tab="xml" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7041&amp;to=0558&amp;weightInGrams0=1500&amp;volume1=33&amp;length2=10&amp;width2=20&amp;height2=30"
                               data-internal="/proxy/shipping-guide/products/all.xml?from=7041&amp;to=0558&amp;weightInGrams0=1500&amp;volume1=33&amp;length2=10&amp;width2=20&amp;height2=30">
                                ../all.xml?from=7041&amp;to=0558&amp;weightInGrams0=1500&amp;volume1=33&amp;length2=10&amp;width2=20&amp;height2=30 </a>
                            <br><br><p>Response:</p>
                            <pre class="code-box xml response delay-snippet"></pre>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">
        International shipments
        <span class="arrow"></span>
    </a>

    <div class="content-box">
        <div>
            <p>Specified using <code>fromCountry=NO&amp;toCountry=DK</code>.</p>

            <p><a href="http://www.iso.org/iso/iso-3166-1_decoding_table.html">Country Codes are ISO-3166-1-alpha-2</a>
            </p>

        </div>
        <div class="">
            <div class="codetabs">
                <div class="tab-content tab-minimal">

                    <div data-tab="xml" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/expectedDelivery.xml?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY"
                               data-internal="/proxy/shipping-guide/products/expectedDelivery.xml?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY">
                                ../products/expectedDelivery.xml?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY </a>
                            <br> <br>
                            <p>Response:</p>
                            <pre class="code-box xml response delay-snippet"></pre>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">
        International shipments to countries without postal codes
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>In the example below, a parcel is sent from Norway to Dublin, Ireland. The parameters are:</p>
            <ul>
                <li><code>?fromCountry=NO</code></li>
                <li><code>&amp;toCountry=IE</code></li>
                <li><code>&amp;to=0</code></li>
                <li><code>&amp;toCity=Dublin</code></li>
            </ul>

            <p>To see both the expected delivery time and the price, we've added:</p>
            <ul>
                <li><code>&amp;weightInGrams=300</code>, and</li>
                <li><code>all.xml</code></li>
            </ul>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/all.xml?fromCountry=NO&amp;toCountry=IE&amp;from=7600&amp;to=0&amp;toCity=Dublin&amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;weightInGrams=300"
                           data-internal="/proxy/shipping-guide/products/all.xml?fromCountry=NO&amp;toCountry=IE&amp;from=7600&amp;to=0&amp;toCity=Dublin&amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;weightInGrams=300">
<pre>../products/all.xml?fromCountry=NO&amp;toCountry=IE
                   &amp;from=7600&amp;to=0&amp;toCity=Dublin
                   &amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;weightInGrams=300</pre>
                        </a>
                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>
                </div>
            </div>
        </div>

    </div>
</li>

<li>
    <a href="#" class="menu-item">
        Three ways to specify a package size
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div><h4>Weight in grams</h4></div>
        <div>
            <p>Specified using <code>weightInGrams=1500</code>.</p>

        </div>
        <div class="">
            <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500"
                           data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500">
                            ../products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500</a>
                        <br><br><p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>

                </div>



            </div>
        </div>

        <div><h4>Package dimensions</h4></div>
        <div>
            <p>Specified using <code>length=30&amp;width=40&amp;height=40</code>.</p>

        </div>
        <div class="">
            <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40"
                           data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40">
                            ../products/price.xml?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40</a>
                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>

                </div>
            </div>
        </div>

        <div><h4>Volume</h4>

            <p>Instead of, or in addition to using the package's weight and dimensions you can specify volume. This is
               relevant for non-rectangular hexahedron shaped packages, and depending on the volume, it could affect the
               set of available products. The unit is dm3.
            </p>
        </div>
        <div>
            <p>Specified using <code>volume=33</code>.</p>

        </div>
        <div class="">
            <div class="codetabs">
            <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;volume=33"
                           data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;volume=33">
                            ../products/price.xml?from=7600&amp;to=1407&amp;volume=33</a>

                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>

                </div>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">
        Get the expected delivery date
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>Specifies the date the package is delivered to Bring. The parameter is used to calculate the expected
               delivery date.
            </p>

            <p>Specified using <code>date=2009-02-03</code>.</p>

            <p>Accepted date format: <code>YYYY-MM-DD</code>.</p>

            <p>If this parameter is specified, the response will include expected delivery date, in addition to expected
               number of working days.
            </p>
        </div>

        <div class="">
            <div class="codetabs">
                <div class="row element-sample">
                    <div data-tab="xml" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09"
                               data-internal="/proxy/shipping-guide/products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09">
                                <pre>../products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09</pre>
                            </a>
                            <p>Response:</p>
                            <pre class="code-box xml response delay-snippet"></pre>
                        </div>

                    </div>


                </div>
            </div>

        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">
        Specify the pickup time from the departure point
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>Use this parameter if you would like to specify when during the day the package needs to be picked up from
               the departure point.
            </p>

            <p>This parameter is only considered for courier and express products.</p>

            <p>Specified using <code>date=2011-07-28&amp;time=13:37</code> (date and time is required to use this
               option).
            </p>

            <p>Accepted format is <code>hh:mm</code>. (AM and PM not allowed, please use 24-hour clock.)</p>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37"
                           data-internal="/proxy/shipping-guide/products/all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37">
                            <pre>../all.xml?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37</pre>
                        </a>
                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>

                </div>
            </div>
        </div>

    </div>

</li>

<li>
    <a href="#" class="menu-item">
        Specify whether or not the shipment has been pre-registered (EDI)
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>Specify whether or not the shipment has been pre-registered (EDI).</p>

            <p>Specified using <code>edi=false</code>.</p>

            <p>This will affect response prices and might affect which products are available.</p>

            <p>Default: <code>true</code></p>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false"
                           data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false">
                            <pre>../price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false</pre>
                        </a>
                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>

                </div>
            </div>
        </div>

    </div>

</li>

<li>
    <a href="#" class="menu-item">
        Specify if the package was shipped from a post office
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>The response data may vary depending on whether or not Bring must collect the shipment, or if the
               customer delivers the shipment from a post office.
            </p>

            <p>This parameter specifies whether or not the package is delivered to a post office before shipping</p>

            <p>Specified using <code>postingAtPostOffice=true</code></p>

            <p>Default: <code>false</code></p>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true&amp;product=SERVICEPAKKE"
                           data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true&amp;product=SERVICEPAKKE">
                            <pre>../price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true&amp;product=SERVICEPAKKE</pre>
                        </a>
                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>

                </div>
            </div>
        </div>

    </div>

</li>

<li>
    <a href="#" class="menu-item">
        Adjust prices
        <span class="arrow"></span>
    </a>

    <div class="content-box">
        <div class="row element-sample">

            <p>The Shipping Guide provides adjustment of prices shown. This service is available both in XML API and in
               the <a href="../widget/productselectionashtml.html?from=shipping">Product selection as HTML"-widget.</a>
            </p>

            <p>To adjust the price, add <a
                    href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=m20p">
                &amp;priceAdjustment=m20p</a> to the query.
            </p>

            <p>The parameter is built up in the form [produktkode_][o]10[p]. Parts of the parameter with square brackets
               ( [] ) is optional.
            </p>

            <p>Explanation of the parameters follows:</p>
            <ul>
                <li>
                    <p>produktkode_ used if price adjustments are only made for a single product. Example: <a
                            href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=SERVICEPAKKE_m20">
                        &amp;priceAdjustment=SERVICEPAKKE_m20</a> lowers the price on product Servicepakke with NOK 20.
                    </p>
                </li>

                <li>
                    <p>o specifies the operation to be performed. Operations supported are 'p' for positive, 'm' for
                       negative or blank for a fixed price adjustment. Examples:
                    </p>
                    <ul>
                        <li>
                            <a href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=m20">
                                &amp;priceAdjustment=m20</a> deducts NOK 20 on all products.
                        </li>
                        <li>
                            <a href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=p20">
                                &amp;priceAdjustment=p20</a> adds NOK 20 to all products.
                        </li>
                        <li>
                            <a href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=SERVICEPAKKE_79">
                                &amp;priceAdjustment=SERVICEPAKKE_79</a> puts a fixed price on Servicepakke on NOK 79.
                        </li>

                    </ul>
                </li>

                <li>10 indicate the factor to be used in the price adjustment. This number can be a fixed amount or
                    percentage to be added/subtracted, or a fixed price to be added/subtracted depending on other
                    parameters.
                </li>
                <li>p indicate that the operation should be done as a percentage calculation. Note that this is only
                    valid for operations doing additions and subtractions (not fixed prices).
                </li>
            </ul>

            <p>Though <b>not recommended</b>, it is possible to make overlapping queries. If there is a need to do
               multiple simultaneous price adjustments, it should be done on a product-by-product basis using the
               product code prefix.
            </p>

            <p><b>Example:</b> set fixed price of NOK 79 for Servicepakke and deduct 20% on Bedriftspakke Ekspress Over
                               natten 09.
            </p>

            <div class="">
                <div class="codetabs">
                    <div data-tab="xml" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=EKSPRESS09&amp;priceAdjustment=SERVICEPAKKE_79&amp;priceAdjustment=EKSPRESS09_m20p"
                               data-internal="/proxy/shipping-guide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=EKSPRESS09&amp;priceAdjustment=SERVICEPAKKE_79&amp;priceAdjustment=EKSPRESS09_m20p">
                                   <pre>
.../price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE
             &amp;product=EKSPRESS09
             &amp;priceAdjustment=SERVICEPAKKE_79
             &amp;priceAdjustment=EKSPRESS09_m20p</pre>
                            </a>
                            <p>Response:</p>
                            <pre class="code-box xml response delay-snippet"></pre>
                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>

</li>

</ul>
</div>
</div>

<div data-tab="json">

<div class="row element-sample">
<ul class="menu-group collapsing no-shadow">

<li>
    <a href="#" class="menu-item">
        Multiple parcels in one query
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>It is also possible to combine weight, volume and dimensions for multiple parcels. Multiple parcels are
               specified by suffixing weightInGrams, volume or dimensions (length, width or height), with sequential
               numbers from 0.
            </p>
        </div>
        <p>The data used in this example is:</p>
        <ul>
            <li><code>from=7041</code></li>
            <li><code>to=0558</code></li>
        </ul>

        <p>Parcels:</p>
        <ol>
            <li><code>weightInGrams0=1500</code></li>
            <li><code>volume1=33</code></li>
            <li><code>length2=10&amp;width2=20 &amp;height2=30</code></li>
        </ol>

        <div class="">
            <div class="codetabs">
                <div class="row element-sample">
                    <div data-tab="json" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7041&amp;to=0558&amp;weightInGrams0=1500&amp;volume1=33&amp;length2=10&amp;width2=20&amp;height2=30"
                               data-internal="/proxy/shipping-guide/products/all.json?from=7041&amp;to=0558&amp;weightInGrams0=1500&amp;volume1=33&amp;length2=10&amp;width2=20&amp;height2=30">
                                ../all.json?from=7041&amp;to=0558&amp;weightInGrams0=1500&amp;volume1=33&amp;length2=10&amp;width2=20&amp;height2=30 </a>

                            <p class="right">JSONP Request: <a href="#">?callback=functionName</a></p>

                            <p>Response:</p>
                            <pre class="code-box json response delay-snippet"></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">International shipments
        <span class="arrow"></span></a>

    <div class="content-box">
        <div>
            <p>Specified using <code>fromCountry=NO&amp;toCountry=DK</code>.</p>

            <p><a href="http://www.iso.org/iso/iso-3166-1_decoding_table.html">Country Codes are ISO-3166-1-alpha-2</a>
            </p>

        </div>
        <div class="">
            <div class="codetabs">
                <div class="tab-content tab-minimal">

                    <div data-tab="json" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/expectedDelivery.json?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY"
                               data-internal="/proxy/shipping-guide/products/expectedDelivery.json?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY">
                                ../products/expectedDelivery.json?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY </a>

                            <p class="right">JSONP Request: <a
                                    href="http://fraktguide.bring.no/fraktguide/products/expectedDelivery.json?from=2100&amp;to=2100&amp;fromCountry=NO&amp;toCountry=DK&amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;callbackUrl=functionName">?callback=functionName</a>
                            </p>
                            <br>
                            <p>Response:</p>
                            <pre class="code-box json response delay-snippet"></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">International shipments to countries without postal codes
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>In the example below, a parcel is sent from Norway to Dublin, Ireland. The parameters are:</p>
            <ul>
                <li><code>?fromCountry=NO</code></li>
                <li><code>&amp;toCountry=IE</code></li>
                <li><code>&amp;to=0</code></li>
                <li><code>&amp;toCity=Dublin</code></li>
            </ul>

            <p>To see both the expected delivery time and the price, we've added:</p>
            <ul>
                <li><code>&amp;weightInGrams=300</code>, and</li>
                <li><code>all.json</code></li>
            </ul>
        </div>

        <div class="">
            <div class="codetabs">
                        <div data-tab="json" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/all.json?fromCountry=NO&amp;toCountry=IE&amp;from=7600&amp;to=0&amp;toCity=Dublin&amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;weightInGrams=300"
                               data-internal="/proxy/shipping-guide/products/all.json?fromCountry=NO&amp;toCountry=IE&amp;from=7600&amp;to=0&amp;toCity=Dublin&amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;weightInGrams=300">
<pre>../products/all.json?fromCountry=NO&amp;toCountry=IE
                   &amp;from=7600&amp;to=0&amp;toCity=Dublin
                   &amp;product=CARRYON_HOMESHOPPING_NORWAY&amp;weightInGrams=300</pre>
                            </a>

                            <p class="right">JSONP Request: <a href="#">?callback=functionName</a></p>
                            <p>Response:</p>
                            <pre class="code-box json response delay-snippet"></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</li>

<li>
    <a href="#" class="menu-item">Three ways to specify a package size
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div><h4>Weight in grams</h4></div>
        <div>
            <p>Specified using <code>weightInGrams=1500</code>.</p>

        </div>
        <div class="">
            <div class="codetabs">
                <div data-tab="json" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500"
                           data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500">
                            ../products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500</a>
                        <br>
                        <br>
                        <p>Response:</p>
                        <pre class="code-box json response delay-snippet"></pre>
                    </div>

                </div>
            </div>
        </div>

        <div><h4>Package dimentions</h4></div>
        <div>
            <p>Specified using <code>length=30&amp;width=40&amp;height=40</code>.</p>

        </div>
        <div class="">
            <div class="codetabs">
                <div data-tab="json" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40"
                           data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40">
                            ../products/price.json?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40</a>

                        <p class="right">JSONP Request: <a
                                href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;length=30&amp;width=40&amp;height=40&amp;callbackUrl=functionName">?callback=functionName</a>
                        </p>

                        <p>Response:</p>
                        <pre class="code-box json response delay-snippet"></pre>
                    </div>
                </div>
            </div>
        </div>

        <div><h4>Volume</h4>

            <p>Instead of, or in addition to using the package's weight and dimensions you can specify volume. This is
               relevant for non-rectangular hexahedron shaped packages, and depending on the volume, it could affect the
               set of available products. The unit is dm3.
            </p>
        </div>
        <div>
            <p>Specified using <code>volume=33</code>.</p>

        </div>
        <div class="">
            <div class="codetabs">
                <div data-tab="json" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;volume=33"
                           data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;volume=33">
                            ../products/price.json?from=7600&amp;to=1407&amp;volume=33</a>

                        <p class="right">JSONP Request: <a
                                href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;volume=33&amp;callbackUrl=functionName">?callback=functionName</a>
                        </p>

                        <p>Response:</p>
                        <pre class="code-box json response delay-snippet"></pre>
                    </div>
                </div>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">
        Get the expected delivery date
        <span class="arrow"></span></a>

    <div class="content-box">

        <div>
            <p>Specifies the date the package is delivered to Bring. The parameter is used to calculate the expected
               delivery date.
            </p>

            <p>Specified using <code>date=2009-02-03</code>.</p>

            <p>Accepted date format: <code>YYYY-MM-DD</code>.</p>

            <p>If this parameter is specified, the response will include expected delivery date, in addition to expected
               number of working days.
            </p>
        </div>

        <div class="">
            <div class="codetabs">
                <div class="row element-sample">
                    <div data-tab="json" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09"
                               data-internal="/proxy/shipping-guide/products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09">
                                <pre>../products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-07-30&amp;product=EKSPRESS09</pre>
                            </a>
                            <p>Response:</p>
                            <pre class="code-box json response delay-snippet"></pre>
                        </div>

                    </div>


                </div>
            </div>

        </div>
    </div>
</li>

<li>
    <a href="#" class="menu-item">
        Specify the pickup time from the departure point
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>Use this parameter if you would like to specify when during the day the package needs to be picked up from
               the departure point.
            </p>

            <p>This parameter is only considered for courier and express products.</p>

            <p>Specified using <code>date=2011-07-28&amp;time=13:37</code> (date and time is required to use this
               option).
            </p>

            <p>Accepted format is <code>hh:mm</code>. (AM and PM not allowed, please use 24-hour clock.)</p>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="json" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37"
                           data-internal="/proxy/shipping-guide/products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37">
                            <pre>../all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37</pre>
                        </a>

                        <p class="right">JSONP Request: <a
                                href="http://fraktguide.bring.no/fraktguide/products/all.json?from=7600&amp;to=1407&amp;volume=33&amp;date=2011-08-30&amp;time=13:37&amp;callbackUrl=functionName">?callback=functionName</a>
                        </p>
                        <p>Response:</p>
                        <pre class="code-box json response delay-snippet"></pre>
                    </div>
                </div>
            </div>
        </div>

    </div>

</li>

<li>
    <a href="#" class="menu-item">
        Specify whether or not the shipment has been pre-registered (EDI)
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>Specify whether or not the shipment has been pre-registered (EDI).</p>

            <p>Specified using <code>edi=false</code>.</p>

            <p>This will affect response prices and might affect which products are available.</p>

            <p>Default: <code>true</code></p>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="json" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false"
                           data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false">
                            <pre>../price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false</pre>
                        </a>

                        <p class="right">JSONP Request: <a
                                href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false&amp;callbackUrl=functionName">?callback=functionName</a>
                        </p>
                        <p>Response:</p>
                        <pre class="code-box json response delay-snippet"></pre>
                    </div>
                </div>
            </div>
        </div>

    </div>

</li>

<li>
    <a href="#" class="menu-item">
        Specify if the package was shipped from a post office
        <span class="arrow"></span>
    </a>

    <div class="content-box">

        <div>
            <p>The response data may vary depending on whether or not Bring must collect the shipment, or if the
               customer delivers the shipment from a post office.
            </p>

            <p>This parameter specifies whether or not the package is delivered to a post office before shipping</p>

            <p>Specified using <code>postingAtPostOffice=true</code></p>

            <p>Default: <code>false</code></p>
        </div>

        <div class="">
            <div class="codetabs">
                <div data-tab="json" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true&amp;product=SERVICEPAKKE"
                           data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true&amp;product=SERVICEPAKKE">
                            <pre>../price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;postingAtPostoffice=true&amp;product=SERVICEPAKKE</pre>
                        </a>

                        <p class="right">JSONP Request: <a
                                href="http://fraktguide.bring.no/fraktguide/products/price.xml?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;edi=false&amp;callbackUrl=functionName">?callback=functionName</a>
                        </p>
                        <p>Response:</p>
                        <pre class="code-box json response delay-snippet"></pre>
                    </div>
                </div>

            </div>
        </div>

    </div>

</li>

<li>
    <a href="#" class="menu-item">Adjust prices
        <span class="arrow"></span></a>

    <div class="content-box">
        <div class="row element-sample">

            <p>The Shipping Guide provides adjustment of prices shown. This service is available both in JSON and in
               the <a href="../widget/productselectionashtml.html?from=shipping">Product selection as HTML"-widget.</a>
            </p>

            <p>To adjust the price, add <a
                    href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=m20p">
                &amp;priceAdjustment=m20p</a> to the query.
            </p>

            <p>The parameter is built up in the form [produktkode_][o]10[p]. Parts of the parameter with square brackets
               ( [] ) is optional.
            </p>

            <p>Explanation of the parameters follows:</p>
            <ul>
                <li>
                    <p>produktkode_ used if price adjustments are only made for a single product. Example: <a
                            href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=SERVICEPAKKE_m20">
                        &amp;priceAdjustment=SERVICEPAKKE_m20</a> lowers the price on product Servicepakke with NOK 20.
                    </p>
                </li>

                <li>
                    <p>o specifies the operation to be performed. Operations supported are 'p' for positive, 'm' for
                       negative or blank for a fixed price adjustment. Examples:
                    </p>
                    <ul>
                        <li>
                            <a href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=m20">
                                &amp;priceAdjustment=m20</a> deducts NOK 20 on all products.
                        </li>
                        <li>
                            <a href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=p20">
                                &amp;priceAdjustment=p20</a> adds NOK 20 to all products.
                        </li>
                        <li>
                            <a href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;priceAdjustment=SERVICEPAKKE_79">
                                &amp;priceAdjustment=SERVICEPAKKE_79</a> puts a fixed price on Servicepakke on NOK 79.
                        </li>

                    </ul>
                </li>

                <li>10 indicate the factor to be used in the price adjustment. This number can be a fixed amount or
                    percentage to be added/subtracted, or a fixed price to be added/subtracted depending on other
                    parameters.
                </li>
                <li>p indicate that the operation should be done as a percentage calculation. Note that this is only
                    valid for operations doing additions and subtractions (not fixed prices).
                </li>
            </ul>

            <p>Though <b>not recommended</b>, it is possible to make overlapping queries. If there is a need to do
               multiple simultaneous price adjustments, it should be done on a product-by-product basis using the
               product code prefix.
            </p>

            <p><b>Example:</b> set fixed price of NOK 79 for Servicepakke and deduct 20% on Bedriftspakke Ekspress Over
                               natten 09.
            </p>

            <div class="">
                <div class="codetabs">
                    <div data-tab="json" class="tab">
                        <div class="api-call">
                            <p>Request:</p>
                            <a target="_blank" class="request"
                               href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=EKSPRESS09&amp;priceAdjustment=SERVICEPAKKE_79&amp;priceAdjustment=EKSPRESS09_m20p"
                               data-internal="/proxy/shipping-guide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=EKSPRESS09&amp;priceAdjustment=SERVICEPAKKE_79&amp;priceAdjustment=EKSPRESS09_m20p">
                                   <pre>
.../price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE
             &amp;product=EKSPRESS09
             &amp;priceAdjustment=SERVICEPAKKE_79
             &amp;priceAdjustment=EKSPRESS09_m20p</pre>
                            </a>

                            <p class="right">JSONP Request: <a
                                    href="http://fraktguide.bring.no/fraktguide/products/price.json?from=7600&amp;to=1407&amp;weightInGrams=1500&amp;product=SERVICEPAKKE&amp;product=EKSPRESS09&amp;priceAdjustment=SERVICEPAKKE_79&amp;priceAdjustment=EKSPRESS09_m20p&amp;callbackUrl=functionName">
                                ?callback=functionName </a></p>
                            <p>Response:</p>
                            <pre class="code-box json response delay-snippet"></pre>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>

</li>

</ul>
</div>
</div>



    </div>
</div>
</div>

<%--Additional resources--%>
<div class="span3">

    <div id="sidebar">
        <sidebar:shipping-guide-sidebar />
    </div>

</div>



</div> <!-- .row-fluid -->

</section>

</div><!-- #page -->

</div><!-- .wrapper -->

<misc:footer_v2/> <misc:jqueryblob_v2/>

</body>
</html>