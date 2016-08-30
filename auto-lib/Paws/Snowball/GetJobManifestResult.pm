
package Paws::Snowball::GetJobManifestResult;
  use Moose;
  has ManifestURI => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetJobManifestResult

=head1 ATTRIBUTES


=head2 ManifestURI => Str

The Amazon S3 presigned URL for the manifest file associated with the
specified C<JobId> value.




=cut

1;