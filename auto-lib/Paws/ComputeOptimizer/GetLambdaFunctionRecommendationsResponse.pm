
package Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse;
  use Moose;
  has LambdaFunctionRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::LambdaFunctionRecommendation]', traits => ['NameInRequest'], request_name => 'lambdaFunctionRecommendations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse

=head1 ATTRIBUTES


=head2 LambdaFunctionRecommendations => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendation>]

An array of objects that describe function recommendations.


=head2 NextToken => Str

The token to use to advance to the next page of function
recommendations.

This value is null when there are no more pages of function
recommendations to return.


=head2 _request_id => Str


=cut

1;