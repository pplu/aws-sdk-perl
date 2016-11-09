
package Paws::ECR::InitiateLayerUploadResponse;
  use Moose;
  has PartSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'partSize' );
  has UploadId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::InitiateLayerUploadResponse

=head1 ATTRIBUTES


=head2 PartSize => Int

The size, in bytes, that Amazon ECR expects future layer part uploads
to be.


=head2 UploadId => Str

The upload ID for the layer upload. This parameter is passed to further
UploadLayerPart and CompleteLayerUpload operations.


=head2 _request_id => Str


=cut

1;