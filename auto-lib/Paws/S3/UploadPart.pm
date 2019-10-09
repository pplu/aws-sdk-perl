
package Paws::S3::UploadPart;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw//;
  has Body => (is => 'ro', isa => Str, predicate => 1);
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PartNumber => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerKey => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str, predicate => 1);
  has UploadId => (is => 'ro', isa => Str, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UploadPart');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::UploadPartOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'SSECustomerKey' => {
                                     'type' => 'Str'
                                   },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'PartNumber' => {
                                 'type' => 'Int'
                               },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'RequestPayer' => {
                                   'type' => 'Str'
                                 },
               'UploadId' => {
                               'type' => 'Str'
                             },
               'Key' => {
                          'type' => 'Str'
                        },
               'Body' => {
                           'type' => 'Str'
                         }
             },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    },
  'ParamInURI' => {
                    'Bucket' => 'Bucket',
                    'Key' => 'Key'
                  },
  'ParamInQuery' => {
                      'PartNumber' => 'partNumber',
                      'UploadId' => 'uploadId'
                    },
  'ParamInHeader' => {
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'ContentLength' => 'Content-Length',
                       'SSECustomerKey' => 'x-amz-server-side-encryption-customer-key',
                       'RequestPayer' => 'x-amz-request-payer'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPart - Arguments for method UploadPart on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadPart on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method UploadPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadPart.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $UploadPartOutput = $s3->UploadPart(
      Bucket               => 'MyBucketName',
      Key                  => 'MyObjectKey',
      PartNumber           => 1,
      UploadId             => 'MyMultipartUploadId',
      Body                 => 'BlobBody',                  # OPTIONAL
      ContentLength        => 1,                           # OPTIONAL
      ContentMD5           => 'MyContentMD5',              # OPTIONAL
      RequestPayer         => 'requester',                 # OPTIONAL
      SSECustomerAlgorithm => 'MySSECustomerAlgorithm',    # OPTIONAL
      SSECustomerKey       => 'MySSECustomerKey',          # OPTIONAL
      SSECustomerKeyMD5    => 'MySSECustomerKeyMD5',       # OPTIONAL
    );

    # Results:
    my $ETag                 = $UploadPartOutput->ETag;
    my $RequestCharged       = $UploadPartOutput->RequestCharged;
    my $SSECustomerAlgorithm = $UploadPartOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5    = $UploadPartOutput->SSECustomerKeyMD5;
    my $SSEKMSKeyId          = $UploadPartOutput->SSEKMSKeyId;
    my $ServerSideEncryption = $UploadPartOutput->ServerSideEncryption;

    # Returns a L<Paws::S3::UploadPartOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/UploadPart>

=head1 ATTRIBUTES


=head2 Body => Str

Object data.



=head2 B<REQUIRED> Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 ContentLength => Int

Size of the body in bytes. This parameter is useful when the size of
the body cannot be determined automatically.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the part data. This parameter
is auto-populated when using the command from the CLI. This parameted
is required if object lock parameters are specified.



=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload was initiated.



=head2 B<REQUIRED> PartNumber => Int

Part number of part being uploaded. This is a positive integer between
1 and 10,000.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256).



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
x-amz-server-side-encryption-customer-algorithm header. This must be
the same encryption key specified in the initiate multipart upload
request.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 B<REQUIRED> UploadId => Str

Upload ID identifying the multipart upload whose part is being
uploaded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadPart in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

