
package Paws::S3::CompleteMultipartUpload;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has MultipartUpload => (is => 'ro', isa => 'Paws::S3::CompletedMultipartUpload', request_name => 'CompleteMultipartUpload', traits => ['NameInRequest','ParamInBody']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CompleteMultipartUploadOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CompleteMultipartUpload - Arguments for method CompleteMultipartUpload on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteMultipartUpload on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CompleteMultipartUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteMultipartUpload.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To complete multipart upload
    # The following example completes a multipart upload.
    my $CompleteMultipartUploadOutput = $s3->CompleteMultipartUpload(
      'Bucket'          => 'examplebucket',
      'Key'             => 'bigobject',
      'MultipartUpload' => {
        'Parts' => [

          {
            'ETag'       => '"d8c2eafd90c266e19ab9dcacc479f8af"',
            'PartNumber' => 1
          },

          {
            'ETag'       => '"d8c2eafd90c266e19ab9dcacc479f8af"',
            'PartNumber' => 2
          }
        ]
      },
      'UploadId' =>
'7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--'
    );

    # Results:
    my $Bucket   = $CompleteMultipartUploadOutput->Bucket;
    my $ETag     = $CompleteMultipartUploadOutput->ETag;
    my $Key      = $CompleteMultipartUploadOutput->Key;
    my $Location = $CompleteMultipartUploadOutput->Location;

    # Returns a L<Paws::S3::CompleteMultipartUploadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CompleteMultipartUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload was initiated.



=head2 MultipartUpload => L<Paws::S3::CompletedMultipartUpload>

The container for the multipart upload request information.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 B<REQUIRED> UploadId => Str

ID for the initiated multipart upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteMultipartUpload in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

