
package Paws::Snowball::GetJobManifestResult;
  use Moose;
  has ManifestURI => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetJobManifestResult

=head1 ATTRIBUTES


=head2 ManifestURI => Str

The Amazon S3 presigned URL for the manifest file associated with the
specified C<JobId> value.


=head2 _request_id => Str


=cut

1;