# Methods

| Method  | Description          | Multiple | Note                           |
|---------|----------------------|----------|--------------------------------|
| 1       | Invoice Factoring    | No       |                                |
| 2       | Invoice Service      | No       |                                |
| 4       | Invoice Part Payment | No       |                                |
| 8       | Card                 | Yes      | Can be combined with 16 (Bank) |
| 16      | Bank                 | Yes      | Can be combined with 8 (Card)  |
| 24      | Card/Bank            | No       |                                |
| 32      | Cash (Receipt).      | No       |                                |
| 64      | Checkout             | Yes      |                                |
| 128     | Simple payment       | Yes      |                                |
| 256     | Paylink              | Yes      |                                |
| 266     | Card (Seamless)      | No       |                                |
| 512     | Swish                | No       |                                |
| 1024    | Swish                | No       |                                |
| 2048    | myQvickly            | No       |                                |

## Multiple
Multiple means that the method can be used in combination with other methods. For example, if you want to use Paylink with Card, you would use the value 256+8=264.

> Please note that 266 is a special case and should not be used in combination with other methods.
{style="note"}