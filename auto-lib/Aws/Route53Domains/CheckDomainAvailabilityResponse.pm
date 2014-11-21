
package Aws::Route53Domains::CheckDomainAvailabilityResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Availability => (is => 'ro', isa => 'Str', required => 1);

}
1;