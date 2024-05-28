# Creating hash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Creating hash values are one of the most important steps when using the Qvickly API. The hash value is used to verify the integrity of the data sent to the API.
The hash value is created by converting the data section of the payload to a JSON string and then use the secret key creating a 512 bit hmac.

> Please note that even though the data should be using UTF-8 encoding, the content will be converted into ISO-8859-1 in the server. This means that the hash value can be different if the data contains characters that are not supported by then ISO-8859-1 used on the server. (Unsupported characters will be converted into question marks `?` and then hashed which will fail.) 
{style="warning"}

## Example

Let's say that we have a payload that looks like this:

```json
{
    "data": {
        "id": "123456",
        "amount": 100,
        "currency": "SEK"
    }
}
```

The JSON string of the data section would look like this:

```text
{"id":"123456","amount":100,"currency":"SEK"}
```

In this case we assume that the secret key is `1234567890123456`.

<tabs>
<tab title="PHP">
<code-block title="%code-php%" language="php">
<![CDATA[
<?php
$payload = [
    "data" => [
        "id" => "123456",
        "amount" => 100,
        "currency" => "SEK"
    ]
];
$secret = '1234567890123456';
$hash = hash_hmac('sha512', json_encode($payload["data"]), $secret);
print($hash);
]]>
</code-block>
</tab>

<tab title="Python">
<code-block title="%code-python%" language="python">
<![CDATA[
import simplejson
import hmac
import hashlib

payload = {
  "data": {
    "id": "123456",
    "amount": 100,
    "currency": "SEK"
  }
}

key = '1234567890123456'
hash_value = hmac.new(key.encode('utf-8'), simplejson.dumps(payload["data"], separators=(',', ':')).replace('/', '\\/').encode(), hashlib.sha512).hexdigest()

print(hash_value)
]]>
</code-block>

> To make the hash value "compatible" with the corresponding value in PHP the following is done:
> 
> * The separator `(',', ':')` is used to remove all unnecessary whitespace from the JSON string.
> * Note that the `replace('/', '\\\\/')` is used to escape the forward slashes in the JSON string.

</tab>

<tab title="Node.js">
<code-block title="%code-nodejs%" language="javascript">
<![CDATA[
const { createHmac } = require('node:crypto');

const data = {
  "data": {
    "id": "123456",
    "amount": 100,
    "currency": "SEK"
  }
};
const content = JSON.stringify(data["data"]);
const secret = "1234567890123456";
const hash = createHmac('sha512', secret).update(content).digest('hex');
console.log(hash);
]]>
</code-block>
</tab>

<tab title="Deno">
<code-block title="%code-deno%" language="typescript">
<![CDATA[
import { hmac } from "https://deno.land/x/hmac/mod.ts";

const data = {
    "data": {
        "id": "123456",
        "amount": 100,
        "currency": "SEK"
    }
};
const content = JSON.stringify(data["data"]);
const secret = "1234567890123456";

const hash = hmac("sha512", secret, content, "utf-8", "hex")

console.log(hash);
]]>
</code-block>
</tab>

<tab title="Bun">
<code-block title="%code-bun%" language="typescript">
<![CDATA[
import { createHmac } from "crypto";

const data = {
    "data": {
        "id": "123456",
        "amount": 100,
        "currency": "SEK"
    }
};
const content = JSON.stringify(data["data"]);
const secret = "1234567890123456";
const hash = createHmac('sha512', secret).update(content).digest('hex');
console.log(hash);
]]>
</code-block>
</tab>

<tab title="%code-go%">

> Please note that this is a quick and dirty example and should not be used in production.
{style="warning"}

<code-block title="%code-go%" language="go">
<![CDATA[
package main

import (
    "crypto/hmac"
    "crypto/sha512"
    "encoding/hex"
    "encoding/json"
)

type Test struct {
    Id       string `json:"id"`
    Amount   int    `json:"amount"`
    Currency string `json:"currency"`
}

func main() {
    test := &Test{}
    test.Id = "123456"
    test.Amount = 100
    test.Currency = "SEK"
    data, _ := json.Marshal(test)
    secret := "1234567890123456"
    mac := hmac.New(sha512.New, []byte(secret))
    mac.Write(data)
    calculatedMac := mac.Sum(nil)
    hexcode := hex.EncodeToString(calculatedMac)
    println(hexcode)
}
]]>
</code-block>
</tab>

