
package Paws::ComputeOptimizer::GetAutoScalingGroupRecommendationsResponse;
  use Moose;
  has AutoScalingGroupRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::AutoScalingGroupRecommendation]', traits => ['NameInRequest'], request_name => 'autoScalingGroupRecommendations' );
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::GetRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetAutoScalingGroupRecommendationsResponse

=head1 ATTRIBUTES


=head2 AutoScalingGroupRecommendations => ArrayRef[L<Paws::ComputeOptimizer::AutoScalingGroupRecommendation>]

An array of objects that describe Auto Scaling group recommendations.


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::GetRecommendationError>]

An array of objects that describe errors of the request.

For example, an error is returned if you request recommendations for an
unsupported Auto Scaling group.


=head2 NextToken => Str

The token to use to advance to the next page of Auto Scaling group
recommendations.

This value is null when there are no more pages of Auto Scaling group
recommendations to return.


=head2 _request_id => Str


=cut

1;