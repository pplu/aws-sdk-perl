
package Paws::ComputeOptimizer::GetEC2InstanceRecommendationsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::GetRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has InstanceRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::InstanceRecommendation]', traits => ['NameInRequest'], request_name => 'instanceRecommendations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEC2InstanceRecommendationsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::GetRecommendationError>]

An array of objects that describe errors of the request.

For example, an error is returned if you request recommendations for an
instance of an unsupported instance family.


=head2 InstanceRecommendations => ArrayRef[L<Paws::ComputeOptimizer::InstanceRecommendation>]

An array of objects that describe instance recommendations.


=head2 NextToken => Str

The token to use to advance to the next page of instance
recommendations.

This value is null when there are no more pages of instance
recommendations to return.


=head2 _request_id => Str


=cut

1;