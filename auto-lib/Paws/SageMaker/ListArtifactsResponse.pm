
package Paws::SageMaker::ListArtifactsResponse;
  use Moose;
  has ArtifactSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ArtifactSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListArtifactsResponse

=head1 ATTRIBUTES


=head2 ArtifactSummaries => ArrayRef[L<Paws::SageMaker::ArtifactSummary>]

A list of artifacts and their properties.


=head2 NextToken => Str

A token for getting the next set of artifacts, if there are any.


=head2 _request_id => Str


=cut

1;