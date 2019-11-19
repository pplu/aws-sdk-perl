
package Paws::S3::UploadPartCopyOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_CopyPartResult/;
  has CopyPartResult => (is => 'ro', isa => S3_CopyPartResult);
  has CopySourceVersionId => (is => 'ro', isa => Str);
  has RequestCharged => (is => 'ro', isa => Str);
  has ServerSideEncryption => (is => 'ro', isa => Str);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str);
  has SSEKMSKeyId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CopyPartResult' => {
                                     'class' => 'Paws::S3::CopyPartResult',
                                     'type' => 'S3_CopyPartResult'
                                   },
               'CopySourceVersionId' => {
                                          'type' => 'Str'
                                        }
             },
  'ParamInHeader' => {
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'CopySourceVersionId' => 'x-amz-copy-source-version-id',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'RequestCharged' => 'x-amz-request-charged'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPartCopyOutput

=head1 ATTRIBUTES


=head2 CopyPartResult => S3_CopyPartResult

Container for all response elements.



=head2 CopySourceVersionId => Str

The version of the source object that was copied, if you have enabled
versioning on the source bucket.



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



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
customer master key (CMK) that was used for the object.




=cut

