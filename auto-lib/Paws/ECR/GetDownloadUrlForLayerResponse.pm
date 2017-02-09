
package Paws::ECR::GetDownloadUrlForLayerResponse;
  use Moose;
  has DownloadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'downloadUrl' );
  has LayerDigest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layerDigest' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetDownloadUrlForLayerResponse

=head1 ATTRIBUTES


=head2 DownloadUrl => Str

The pre-signed Amazon S3 download URL for the requested layer.


=head2 LayerDigest => Str

The digest of the image layer to download.


=head2 _request_id => Str


=cut

1;