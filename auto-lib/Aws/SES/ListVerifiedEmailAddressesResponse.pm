
package Aws::SES::ListVerifiedEmailAddressesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;