<tab title="%code-csharp%">

> Please note that this is a quick and dirty example and should not be used in production.
{style="warning"}

<code-block title="%code-csharp%" language="csharp">
<![CDATA[
namespace SimpleWork
{
    using System;
    using System.Security.Cryptography;
    using System.Text;
    using Newtonsoft.Json;

    internal class Program
    {
        
        class Test
        {
            [JsonProperty("id")]
            public string Id { get; set; }

            [JsonProperty("amount")]
            public int Amount { get; set; }

            [JsonProperty("currency")]
            public string Currency { get; set; }
        }
        
        public static void Main(string[] args)
        {
            Test test = new Test
            {
                Id = "123456",
                Amount = 100,
                Currency = "SEK"
            };

            string jsonData = JsonConvert.SerializeObject(test);
            string secret = "1234567890123456";

            using (HMACSHA512 hmac = new HMACSHA512(Encoding.UTF8.GetBytes(secret)))
            {
                byte[] data = Encoding.UTF8.GetBytes(jsonData);
                byte[] calculatedMac = hmac.ComputeHash(data);
                string hexcode = BitConverter.ToString(calculatedMac).Replace("-", "").ToLower();
                Console.WriteLine(hexcode);
            }
        }
    }
}
]]>
</code-block>
</tab>

<tab title="%code-rust%">

> Please note that this is a quick and dirty example and should not be used in production.
{style="warning"}

<code-block title="%code-rust%" language="rust">
<![CDATA[
use ring::hmac;
use serde::{Serialize, Deserialize};
use serde_json;

#[derive(Serialize, Deserialize)]
struct MyObject {
id: String,
amount: i32,
currency: String,
}
fn calculate_hmac(key: &[u8], data: &[u8]) -> hmac::Tag {
let signing_key = hmac::Key::new(hmac::HMAC_SHA512, key);
hmac::sign(&signing_key, data)
}

fn main() {
let key = b"1234567890123456";

    let my_object = MyObject {
        id: String::from("123456"),
        amount: 100,
        currency: String::from("SEK"),
    };

    // Serialize the object to a JSON string
    let data = serde_json::to_string(&my_object).expect("Serialization failed");

    let hmac_result = calculate_hmac(key, data.as_bytes());

    // Print the hexadecimal representation of the HMAC-SHA512 result
    for byte in hmac_result.as_ref() {
        print!("{:02x}", byte);
    }
    println!();
}
]]>
</code-block>
</tab>

<tab title="%code-java%">
<code-block title="%code-java%" language="java">
<![CDATA[
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import com.google.gson.Gson;

public class Main {
public static void main(String[] args) throws Exception {
// Create payload
Payload payload = new Payload("123456", 100, "SEK");

        // Convert payload to JSON
        Gson gson = new Gson();
        String payloadJson = gson.toJson(payload);

        // Generate hash using HMAC-SHA512
        String secretKey = "1234567890123456";
        String hash = generateHmacSHA512(payloadJson, secretKey);

        // Print the hash
        System.out.println(hash);
    }

    public static String generateHmacSHA512(String data, String key) throws Exception {
        String algorithm = "HmacSHA512";
        Mac mac = Mac.getInstance(algorithm);
        SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), algorithm);
        mac.init(secretKey);
        byte[] bytes = mac.doFinal(data.getBytes(StandardCharsets.UTF_8));

        StringBuilder result = new StringBuilder();
        for (byte b : bytes) {
            result.append(String.format("%02x", b));
        }
        return result.toString();
    }

    static class Payload {
        String id;
        int amount;
        String currency;

        public Payload(String id, int amount, String currency) {
            this.id = id;
            this.amount = amount;
            this.currency = currency;
        }
    }
}
]]>
</code-block>
</tab>

</tabs>

This should result in the following hash value:
```text
8dde708fea8cfcee68d6817975f37bf9b0c5412f3edfbd1d1d2bca629bd49f06a57bddcaac465ebe8306d25d6e1ff32e8a225c6b58ebef2ea39f51a6777f037a
```

> Please note that the hash value requires that the order of the keys in the JSON string is the same as in the payload. If the order is different, the hash value will be different. Languages such as Perl does not guarantee the order of the keys in the JSON string.
{style="warning"}