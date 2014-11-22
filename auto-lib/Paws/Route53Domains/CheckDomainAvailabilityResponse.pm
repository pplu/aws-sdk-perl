
package Paws::Route53Domains::CheckDomainAvailabilityResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Availability => (is => 'ro', isa => 'Str', required => 1);

}
1;