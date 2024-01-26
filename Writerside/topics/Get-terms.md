# Get terms

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
define("BILLMATE_SERVER", "2.1.7"); // API version
define("BILLMATE_CLIENT", "Pluginname:BillMate:1.0");
define("BILLMATE_LANGUAGE", "sv");
$bm = new BillMate($id, $key, $ssl, $test, $debug);
$values = array();

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "method" => "1",
    "paymentplanid" => ""
);
/**
* @param array Cart Data : Cart details.
  */

$values["Cart"] = array(
    "Total" => array(
        "withtax" => "231700"
    )
);

$bm->getTerms($values);
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

namespace GetTerms  
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
                Billmate bm = new Billmate("12345", "1234567890",ssl,%(test),false,referrer);
                bm.Client = "Pluginname:BillMate:1.0";
                bm.Server = "%API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> Paymentdata = new Dictionary<string, object>();
                paymentdata["method"] = "1";
                paymentdata["paymentplanid"] = "";
                values["PaymentData"] = Paymentdata;

                Dictionary<string, object> Cart = new Dictionary<string, object>();

                Dictionary<string, string> Total = new Dictionary<string, string>();
                total["withtax"] = "231700";
                cart["Total"] = Total;

                values["Cart"] = Cart;

                Dictionary<string, object> result = bm.Call("getTerms", values);
                // Output it in Console
                result.ToList().ForEach(x => Console.WriteLine(x.Key + ":" + x.Value));

            }
            catch (BillmateException be) {
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
import json
import os

from QvicklyPackage import API
from QvicklyPackage.API import APIPayload

billmate_id = os.getenv("BILLMATE_ID")
secret = os.getenv("SECRET")
mypno = os.getenv("MY_PNO")

api_connection = API.APIConnection(billmate_id, secret, devMode=True)

api_connection.setValidateResult()

terms = api_connection.getTerms(1, 250000)
]]>
</code-block>
  </tab>
</tabs>

## Response from server
<code-block lang="text">
<![CDATA[
Köpvillkor


Handla nu - betala först efter leverans!

När du betalar via faktura administreras denna av Billmate AB vilket innebär att du handlar tryggt och enkelt. Du slipper uppge dina kortuppgifter och betalar först efter att du mottagit dina varor. Fakturan skickas via e-post till den e-post adress du anger vid köptillfället.

Billmate Faktura erbjuder dig följande:

Få alltid hem varan innan du betalar


14 dagars betalningstid


Du behöver aldrig lämna ut känslig information


Alltid 14 dagars ångerrätt i enlighet med distans- och hemförsäljningslagen*


Tillgång till dina fakturor via Billmate Online


Möjlighet till delbetalning

Vid försenad betalning tillkommer lagstadgad påminnelse-/förseningsavgift samt dröjsmålsränta om 2 % per månad. Vid utebliven betalning överlämnas fakturan till inkasso. För att kunna beställa mot faktura måste beställaren vara ett registrerat svenskt företag eller en person över 18 år, vara folkbokförd i Sverige samt godkännas i den kreditprövning som genomförs vid köpet. Kreditprövningen kan i vissa fall innebära att en kreditupplysning tas. I sådana fall kommer ni bli meddelade om detta postledes eller via e-post. Kreditupplysningen sköts via CreditSafe och är inget som belastar när man ansöker om kredit hos kreditinstitut.

Billmate AB har rätt att utföra stickprovskontroller för att säkerställa så fakturan är korrekt.
Personuppgifter hanteras i enlighet med gällande lagstiftning. Billmate AB behandlar personuppgifter i syfte att utföra kundanalys, identifikation, kreditkoll samt marknadsföring. Personnummer kan används som kundnummer i kundhanteringssyfte


Billmate AB
Organisationsnummer: 556918-4129
Telefonnummer: 040-30 35 00
Email: info@developer.billmate.se
Webb: www.developer.billmate.se

* Gäller ej för alla varor och tjänster, t ex. flygresor, evenemang och specialtillverkade varor.
]]>
</code-block>