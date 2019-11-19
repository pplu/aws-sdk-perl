# Generated from json/callresult_class.tt

package Paws::ECR::InitiateLayerUploadResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ECR::Types qw//;
  has PartSize => (is => 'ro', isa => Int);
  has UploadId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UploadId' => 'uploadId',
                       'PartSize' => 'partSize'
                     },
  'types' => {
               'UploadId' => {
                               'type' => 'Str'
                             },
               'PartSize' => {
                               'type' => 'Int'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


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