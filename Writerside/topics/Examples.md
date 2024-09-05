# Examples

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>


| Platform         | Verified                            | Complete                            | Description                                                                                                                                                                            |
|------------------|-------------------------------------|-------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| %code-json%      | 27/%NUMBER_OF_PAYMENT_API_EXAMPLES% | 27/%NUMBER_OF_PAYMENT_API_EXAMPLES% | JSON basic example payloads. Updated 2024.                                                                                                                                             |
| %code-python%    | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | Python3 code. Updated 2024.                                                                                                                                                            |
| %code-node%      | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | Node.JS code. Updated 2024.                                                                                                                                                            |
| %code-bun%       | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | Bun code. Updated 2024.                                                                                                                                                                |
| %code-deno%      | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | Deno code. Updated 2024.                                                                                                                                                               |
| %code-phplegacy% | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | Old PHP code, refreshed and moved from our old API documentation. This code is based on PHP5.                                                                                          |
| %code-perl%      | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | Hashes in Perl doesn't keep the same order for properties from time to time which makes hashing a pain. The available code relies on hacks with Tie::IxHash and Monkey::Patch to work. |
| %code-php%       | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | 26/%NUMBER_OF_PAYMENT_API_EXAMPLES% | New PHP code. Updated 2024 to a more modern style.                                                                                                                                     |
| %code-csharp%    | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | 11/%NUMBER_OF_PAYMENT_API_EXAMPLES% | C# code, moved from our old API documentation.                                                                                                                                         |
| %code-go%        | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | Go has some issues with the strict typing. The solution will probably be based on interface and that might not be a favorite amongst hard core purists.                                |
| %code-java%      | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | Java is not a prioritized language and will ba added at a later stage.                                                                                                                 |
| %code-rust%      | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | 0/%NUMBER_OF_PAYMENT_API_EXAMPLES%  | Rust is coming as soon as we've managed to learn best practices.                                                                                                                       |

> **Platform** - The programming language used.
> 
> **Verified** - The code has been verified to work.
> 
> **Complete** - The examples is complete and in sync with the documented functions.
> 
> **Description** - A short description of the example.

_Please note that if the code is not verified, it might not work as expected. The code is updated on a regular basis and we are working on getting all examples verified where applicable._

All old examples has been undergoing verification and has been updated. The old Billmate class has been updated to work better with PHP 8.x and changed name to PaymentAPI.

The old PHP examples has been updated to work with PHP8.

The Python code is based on a new package.

The Node.JS code is based on a new package.

The old C# code will not be updated at this time.

The Perl code has a few hacks using Tie::IxHash to keep the order of the properties in the JSON. It also uses Monkey::Patch to keep JSON::PP handling hashes correctly.
The library itself is a quick and dirty solution to get the code working. It is maybe not the best example of how to write Perl code.

## Node.JS vs Deno vs Bun
Even though Node.JS is the most popular platform for JavaScript, it has some issues with the strict typing. The solution will probably be based on interface and that might not be a favorite amongst hard core purists.

The code for Node.JS, Deno and Bun is very similar but have some minor differences.

Both Bun and Deno are new platforms and are not yet widely used. We will add examples for these platforms when we have the time and resources to do so.
