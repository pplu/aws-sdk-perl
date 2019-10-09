
package Paws::S3::CopyObjectOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_CopyObjectResult/;
  has CopyObjectResult => (is => 'ro', isa => S3_CopyObjectResult);
  has CopySourceVersionId => (is => 'ro', isa => Str);
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
  'types' => {
               'Expiration' => {
                                 'type' => 'Str'
                               },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'CopyObjectResult' => {
                                       'class' => 'Paws::S3::CopyObjectResult',
                                       'type' => 'S3_CopyObjectResult'
                                     },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'SSEKMSEncryptionContext' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'CopySourceVersionId' => {
                                          'type' => 'Str'
                                        }
             },
  'ParamInHeader' => {
                       'Expiration' => 'x-amz-expiration',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'RequestCharged' => 'x-amz-request-charged',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSEKMSEncryptionContext' => 'x-amz-server-side-encryption-context',
                       'VersionId' => 'x-amz-version-id',
                       'CopySourceVersionId' => 'x-amz-copy-source-version-id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CopyObjectOutput

=head1 ATTRIBUTES


=head2 CopyObjectResult => S3_CopyObjectResult





=head2 CopySourceVersionId => Str





=head2 Expiration => Str

If the object expiration is configured, the response includes this
header.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

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

If present, specifies the ID of the AWS Key Management Service (KMS)
master encryption key that was used for the object.



=head2 VersionId => Str

Version ID of the newly created copy.




=cut

