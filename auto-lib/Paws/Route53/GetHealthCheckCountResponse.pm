
package Paws::Route53::GetHealthCheckCountResponse;
  use Moose;
  has HealthCheckCount => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckCountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckCount => Int

The number of health checks associated with the current AWS account.




=cut

