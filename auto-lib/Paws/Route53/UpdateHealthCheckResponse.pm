
package Paws::Route53::UpdateHealthCheckResponse;
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::Route53::HealthCheck', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateHealthCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => L<Paws::Route53::HealthCheck>

A complex type that contains the response to an C<UpdateHealthCheck>
request.




=cut

