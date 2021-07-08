
package Paws::S3::PutBucketPolicy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ConfirmRemoveSelfBucketAccess => (is => 'ro', isa => 'Bool', header_name => 'x-amz-confirm-remove-self-bucket-access', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Policy => (is => 'ro', isa => 'Str', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketPolicy - Arguments for method PutBucketPolicy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketPolicy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketPolicy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # Set bucket policy
    # The following example sets a permission policy on a bucket.
    $s3->PutBucketPolicy(
      'Bucket' => 'examplebucket',
      'Policy' =>
'{"Version": "2012-10-17", "Statement": [{ "Sid": "id-1","Effect": "Allow","Principal": {"AWS": "arn:aws:iam::123456789012:root"}, "Action": [ "s3:PutObject","s3:PutObjectAcl"], "Resource": ["arn:aws:s3:::acl3/*" ] } ]}'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket.



=head2 ConfirmRemoveSelfBucketAccess => Bool

Set this parameter to true to confirm that you want to remove your
permissions to change this bucket policy in the future.



=head2 ContentMD5 => Str

The MD5 hash of the request body.

For requests made using the AWS Command Line Interface (CLI) or AWS
SDKs, this field is calculated automatically.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 B<REQUIRED> Policy => Str

The bucket policy as a JSON document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketPolicy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

