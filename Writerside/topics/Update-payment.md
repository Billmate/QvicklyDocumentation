# Update payment

<tabs>
  <tab title="PHP Old">
<code-block lang="PHP">
<![CDATA[
<?php
$test = true;
$ssl = true;
$debug = false;

/* Credentials for Auth */

$id = "12345";
$key = "1234567890";
define("BILLMATE_SERVER", "%API_VERSION%");    /* API version */
define("BILLMATE_CLIENT", "Pluginname:BillMate:1.0");
define("BILLMATE_LANGUAGE", "sv");
$bm = new BillMate($id,$key,$ssl,$test,$debug);
$values = array();

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "number" => "1000235",
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "orderid" => "P123456789",
    "logo" => "Logo2.jpg",
);

/**
* @param array $values : Information about the invoice values.
  */

$values["PaymentInfo"] = array(
    "paymentdate" => "2014-07-31",
    "paymentterms" => "14",
    "yourreference" => "Purchaser X",
    "ourreference" => "Seller Y",
    "projectname" => "Project Z",
    "delivery" => "Post",
    "deliveryterms" => "FOB",
);

$values["Customer"] = array(
    "nr" => "12",
    "pno" => "550101-1018",
    "Billing" => array(
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "Company" => "Company",
        "street" => "Teststreet",
        "street2" => "Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "Sweden",
        "phone" => "0712-345678",
        "email" => "test@developer.billmate.se",
    ),
    "Shipping" => array(
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "Company" => "Company",
        "street" => "Teststreet",
        "street2" => "Shipping Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "Sweden",
        "phone" => "0711-345678",
    )
);

/**
* @param array articles : article details.
  */

$values["Articles"][0] = array(
    "artnr" => "A123",
    "title" => "Article 1",
    "quantity" => "2",
    "aprice" => "1234",
    "taxrate" => "25",
    "discount" => "0",
    "withouttax" => "2468"
);
$values["Articles"][1] = array(
    "artnr" => "B456",
    "title" => "Article 2",
    "quantity" => "3.5",
    "aprice" => "56780",
    "taxrate" => "25",
    "discount" => "10",
    "withouttax" => "178857"
);

/**
* @param array Cart Data : Cart details.
  */

$values["Cart"] = array(
    "Handling" => array(
        "withouttax" => "1000",
        "taxrate" => "25"
    ),
    "Shipping" => array(
        "withouttax" => "3000",
        "taxrate" => "25"
    ),
    "Total" => array(
        "withouttax" => "185325",
        "tax" => "46331",
        "rounding" => "44",
        "withtax" => "231700"
    )
);

$bm->updatePayment($values)
]]>
</code-block>
  </tab>
  <tab title="PHP New">
