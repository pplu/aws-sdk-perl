
package Paws::S3::HeadBucket;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'HeadBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'HEAD');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadBucket - Arguments for method HeadBucket on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method HeadBucket on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method HeadBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to HeadBucket.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To determine if bucket exists
    # This operation checks to see if a bucket exists.
    $s3->HeadBucket( 'Bucket' => 'acl1' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/HeadBucket>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name.

When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see Using access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.

When using this action with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com.
When using this action using S3 on Outposts through the AWS SDKs, you
provide the Outposts bucket ARN in place of the bucket name. For more
information about S3 on Outposts ARNs, see Using S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method HeadBucket in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

