
package Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPlanResources => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingPlanResource]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingPlanResources => ArrayRef[L<Paws::AutoScalingPlans::ScalingPlanResource>]

Information about the scalable resources.


=head2 _request_id => Str


=cut

1;