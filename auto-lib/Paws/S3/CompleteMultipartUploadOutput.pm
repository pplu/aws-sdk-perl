
package Paws::S3::CompleteMultipartUploadOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Bucket => (is => 'ro', isa => Str);
  has ETag => (is => 'ro', isa => Str);
  has Expiration => (is => 'ro', isa => Str);
  has Key => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);
  has RequestCharged => (is => 'ro', isa => Str);
  has ServerSideEncryption => (is => 'ro', isa => Str);
  has SSEKMSKeyId => (is => 'ro', isa => Str);
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Expiration' => {
                                 'type' => 'Str'
                               },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ETag' => {
                           'type' => 'Str'
                         },
               'Location' => {
                               'type' => 'Str'
                             },
               'Key' => {
                          'type' => 'Str'
                        },
               'VersionId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInHeader' => {
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'Expiration' => 'x-amz-expiration',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'VersionId' => 'x-amz-version-id',
                       'RequestCharged' => 'x-amz-request-charged'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CompleteMultipartUploadOutput

=head1 ATTRIBUTES


=head2 Bucket => Str





=head2 ETag => Str

Entity tag of the object.



=head2 Expiration => Str

If the object expiration is configured, this will contain the
expiration date (expiry-date) and rule ID (rule-id). The value of
rule-id is URL encoded.



=head2 Key => Str





=head2 Location => Str





=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
master encryption key that was used for the object.



=head2 VersionId => Str

Version of the object.




=cut

