
package Paws::S3::ListMultipartUploadsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::S3::Types qw/S3_MultipartUpload S3_CommonPrefix/;
  has Bucket => (is => 'ro', isa => Str);
  has CommonPrefixes => (is => 'ro', isa => ArrayRef[S3_CommonPrefix]);
  has Delimiter => (is => 'ro', isa => Str);
  has EncodingType => (is => 'ro', isa => Str);
  has IsTruncated => (is => 'ro', isa => Bool);
  has KeyMarker => (is => 'ro', isa => Str);
  has MaxUploads => (is => 'ro', isa => Int);
  has NextKeyMarker => (is => 'ro', isa => Str);
  has NextUploadIdMarker => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has UploadIdMarker => (is => 'ro', isa => Str);
  has Uploads => (is => 'ro', isa => ArrayRef[S3_MultipartUpload]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Uploads' => {
                              'class' => 'Paws::S3::MultipartUpload',
                              'type' => 'ArrayRef[S3_MultipartUpload]'
                            },
               'KeyMarker' => {
                                'type' => 'Str'
                              },
               'NextKeyMarker' => {
                                    'type' => 'Str'
                                  },
               'MaxUploads' => {
                                 'type' => 'Int'
                               },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'UploadIdMarker' => {
                                     'type' => 'Str'
                                   },
               'NextUploadIdMarker' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Delimiter' => {
                                'type' => 'Str'
                              },
               'EncodingType' => {
                                   'type' => 'Str'
                                 },
               'CommonPrefixes' => {
                                     'class' => 'Paws::S3::CommonPrefix',
                                     'type' => 'ArrayRef[S3_CommonPrefix]'
                                   }
             },
  'NameInRequest' => {
                       'Uploads' => 'Upload'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListMultipartUploadsOutput

=head1 ATTRIBUTES


=head2 Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 CommonPrefixes => ArrayRef[S3_CommonPrefix]





=head2 Delimiter => Str





=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

Valid values are: C<"url">

=head2 IsTruncated => Bool

Indicates whether the returned list of multipart uploads is truncated.
A value of true indicates that the list was truncated. The list can be
truncated if the number of multipart uploads exceeds the limit allowed
or specified by max uploads.



=head2 KeyMarker => Str

The key at or after which the listing began.



=head2 MaxUploads => Int

Maximum number of multipart uploads that could have been included in
the response.



=head2 NextKeyMarker => Str

When a list is truncated, this element specifies the value that should
be used for the key-marker request parameter in a subsequent request.



=head2 NextUploadIdMarker => Str

When a list is truncated, this element specifies the value that should
be used for the upload-id-marker request parameter in a subsequent
request.



=head2 Prefix => Str

When a prefix is provided in the request, this field contains the
specified prefix. The result contains only keys starting with the
specified prefix.



=head2 UploadIdMarker => Str

Upload ID after which listing began.



=head2 Uploads => ArrayRef[S3_MultipartUpload]






=cut

