
package Paws::SES::GetIdentityDkimAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DkimAttributes => (is => 'ro', isa => 'Paws::SES::DkimAttributes', required => 1);

}
1;