
package Paws::Glacier::InitiateMultipartUploadOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has Location => (is => 'ro', isa => Str);
  has UploadId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             },
               'UploadId' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'Location' => 'Location',
                       'UploadId' => 'x-amz-multipart-upload-id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateMultipartUploadOutput

=head1 ATTRIBUTES


=head2 Location => Str

The relative URI path of the multipart upload ID Amazon S3 Glacier
created.


=head2 UploadId => Str

The ID of the multipart upload. This value is also included as part of
the location.


=head2 _request_id => Str


=cut

