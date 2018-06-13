
package Paws::S3::DeleteBucketEncryption;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketEncryption');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteBucketEncryption - Arguments for method DeleteBucketEncryption on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBucketEncryption on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteBucketEncryption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBucketEncryption.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->DeleteBucketEncryption(
      Bucket => 'MyBucketName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteBucketEncryption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the server-side encryption
configuration to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBucketEncryption in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

