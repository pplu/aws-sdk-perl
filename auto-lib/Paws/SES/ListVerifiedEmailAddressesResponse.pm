
package Paws::SES::ListVerifiedEmailAddressesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;