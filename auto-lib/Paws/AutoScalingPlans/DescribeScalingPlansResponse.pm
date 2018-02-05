
package Paws::AutoScalingPlans::DescribeScalingPlansResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPlans => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingPlan]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::DescribeScalingPlansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingPlans => ArrayRef[L<Paws::AutoScalingPlans::ScalingPlan>]

Information about the scaling plans.


=head2 _request_id => Str


=cut

1;