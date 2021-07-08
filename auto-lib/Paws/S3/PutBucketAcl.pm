
package Paws::S3::PutBucketAcl;
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


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAcl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAcl - Arguments for method PutBucketAcl on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAcl on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAcl.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
  # Put bucket acl
  # The following example replaces existing ACL on a bucket. The ACL grants the
  # bucket owner (specified using the owner ID) and write permission to the
  # LogDelivery group. Because this is a replace operation, you must specify all
  # the grants in your request. To incrementally add or remove ACL grants, you
  # might use the console.
    $s3->PutBucketAcl(
      'Bucket'           => 'examplebucket',
      'GrantFullControl' =>
        'id=examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484',
      'GrantWrite' => 'uri=http://acs.amazonaws.com/groups/s3/LogDelivery'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketAcl>

=head1 ATTRIBUTES


=head2 AccessControlPolicy => L<Paws::S3::AccessControlPolicy>

Contains the elements that set the ACL permissions for an object per
grantee.



=head2 ACL => Str

The canned ACL to apply to the bucket.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str

The bucket to which to apply the ACL.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. This header must be
used as a message integrity check to verify that the request body was
not corrupted in transit. For more information, go to RFC 1864.
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



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.



=head2 GrantWrite => Str

Allows grantee to create new objects in the bucket.

For the bucket and object owners of existing objects, also allows
deletions and overwrites of those objects.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

