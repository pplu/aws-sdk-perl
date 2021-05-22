
package Paws::S3::DeleteObjects;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bypass-governance-retention', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has Delete => (is => 'ro', isa => 'Paws::S3::Delete', traits => ['ParamInBody'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has MFA => (is => 'ro', isa => 'Str', header_name => 'x-amz-mfa', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjects - Arguments for method DeleteObjects on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObjects on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObjects.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To delete multiple object versions from a versioned bucket
    # The following example deletes objects from a bucket. The request specifies
    # object versions. S3 deletes specific object versions and returns the key
    # and versions of deleted objects in the response.
    my $DeleteObjectsOutput = $s3->DeleteObjects(
      'Bucket' => 'examplebucket',
      'Delete' => {
        'Objects' => [

          {
            'Key'       => 'HappyFace.jpg',
            'VersionId' => '2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b'
          },

          {
            'Key'       => 'HappyFace.jpg',
            'VersionId' => 'yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd'
          }
        ],
        'Quiet' => 0
      }
    );

    # Results:
    my $Deleted = $DeleteObjectsOutput->Deleted;

    # Returns a L<Paws::S3::DeleteObjectsOutput> object.
    # To delete multiple objects from a versioned bucket
    # The following example deletes objects from a bucket. The bucket is
    # versioned, and the request does not specify the object version to delete.
    # In this case, all versions remain in the bucket and S3 adds a delete
    # marker.
    my $DeleteObjectsOutput = $s3->DeleteObjects(
      'Bucket' => 'examplebucket',
      'Delete' => {
        'Objects' => [

          {
            'Key' => 'objectkey1'
          },

          {
            'Key' => 'objectkey2'
          }
        ],
        'Quiet' => 0
      }
    );

    # Results:
    my $Deleted = $DeleteObjectsOutput->Deleted;

    # Returns a L<Paws::S3::DeleteObjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObjects>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name containing the objects to delete.

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



=head2 BypassGovernanceRetention => Bool

Specifies whether you want to delete this object even if it has a
Governance-type Object Lock in place. You must have sufficient
permissions to perform this operation.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 B<REQUIRED> Delete => L<Paws::S3::Delete>

Container for the request.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.
Required to permanently delete a versioned object if versioning is
configured with MFA delete enabled.



=head2 RequestPayer => Str



Valid values are: C<"requester">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObjects in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

