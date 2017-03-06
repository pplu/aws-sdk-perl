
package Paws::GameLift::DescribeScalingPoliciesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ScalingPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScalingPoliciesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 ScalingPolicies => ArrayRef[L<Paws::GameLift::ScalingPolicy>]

Collection of objects containing the scaling policies matching the
request.


=head2 _request_id => Str


=cut

1;