
package Paws::Route53::UpdateTrafficPolicyInstanceResponse;
  use Moose;
  has TrafficPolicyInstance => (is => 'ro', isa => 'Paws::Route53::TrafficPolicyInstance', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicyInstance => L<Paws::Route53::TrafficPolicyInstance>

A complex type that contains settings for the updated traffic policy
instance.




=cut

