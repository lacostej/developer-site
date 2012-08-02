<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="misc" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<html>

<head>
    <misc:contenttype/> <misc:title value="Offline data"/> <misc:css_v2/>
</head>

<body>

<div class="wrapper">

    <misc:header_v2 selected_tab="developer"/>

    <div id="page">
        <section id="content">
            <div class="row-fluid">
                <div class="span9">

                    <div class="box">
                        <h1>Offline data</h1>
                    </div>

                    <div class="box">
                        <p>Offline data lets you download a failover version of the data from the Shipping Guide.</p>


                        <div>By using the <a href="http://fraktguide.bring.no/fraktguide/offlineData.do">Offline Data
                                                                                                         form</a>
                             (Norwegian), you can download price lists, transport times and additional services designed
                             for offline usage. Offline data is suitable as a failover solution if the Shipping Guide
                             does not respond or responds with an error message, or if there are extreme demands on
                             performance.
                        </div>


                        <div><b>Important!</b> With offline data, you have to deal with all the rules of special goods,
                                               shipping calculated weight (volume weight), and more. These rules are
                                               located on the respective product pages on bring.com. Remember to update
                                               the database at price changes!
                        </div>


                        <div>The service is available free of charge, provided acceptance of the terms of use. Note that
                             only registered users will receive notifications of changes in service!
                        </div>


                        <div>For those who use the offline data, we recommend to get the updates automatically via
                             Shipping Guide Web Services.
                        </div>


                        <div><h5>USEFUL XPATHS WHEN PROCESSING OFFLINE DATA</h5>

                            <div><pre class="code-box">Get Price Zone (returns an empty answer if toPostalCode is outside the coverage area for the chosen product):
//Product[@productId='SERVICEPAKKE']//PriceZone[@toPostalCode='2000']/text()

Get Price based on Price Zone "2":
//Product[@productId="SERVICEPAKKE"]//Price[@priceZone="2" and @weight="4000"]/text()

Get transport time:
//Product[@productId='SERVICEPAKKE']//WorkingDays[@toPostalCode="2000"]/text()</pre>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="span3">
                    <div id="sidebar">
                        <misc:sidebar />
                    </div>
                </div>

            </div>

        </section>
    </div>

</div>

<misc:footer_v2/> <misc:jqueryblob_v2/>

</body>
</html>
