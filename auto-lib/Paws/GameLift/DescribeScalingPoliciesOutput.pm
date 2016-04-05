
package Paws::GameLift::DescribeScalingPoliciesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ScalingPolicy]');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScalingPoliciesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token indicating where to resume retrieving results on the next call to
this action. If no token is returned, these results represent the end
of the list.

If a request has a limit that exactly matches the number of remaining
results, a token is returned even though there are no more results to
retrieve.



=head2 ScalingPolicies => ArrayRef[L<Paws::GameLift::ScalingPolicy>]

Collection of objects containing the scaling policies matching the
request.




=cut

1;