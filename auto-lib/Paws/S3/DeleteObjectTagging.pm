
package Paws::S3::DeleteObjectTagging;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjectTagging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectTaggingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectTagging - Arguments for method DeleteObjectTagging on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObjectTagging on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObjectTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObjectTagging.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To remove tag set from an object version
    # The following example removes tag set associated with the specified object
    # version. The request specifies both the object key and object version.
    my $DeleteObjectTaggingOutput = $s3->DeleteObjectTagging(
      'Bucket'    => 'examplebucket',
      'Key'       => 'HappyFace.jpg',
      'VersionId' => 'ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI'
    );

    # Results:
    my $VersionId = $DeleteObjectTaggingOutput->VersionId;

# Returns a L<Paws::S3::DeleteObjectTaggingOutput> object.
# To remove tag set from an object
# The following example removes tag set associated with the specified object. If
# the bucket is versioning enabled, the operation removes tag set from the
# latest object version.
    my $DeleteObjectTaggingOutput = $s3->DeleteObjectTagging(
      'Bucket' => 'examplebucket',
      'Key'    => 'HappyFace.jpg'
    );

    # Results:
    my $VersionId = $DeleteObjectTaggingOutput->VersionId;

    # Returns a L<Paws::S3::DeleteObjectTaggingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObjectTagging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name containing the objects from which to remove the tags.

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



=head2 B<REQUIRED> Key => Str

The key that identifies the object in the bucket from which to remove
all tags.



=head2 VersionId => Str

The versionId of the object that the tag-set will be removed from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObjectTagging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

