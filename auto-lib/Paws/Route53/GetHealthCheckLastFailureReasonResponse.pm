
package Paws::Route53::GetHealthCheckLastFailureReasonResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has HealthCheckObservations => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HealthCheckObservation]', required => 1);

}
1;