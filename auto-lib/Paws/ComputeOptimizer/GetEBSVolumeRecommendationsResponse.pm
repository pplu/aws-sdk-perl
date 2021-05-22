
package Paws::ComputeOptimizer::GetEBSVolumeRecommendationsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::GetRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VolumeRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::VolumeRecommendation]', traits => ['NameInRequest'], request_name => 'volumeRecommendations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEBSVolumeRecommendationsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::GetRecommendationError>]

An array of objects that describe errors of the request.

For example, an error is returned if you request recommendations for an
unsupported volume.


=head2 NextToken => Str

The token to use to advance to the next page of volume recommendations.

This value is null when there are no more pages of volume
recommendations to return.


=head2 VolumeRecommendations => ArrayRef[L<Paws::ComputeOptimizer::VolumeRecommendation>]

An array of objects that describe volume recommendations.


=head2 _request_id => Str


=cut

1;