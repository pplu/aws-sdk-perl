
package Paws::S3::PutObjectOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has ETag => (is => 'ro', isa => Str);
  has Expiration => (is => 'ro', isa => Str);
  has RequestCharged => (is => 'ro', isa => Str);
  has ServerSideEncryption => (is => 'ro', isa => Str);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str);
  has SSEKMSEncryptionContext => (is => 'ro', isa => Str);
  has SSEKMSKeyId => (is => 'ro', isa => Str);
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'Expiration' => 'x-amz-expiration',
                       'RequestCharged' => 'x-amz-request-charged',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'SSEKMSEncryptionContext' => 'x-amz-server-side-encryption-context',
                       'VersionId' => 'x-amz-version-id',
                       'ETag' => 'ETag'
                     },
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
               'SSEKMSEncryptionContext' => {
                                              'type' => 'Str'
                                            },
               'Expiration' => {
                                 'type' => 'Str'
                               },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectOutput

=head1 ATTRIBUTES


=head2 ETag => Str

Entity tag for the uploaded object.



=head2 Expiration => Str

If the expiration is configured for the object (see
PutBucketLifecycleConfiguration), the response includes this header. It
includes the expiry-date and rule-id key-value pairs that provide
information about object expiration. The value of the rule-id is URL
encoded.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

If you specified server-side encryption either with an AWS KMS customer
master key (CMK) or Amazon S3-managed encryption key in your PUT
request, the response includes this header. It confirms the encryption
algorithm that Amazon S3 used to encrypt the object.

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header confirming the
encryption algorithm used.



=head2 SSECustomerKeyMD5 => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide round trip
message integrity verification of the customer-provided encryption key.



=head2 SSEKMSEncryptionContext => Str

If present, specifies the AWS KMS Encryption Context to use for object
encryption. The value of this header is a base64-encoded UTF-8 string
holding JSON with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

If the x-amz-server-side-encryption is present and has the value of
aws:kms, this header specifies the ID of the AWS Key Management Service
(KMS) customer master key (CMK) that was used for the object.



=head2 VersionId => Str

Version of the object.




=cut

