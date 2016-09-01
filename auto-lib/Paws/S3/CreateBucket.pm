
package Paws::S3::CreateBucket;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-acl' );
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);
  has CreateBucketConfiguration => (is => 'ro', isa => 'Paws::S3::CreateBucketConfiguration');
  has GrantFullControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-full-control' );
  has GrantRead => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-read' );
  has GrantReadACP => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-read-acp' );
  has GrantWrite => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-write' );
  has GrantWriteACP => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-write-acp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CreateBucketOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucket - Arguments for method CreateBucket on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucket on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method CreateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucket.

As an example:

  $service_obj->CreateBucket(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the bucket.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str





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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucket in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

