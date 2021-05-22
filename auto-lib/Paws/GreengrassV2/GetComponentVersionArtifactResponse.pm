
package Paws::GreengrassV2::GetComponentVersionArtifactResponse;
  use Moose;
  has PreSignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preSignedUrl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetComponentVersionArtifactResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PreSignedUrl => Str

The URL of the artifact.


=head2 _request_id => Str


=cut

