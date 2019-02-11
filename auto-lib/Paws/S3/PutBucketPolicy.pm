
package Paws::S3::PutBucketPolicy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ConfirmRemoveSelfBucketAccess => (is => 'ro', isa => 'Bool', header_name => 'x-amz-confirm-remove-self-bucket-access', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

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
    $s3->PutBucketPolicy(
      Bucket                        => 'MyBucketName',
      Policy                        => 'MyPolicy',
      ConfirmRemoveSelfBucketAccess => 1,                 # OPTIONAL
      ContentLength                 => 1,                 # OPTIONAL
      ContentMD5                    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ConfirmRemoveSelfBucketAccess => Bool

Set this parameter to true to confirm that you want to remove your
permissions to change this bucket policy in the future.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 B<REQUIRED> Policy => Str

The bucket policy as a JSON document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketPolicy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

