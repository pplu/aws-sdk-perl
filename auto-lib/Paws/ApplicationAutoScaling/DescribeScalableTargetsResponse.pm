
package Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalableTargets => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScalableTarget]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalableTargets => ArrayRef[L<Paws::ApplicationAutoScaling::ScalableTarget>]

The scalable targets that match the request parameters.


=head2 _request_id => Str


=cut

1;