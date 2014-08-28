
package Aws::SES::ListVerifiedEmailAddressesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;