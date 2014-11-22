
package Paws::Support::DescribeTrustedAdvisorChecksResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has checks => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckDescription]', required => 1);

}
1;