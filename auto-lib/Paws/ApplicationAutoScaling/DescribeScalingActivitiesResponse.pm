
package Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingActivities => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScalingActivity]');


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future
C<DescribeScalingActivities> request. When the results of a
C<DescribeScalingActivities> request exceed C<MaxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.



=head2 ScalingActivities => ArrayRef[L<Paws::ApplicationAutoScaling::ScalingActivity>]

A list of scaling activity objects.




=cut

1;