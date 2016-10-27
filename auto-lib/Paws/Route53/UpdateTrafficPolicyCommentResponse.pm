
package Paws::Route53::UpdateTrafficPolicyCommentResponse;
  use Moose;
  has TrafficPolicy => (is => 'ro', isa => 'Paws::Route53::TrafficPolicy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyCommentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicy => L<Paws::Route53::TrafficPolicy>

A complex type that contains settings for the specified traffic policy.




=cut

