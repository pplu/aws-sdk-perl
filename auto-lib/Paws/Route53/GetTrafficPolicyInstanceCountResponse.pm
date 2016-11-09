
package Paws::Route53::GetTrafficPolicyInstanceCountResponse;
  use Moose;
  has TrafficPolicyInstanceCount => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetTrafficPolicyInstanceCountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicyInstanceCount => Int

The number of traffic policy instances that are associated with the
current AWS account.




=cut

