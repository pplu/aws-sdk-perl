
package Paws::Route53::GetHealthCheckStatusResponse;
  use Moose;
  has HealthCheckObservations => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HealthCheckObservation]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckObservations => ArrayRef[L<Paws::Route53::HealthCheckObservation>]

A list that contains one C<HealthCheckObservation> element for each
Amazon Route 53 health checker that is reporting a status about the
health check endpoint.




=cut

