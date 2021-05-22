
package Paws::Amplify::GetArtifactUrlResult;
  use Moose;
  has ArtifactId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'artifactId', required => 1);
  has ArtifactUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'artifactUrl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetArtifactUrlResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactId => Str

The unique ID for an artifact.


=head2 B<REQUIRED> ArtifactUrl => Str

The presigned URL for the artifact.


=head2 _request_id => Str


=cut

