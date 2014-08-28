
package Aws::Route53Domains::CheckDomainAvailabilityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Availability => (is => 'ro', isa => 'Str', required => 1);

}
1;
