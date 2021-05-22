
package Paws::S3::DeleteBucketReplication;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketReplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?replication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteBucketReplication - Arguments for method DeleteBucketReplication on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBucketReplication on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteBucketReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBucketReplication.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To delete bucket replication configuration
    # The following example deletes replication configuration set on bucket.
    $s3->DeleteBucketReplication( 'Bucket' => 'example' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteBucketReplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBucketReplication in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

