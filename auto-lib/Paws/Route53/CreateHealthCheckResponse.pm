
package Paws::Route53::CreateHealthCheckResponse;
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::Route53::HealthCheck', required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHealthCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => L<Paws::Route53::HealthCheck>

A complex type that contains identifying information about the health
check.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new health check.




=cut

