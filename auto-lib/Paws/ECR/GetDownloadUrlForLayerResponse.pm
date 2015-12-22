
package Paws::ECR::GetDownloadUrlForLayerResponse;
  use Moose;
  has DownloadUrl => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'downloadUrl' );
  has LayerDigest => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'layerDigest' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetDownloadUrlForLayerResponse

=head1 ATTRIBUTES


=head2 DownloadUrl => Str

  The pre-signed Amazon S3 download URL for the requested layer.

=head2 LayerDigest => Str

  The digest of the image layer to download.


=cut

1;