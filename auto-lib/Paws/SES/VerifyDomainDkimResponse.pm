
package Paws::SES::VerifyDomainDkimResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;