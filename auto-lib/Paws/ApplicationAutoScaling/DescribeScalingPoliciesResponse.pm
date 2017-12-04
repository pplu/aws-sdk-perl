
package Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScalingPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingPolicies => ArrayRef[L<Paws::ApplicationAutoScaling::ScalingPolicy>]

Information about the scaling policies.


=head2 _request_id => Str


=cut

1;