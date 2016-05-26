
package Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScalingPolicy]');


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future
C<DescribeScalingPolicies> request. When the results of a
C<DescribeScalingPolicies> request exceed C<MaxResults>, this value can
be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.



=head2 ScalingPolicies => ArrayRef[L<Paws::ApplicationAutoScaling::ScalingPolicy>]

A list of scaling policy objects.




=cut

1;