<code-block lang="PHP">
<![CDATA[
// Work in progress
]]>
</code-block>
  </tab>
  <tab title="C#">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace GetAddress
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Boolean ssl = false;
                Dictionary referrer = new Dictionary();
                referrer["HTTP_X_REAL_IP"] = "127.0.0.1";
                Billmate bm = new Billmate("12345", "1234567890",ssl,true,false,referrer);
                bm.Client = "Pluginname:BillMate:1.0";
                bm.Server = "%API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> values = new Dictionary<string, object>();

                Dictionary<string, string> Paymentdata = new Dictionary<string, string>();
                paymentdata["number"] = "1000235";
                paymentdata["currency"] = "SEK";
                paymentdata["language"] = "sv";
                paymentdata["country"] = "SE";
                paymentdata["orderid"] = "P123456789";
                paymentdata["logo"] = "Logo2.jpg";
                values["PaymentData"] = Paymentdata;

                Dictionary<string, string> Paymentinfo = new Dictionary<string, string>();
                paymentinfo["paymentdate"] = "2014-07-31";
                paymentinfo["paymentterms"] = "14";
                paymentinfo["yourreference"] = "Purchaser X";
                paymentinfo["ourreference"] = "Seller Y";
                paymentinfo["projectname"] = "Project Z";
                paymentinfo["deliverymethod"] = "Post";
                paymentinfo["deliveryterms"] = "FOB";
                values["PaymentInfo"] = Paymentinfo;

                Dictionary<string, object> Customer = new Dictionary<string, object>();
                customer["nr"] = "12";
                customer["pno"] = "550101-1018";
                Dictionary<string, string> Billing = new Dictionary<string, string>();
                billing["firstname"] = "Testperson";
                billing["lastname"] = "Approved";
                billing["company"] = "Company";
                billing["street"] = "Teststreet";
                billing["street2"] = "Street2";
                billing["zip"] = "12345";
                billing["city"] = "Testcity";
                billing["country"] = "Sweden";
                billing["phone"] = "0712-345678";
                billing["email"] = "test@developer.billmate.se";
                customer["Billing"] = Billing;
                Dictionary<string, string> Shipping = new Dictionary<string, string>();
                shipping["firstname"] = "Testperson";
                shipping["lastname"] = "Approved";
                shipping["company"] = "Company";
                shipping["street"] = "Teststreet";
                shipping["street2"] = "Shipping Street2";
                shipping["zip"] = "12345";
                shipping["city"] = "Testcity";
                shipping["country"] = "Sweden";
                shipping["phone"] = "0711-345678";
                customer["Shipping"] = Shipping;
                values["Customer"] = Customer;

                Dictionary<string, string>[] Articles = new Dictionary<string, string>[2];
                Dictionary<string, string> Article0 = new Dictionary<string, string>();
                Article0["artnr"] = "A123";
                Article0["title"] = "Article 1";
                Article0["quantity"] = "2";
                Article0["aprice"] = "1234";
                Article0["taxrate"] = "25";
                Article0["discount"] = "0";
                Article0["withouttax"] = "2468";
                Articles[0] = Article0;
                Dictionary<string, string> Article1 = new Dictionary<string, string>();
                Article1["artnr"] = "B456";
                Article1["title"] = "Article 2";
                Article1["quantity"] = "3.5";
                Article1["aprice"] = "56780";
                Article1["taxrate"] = "25";
                Article1["discount"] = "10";
                Article1["withouttax"] = "178857";
                Articles[1] = Article1;
                values["Articles"] = Articles;


                Dictionary<string, object> Cart = new Dictionary<string, object>();

                Dictionary<string, string> Handlingfee = new Dictionary<string, string>();
                handlingfee["withouttax"] = "1000";
                handlingfee["taxrate"] = "25";
                cart["Handling"] = Handlingfee;

                Dictionary<string, string> Shippingfee = new Dictionary<string, string>();
                shippingfee["withouttax"] = "3000";
                shippingfee["taxrate"] = "25";
                cart["Shipping"] = Shippingfee;

                Dictionary<string, string> Total = new Dictionary<string, string>();
                total["withouttax"] = "185325";
                total["tax"] = "46331";
                total["rounding"] = "44";
                total["withtax"] = "231700";
                cart["Total"] = Total;

                values["Cart"] = Cart;

                Dictionary<string, object> result = bm.Call("updatePayment", values);
                // Output it in Console
                result.ToList().ForEach(x => Console.WriteLine(x.Key + ":" + x.Value));

            }
            catch (BillmateException be)
            {
                Console.WriteLine(be.ErrorMessage);
                Console.WriteLine(be.ErrorLogs);
            }


            Console.ReadLine();
        }
    }
}
]]>
</code-block>
  </tab>
  <tab title="Python">
<code-block lang="Python">
<![CDATA[
# Work in progress
]]>
</code-block>
  </tab>
</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "cea23742339896d70a3ba5ade87f96de9c46827d6fb1d964eb9cd1754681d16a4d00efa0d6ce771819e9fa92a1383d3f9dc7d7321dd564c088881899e0e7e65f"
    },
    "data": {
        "number": "1000235",
        "orderid": "12345",
        "status": "Created",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>