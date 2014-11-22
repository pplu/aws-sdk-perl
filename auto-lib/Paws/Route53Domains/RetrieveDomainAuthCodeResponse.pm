
package Paws::Route53Domains::RetrieveDomainAuthCodeResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AuthCode => (is => 'ro', isa => 'Str', required => 1);

}
1;