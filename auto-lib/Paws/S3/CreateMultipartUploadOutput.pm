
package Paws::S3::CreateMultipartUploadOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has AbortDate => (is => 'ro', isa => Str);
  has AbortRuleId => (is => 'ro', isa => Str);
  has Bucket => (is => 'ro', isa => Str);
  has Key => (is => 'ro', isa => Str);
  has RequestCharged => (is => 'ro', isa => Str);
  has ServerSideEncryption => (is => 'ro', isa => Str);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str);
  has SSEKMSEncryptionContext => (is => 'ro', isa => Str);
  has SSEKMSKeyId => (is => 'ro', isa => Str);
  has UploadId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'SSEKMSEncryptionContext' => 'x-amz-server-side-encryption-context',
                       'AbortDate' => 'x-amz-abort-date',
                       'AbortRuleId' => 'x-amz-abort-rule-id',
                       'RequestCharged' => 'x-amz-request-charged',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadId' => {
                               'type' => 'Str'
                             },
               'AbortRuleId' => {
                                  'type' => 'Str'
                                },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'AbortDate' => {
                                'type' => 'Str'
                              },
               'SSEKMSEncryptionContext' => {
                                              'type' => 'Str'
                                            },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'Key' => {
                          'type' => 'Str'
                        },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'Bucket' => 'Bucket'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateMultipartUploadOutput

=head1 ATTRIBUTES


=head2 AbortDate => Str

If the bucket has a lifecycle rule configured with an action to abort
incomplete multipart uploads and the prefix in the lifecycle rule
matches the object name in the request, the response includes this
header. The header indicates when the initiated multipart upload
becomes eligible for an abort operation. For more information, see
Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

The response also includes the x-amz-abort-rule-id header that provides
the ID of the lifecycle configuration rule that defines this action.



=head2 AbortRuleId => Str

This header is returned along with the x-amz-abort-date header. It
identifies the applicable lifecycle configuration rule that defines the
action to abort incomplete multipart uploads.



=head2 Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 Key => Str

Object key for which the multipart upload was initiated.



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
customer master key (CMK) that was used for the object.



=head2 UploadId => Str

ID for the initiated multipart upload.




=cut

