
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'ETag' => {
                           'type' => 'Str'
                         },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'Expiration' => {
                                 'type' => 'Str'
                               },
               'Location' => {
                               'type' => 'Str'
                             },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'Key' => {
                          'type' => 'Str'
                        },
               'Bucket' => {
                             'type' => 'Str'
                           }
             },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged',
                       'VersionId' => 'x-amz-version-id',
                       'Expiration' => 'x-amz-expiration',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id'
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

The name of the bucket that contains the newly created object.



=head2 ETag => Str

Entity tag that identifies the newly created object's data. Objects
with different object data will have different entity tags. The entity
tag is an opaque string. The entity tag may or may not be an MD5 digest
of the object data. If the entity tag is not an MD5 digest of the
object data, it will contain one or more nonhexadecimal characters
and/or will consist of less than 32 or more than 32 hexadecimal digits.



=head2 Expiration => Str

If the object expiration is configured, this will contain the
expiration date (expiry-date) and rule ID (rule-id). The value of
rule-id is URL encoded.



=head2 Key => Str

The object key of the newly created object.



=head2 Location => Str

The URI that identifies the newly created object.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

If you specified server-side encryption either with an Amazon
S3-managed encryption key or an AWS KMS customer master key (CMK) in
your initiate multipart upload request, the response includes this
header. It confirms the encryption algorithm that Amazon S3 used to
encrypt the object.

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
customer master key (CMK) that was used for the object.



=head2 VersionId => Str

Version ID of the newly created object, in case the bucket has
versioning turned on.




=cut

