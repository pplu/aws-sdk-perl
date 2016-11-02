
package Paws::Route53::GetHealthCheckResponse;
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::Route53::HealthCheck', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => L<Paws::Route53::HealthCheck>

A complex type that contains information about one health check that is
associated with the current AWS account.




=cut

