
package Paws::S3Control::CreateBucket;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has CreateBucketConfiguration => (is => 'ro', isa => 'Paws::S3Control::CreateBucketConfiguration', traits => ['ParamInBody']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWrite => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has ObjectLockEnabledForBucket => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bucket-object-lock-enabled', traits => ['ParamInHeader']);
  has OutpostId => (is => 'ro', isa => 'Str', header_name => 'x-amz-outpost-id', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/bucket/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::CreateBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateBucket - Arguments for method CreateBucket on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucket on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method CreateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucket.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $CreateBucketResult = $s3 -control->CreateBucket(
      Bucket                    => 'MyBucketName',
      ACL                       => 'private',        # OPTIONAL
      CreateBucketConfiguration => {
        LocationConstraint => 'EU'
        , # values: EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1; OPTIONAL
      },    # OPTIONAL
      GrantFullControl           => 'MyGrantFullControl',             # OPTIONAL
      GrantRead                  => 'MyGrantRead',                    # OPTIONAL
      GrantReadACP               => 'MyGrantReadACP',                 # OPTIONAL
      GrantWrite                 => 'MyGrantWrite',                   # OPTIONAL
      GrantWriteACP              => 'MyGrantWriteACP',                # OPTIONAL
      ObjectLockEnabledForBucket => 1,                                # OPTIONAL
      OutpostId                  => 'MyNonEmptyMaxLength64String',    # OPTIONAL
    );

    # Results:
    my $BucketArn = $CreateBucketResult->BucketArn;
    my $Location  = $CreateBucketResult->Location;

    # Returns a L<Paws::S3Control::CreateBucketResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/CreateBucket>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the bucket.

This is not supported by Amazon S3 on Outposts buckets.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str

The name of the bucket.



=head2 CreateBucketConfiguration => L<Paws::S3Control::CreateBucketConfiguration>

The configuration information for the bucket.

This is not supported by Amazon S3 on Outposts buckets.



=head2 GrantFullControl => Str

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.

This is not supported by Amazon S3 on Outposts buckets.



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.

This is not supported by Amazon S3 on Outposts buckets.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.

This is not supported by Amazon S3 on Outposts buckets.



=head2 GrantWrite => Str

Allows grantee to create, overwrite, and delete any object in the
bucket.

This is not supported by Amazon S3 on Outposts buckets.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.

This is not supported by Amazon S3 on Outposts buckets.



=head2 ObjectLockEnabledForBucket => Bool

Specifies whether you want S3 Object Lock to be enabled for the new
bucket.

This is not supported by Amazon S3 on Outposts buckets.



=head2 OutpostId => Str

The ID of the Outposts where the bucket is being created.

This is required by Amazon S3 on Outposts buckets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucket in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

