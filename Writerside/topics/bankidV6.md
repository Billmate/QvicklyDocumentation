# bankidV6

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

## GET /bankidV6

{type="narrow"}
Endpoint
: ```/bankidV6```

Method
: GET

Verify the BankID authentication.

### Headers verify

| Header       | Required | Type   | Description |
|--------------|----------|--------|-------------|
| x-auth-token | yes      | string | JWT token   |



### Response verify



## POST /bankidV6

{type="narrow"}
Method
: POST

Start a new authentication process with BankID.

### Request authenticate

| Parameter      | Required | Type   | Description                     |
|----------------|----------|--------|---------------------------------|
| personalNumber | yes      | string | The personal number of the user |
| endUserIp      | no       | string | The IP address of the user      |

### Response authenticate

```json
{
    "orderRef": "1c644915-a30d-4b4c-8429-5bdbe0d24de5",
    "autoStartToken": "d1412e66-943e-4f32-a2ac-b003b5497b1c",
    "qrStartToken": "8c4a9e9b-e2ac-4ae4-82c3-d67f3b4baa01",
    "hashes": [
        "90454d9729482366e303d7150b098e06cacd60a4fff62e930cf4fca36a704ca5",
        "21e4c39874724016d3c37c2e1f61dba074795a082fcb5e6b659711c0e7afda04",
        "623761da3ea46bd8ba3f7bc6d9c62c2f6f2ba0a473f39e722f25160c708932c4",
        "83adadc65c56dede13d7307c4b5a7f073d705f0eeaec6a4b95474f759047700c",
        "84edadc433f72f5cdd69acbe3d95a00d49567c00c341c6a3e31a1e119fd456a3",
        "0585bc2d7e2bcb1c37ceb0b84fa2984e7d23a3f72a33675d5222f5194a2fa3ce",
        "e6d79f5a636e9ba81bb572d7a166b77d9f725d555996bff34217001352e15d61",
        "47fc2b94a3edd8591f1c2ae3328544ffb49efc6ae6b2f5badb6d873e340a2475",
        "58ce2e6ad746be3bdb9bc2467d0118e155dbe4cd52febb1a536ce7eb4736612c",
        "b95e022de7ec1037b1ad63637911ba532282663d8be2a67a14e4a7033e6e589c",
        "ba780142a0a40576434ae4ba668ac364a800c35f7696501e83967acb097006e0",
        "eb253d94c6c7687e1ff69a9e90ade7fba552fba8bf81d90e42d19a252fd5ba3b",
        "8c0028072c1c6bcebffb0fa337e833d5b739595794f9e22ff985de1b37859bec",
        "dd6174965a5b0269715c9d3b10a7d70a57b6a8e62b50696cafd74cbaf9fef33d",
        "9e21f4ebdb1161500314b115834de25dfbca485b9d31e52ee79fe47a4154557b",
        "2ff90388bbbe2ee1b5c42e08587418f113513b32d74f418417b65726ea267dc1",
        "006131bc3024fe058016125f41711bbcc8c72999b68f873e3d7839ebc37954cd",
        "016c43dd5dcb9020e7c99678b1c54bbac5a32d6b8293457ece720013f50c2b06",
        "52c7a5e420b55a5eb87ced2e731786f5d4516809555501e6ceef82f9a2d830a4",
        "f3261c338930a00a47caf2584d9d2e4e0879d7b107b4c6f724252a7a79edf2bb",
        "447106835baff5614e71d8e773fbf6bd89d357453f5ce0c1f125acdeda1283ea",
        "a5b710f64203028586b6d61e9faeac4a34766179efe442e3611b1d0f91ace0cf",
        "16606490d78afe9a91e184c34e7e9573000972722bb240b265c1b87e10656eb3",
        "d7b866b2ecda3f0025c1a452a7726a75ad4361759159d73c4c3e464519202a26",
        "d87dca2540d2384b0d4e0d43727c6eb825cb422ef5a65a11db2c4d723d9fdc1c",
        "e9f6d8ff7ad451e82f888d212cfdc067ae78faf8985d0925cfbfa03986d190da",
        "5a4a886d4fff09e61e9dcb45376709dc3c4e22aff396eda9bf5bf28da3bd046d",
        "8b17e6788d1b7fb41943f3636cc51060d7a3606a67c23620fbfa4e53b119e116",
        "ec96ac5afe944796222da7ce7d34df2321c35ee92a35e9bace84d11504a60dc9",
        "8dc0bb725f36f2b891387dba1ff2e21d40e4b31cb9c398d7d55ac6727386e5d0"
    ]
}
```


For an example see [here](Auth-Example-bankidLogin.md)

