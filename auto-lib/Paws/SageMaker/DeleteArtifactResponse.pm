
package Paws::SageMaker::DeleteArtifactResponse;
  use Moose;
  has ArtifactArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteArtifactResponse

=head1 ATTRIBUTES


=head2 ArtifactArn => Str

The Amazon Resource Name (ARN) of the artifact.


=head2 _request_id => Str


=cut

1;