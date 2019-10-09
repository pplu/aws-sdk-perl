
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
  'types' => {
               'Bucket' => {
                             'type' => 'Str'
                           },
               'AbortRuleId' => {
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
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'AbortDate' => {
                                'type' => 'Str'
                              },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'SSEKMSEncryptionContext' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadId' => {
                               'type' => 'Str'
                             },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'ParamInHeader' => {
                       'AbortRuleId' => 'x-amz-abort-rule-id',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'RequestCharged' => 'x-amz-request-charged',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'AbortDate' => 'x-amz-abort-date',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSEKMSEncryptionContext' => 'x-amz-server-side-encryption-context'
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

Date when multipart upload will become eligible for abort operation by
lifecycle.



=head2 AbortRuleId => Str

Id of the lifecycle rule that makes a multipart upload eligible for
abort operation.



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
master encryption key that was used for the object.



=head2 UploadId => Str

ID for the initiated multipart upload.




=cut

