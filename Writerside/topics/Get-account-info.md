# Get account info

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
define("BILLMATE_CLIENT", "%CLIENT_NAME%");
define("BILLMATE_LANGUAGE", "sv");
$bm = new BillMate($id, $key, $ssl, $test, $debug);
$values = array();

$bm->getAccountinfo($values);
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

namespace GetAccountInfo
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
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                Dictionary<string, object> result = bm.Call("getAccountinfo", parameters);
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
# Work in progress
]]>
</code-block>
  </tab>
</tabs>

## Response from server
<code-block lang="JSON">
{
    "credentials": {
        "hash": "3f8b36d6daa225bfa4a714335730f045f81f1b5111a1ed272164a99c56f15e295bca643912ac30b2920a14e53ee6134f0aa616c0ebcd8eab596264a1ff0f080e",
        "logid": "163642"
    },
    "data": {
        "company": "Billmate AB",
        "address": "Gustav Adolfs Torg 47",
        "zip": "211 39",
        "city": "MALMÖ",
        "country": "Sweden",
        "phone": "040 - 30 35 00",
        "email": "support@developer.billmate.se",
        "orgregnr": "556918-4129",
        "vatregnr": "SE556918412901",
        "language": "sv",
        "paymentoptions": [
            {
                "method": "1",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "2",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "4",
                "currency": "SEK",
                "language": "sv,da,no,en"
            },
            {
                "method": "8",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "16",
                "currency": "SEK",
                "language": "sv"
            },
            {
                "method": "32",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            }
        ],
        "defaultpaymentterms_company": "20",
        "defaultpaymentterms_private": "14",
        "checkout": "1",
        "force2have18years": "0",
        "force2havepno": "1",
        "force2havephonenumber": "1",
        "locknameforshipping": "0",
        "checkoutAvailableCustomerTypes": [
            "company",
            "person"
        ],
        "logo": "https://mobilfakturera.se/mexc/attachments/companylogos/4913/00070813124735.png"
    }
}
</code-block>