
package Paws::S3::PutObjectAcl;
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Paws::S3::AccessControlPolicy', traits => ['ParamInBody']);
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWrite => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObjectAcl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectAclOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectAcl - Arguments for method PutObjectAcl on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectAcl on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectAcl.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
   # To grant permissions using object ACL
   # The following example adds grants to an object ACL. The first permission
   # grants user1 and user2 FULL_CONTROL and the AllUsers group READ permission.
    my $PutObjectAclOutput = $s3->PutObjectAcl(
      'AccessControlPolicy' => {

      },
      'Bucket' => 'examplebucket',
      'GrantFullControl' =>
        'emailaddress=user1@example.com,emailaddress=user2@example.com',
      'GrantRead' => 'uri=http://acs.amazonaws.com/groups/global/AllUsers',
      'Key'       => 'HappyFace.jpg'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectAcl>

=head1 ATTRIBUTES


=head2 AccessControlPolicy => L<Paws::S3::AccessControlPolicy>

Contains the elements that set the ACL permissions for an object per
grantee.



=head2 ACL => Str

The canned ACL to apply to the object. For more information, see Canned
ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 B<REQUIRED> Bucket => Str

The bucket name that contains the object to which you want to attach
the ACL.

When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see Using access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. This header must be
used as a message integrity check to verify that the request body was
not corrupted in transit. For more information, go to RFC 1864.E<gt>
(http://www.ietf.org/rfc/rfc1864.txt)

For requests made using the AWS Command Line Interface (CLI) or AWS
SDKs, this field is calculated automatically.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 GrantFullControl => Str

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.

This action is not supported by Amazon S3 on Outposts.



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.

This action is not supported by Amazon S3 on Outposts.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.

This action is not supported by Amazon S3 on Outposts.



=head2 GrantWrite => Str

Allows grantee to create new objects in the bucket.

For the bucket and object owners of existing objects, also allows
deletions and overwrites of those objects.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.

This action is not supported by Amazon S3 on Outposts.



=head2 B<REQUIRED> Key => Str

Key for which the PUT action was initiated.

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



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

