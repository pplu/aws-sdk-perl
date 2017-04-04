
package Paws::ECR::CompleteLayerUploadResponse;
  use Moose;
  has LayerDigest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layerDigest' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::CompleteLayerUploadResponse

=head1 ATTRIBUTES


=head2 LayerDigest => Str

The C<sha256> digest of the image layer.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 UploadId => Str

The upload ID associated with the layer.


=head2 _request_id => Str


=cut

1;