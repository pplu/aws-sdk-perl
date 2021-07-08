
package Paws::S3Control::GetBucket;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/bucket/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucket - Arguments for method GetBucket on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucket on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucket.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetBucketResult = $s3 -control->GetBucket(
      AccountId => 'MyAccountId',
      Bucket    => 'MyBucketName',

    );

    # Results:
    my $Bucket                   = $GetBucketResult->Bucket;
    my $CreationDate             = $GetBucketResult->CreationDate;
    my $PublicAccessBlockEnabled = $GetBucketResult->PublicAccessBlockEnabled;

    # Returns a L<Paws::S3Control::GetBucketResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetBucket>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID of the Outposts bucket.



=head2 B<REQUIRED> Bucket => Str

Specifies the bucket.

For using this parameter with Amazon S3 on Outposts with the REST API,
you must specify the name and the x-amz-outpost-id as well.

For using this parameter with S3 on Outposts with the AWS SDK and CLI,
you must specify the ARN of the bucket accessed in the format
C<arn:aws:s3-outposts:E<lt>RegionE<gt>:E<lt>account-idE<gt>:outpost/E<lt>outpost-idE<gt>/bucket/E<lt>my-bucket-nameE<gt>>.
For example, to access the bucket C<reports> through outpost
C<my-outpost> owned by account C<123456789012> in Region C<us-west-2>,
use the URL encoding of
C<arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports>.
The value must be URL encoded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucket in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

