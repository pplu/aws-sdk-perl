
package Paws::ELB::ConfigureHealthCheckOutput;
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::ELB::HealthCheck');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ConfigureHealthCheckOutput

=head1 ATTRIBUTES


=head2 HealthCheck => L<Paws::ELB::HealthCheck>

The updated health check.


=head2 _request_id => Str


=cut

