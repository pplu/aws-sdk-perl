
package Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingActivities => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScalingActivity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingActivities => ArrayRef[L<Paws::ApplicationAutoScaling::ScalingActivity>]

A list of scaling activity objects.


=head2 _request_id => Str


=cut

1;