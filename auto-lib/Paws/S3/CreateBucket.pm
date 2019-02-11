
package Paws::S3::CreateBucket;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has CreateBucketConfiguration => (is => 'ro', isa => 'Paws::S3::CreateBucketConfiguration');
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWrite => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has ObjectLockEnabledForBucket => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bucket-object-lock-enabled', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CreateBucketOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucket - Arguments for method CreateBucket on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucket on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CreateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucket.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $CreateBucketOutput = $s3->CreateBucket(
      Bucket                    => 'MyBucketName',
      ACL                       => 'private',        # OPTIONAL
      ContentLength             => 1,                # OPTIONAL
      CreateBucketConfiguration => {
        LocationConstraint => 'EU'
        , # values: EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1; OPTIONAL
      },    # OPTIONAL
      GrantFullControl           => 'MyGrantFullControl',    # OPTIONAL
      GrantRead                  => 'MyGrantRead',           # OPTIONAL
      GrantReadACP               => 'MyGrantReadACP',        # OPTIONAL
      GrantWrite                 => 'MyGrantWrite',          # OPTIONAL
      GrantWriteACP              => 'MyGrantWriteACP',       # OPTIONAL
      ObjectLockEnabledForBucket => 1,                       # OPTIONAL
    );

    # Results:
    my $Location = $CreateBucketOutput->Location;

    # Returns a L<Paws::S3::CreateBucketOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CreateBucket>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the bucket.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str





=head2 ContentLength => Int

Size of the body in bytes.



=head2 CreateBucketConfiguration => L<Paws::S3::CreateBucketConfiguration>





=head2 GrantFullControl => Str

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.



=head2 GrantWrite => Str

Allows grantee to create, overwrite, and delete any object in the
bucket.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.



=head2 ObjectLockEnabledForBucket => Bool

Specifies whether you want S3 Object Lock to be enabled for the new
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucket in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

